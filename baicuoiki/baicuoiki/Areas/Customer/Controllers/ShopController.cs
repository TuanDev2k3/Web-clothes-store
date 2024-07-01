using baicuoiki.Data;
using baicuoiki.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PagedList;
using System.Security.Claims;

namespace baicuoiki.Areas.Customer.Controllers
{
	[Area("Customer")]
	public class ShopController : Controller
	{
		private readonly ApplicationDbContext _db;
		public ShopController(ApplicationDbContext db)
		{
			_db = db;
		}
		public ActionResult Index(string searchString, int? page, string priceRange, int? categoryId)
		{
			var products = from p in _db.Product select p;

			if (!String.IsNullOrEmpty(searchString))
			{
				products = products.Where(p => p.Name.Contains(searchString));
			}

			int pageSize = 8;
			int pageNumber = (page ?? 1);
			if (!string.IsNullOrEmpty(priceRange))
			{
				var priceLimits = priceRange.Split('-');
				double minPrice, maxPrice;
				if (priceLimits.Length == 2 &&
					double.TryParse(priceLimits[0], out minPrice) &&
					double.TryParse(priceLimits[1], out maxPrice))
				{
					// Thực hiện lọc dữ liệu theo giá
					products = products.Where(p => p.Price >= minPrice && p.Price <= maxPrice);
				}
			}

			// Phân loại sản phẩm theo từng thể loại
			if (categoryId != null)
			{
				products = products.Where(p => p.SanPhamID == categoryId);
			}

			ViewBag.Categories = _db.SanPham.ToList(); // Get list of categories and put it into ViewBag

			return View(products.ToPagedList(pageNumber, pageSize));
		}



		[HttpGet]
		public IActionResult ProductDetail(int productID)
		{
			GioHang giohang = new GioHang()
			{
				ProDuctId = productID,
				ProDuct = _db.Product.Include("SanPham").FirstOrDefault(sp => sp.Id == productID),
				Quantity = 1
			};
			return View(giohang);
		}
		[HttpPost]
		[Authorize]
		public IActionResult ProductDetail(GioHang giohang)
		{
			var identity = (ClaimsIdentity)User.Identity;
			var claim = identity.FindFirst(ClaimTypes.NameIdentifier);
			giohang.AplicationUserId = claim.Value;
			//Kiểm tra sản phẩm đã có  trong giỏ hàng chưa ?
			var giohangdb = _db.GioHang.FirstOrDefault(sp => sp.ProDuctId == giohang.ProDuctId
			&& sp.AplicationUserId == giohang.AplicationUserId);
			if (giohangdb == null)  //Nếu sản phẩm  trong giỏ hàng
			{
				_db.GioHang.Add(giohang);
			}
			else //Nếu không có sản phẩm trong giỏ hàng
			{
				giohangdb.Quantity += giohang.Quantity;
			}
			_db.SaveChanges();
			return Redirect("/Customer/GioHang/Index");
		}
	}
}
