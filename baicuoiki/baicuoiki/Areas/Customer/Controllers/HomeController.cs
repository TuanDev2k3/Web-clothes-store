using baicuoiki.Data;

using baicuoiki.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PagedList;
using System.Collections.Generic;
using System.Diagnostics;
using System.Security.Claims;

namespace baicuoiki.Areas.Customer.Controllers
{
	[Area("Customer")]
	public class HomeController : Controller
	{
		private readonly ApplicationDbContext _db;
		public HomeController(ApplicationDbContext db)
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




		public IActionResult About()
        {
            return View();
        }
        public IActionResult Contact()
        {
            return View();
        }
        
       
        

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}