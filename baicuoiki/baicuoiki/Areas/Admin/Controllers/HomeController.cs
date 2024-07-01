using baicuoiki.Data;
using baicuoiki.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.AspNetCore.Authorization;

namespace baicuoiki.Areas.Admin.Controllers
{
	[Area("Admin")]
	[Authorize(Roles = "Admin")]
	public class HomeController : Controller
	{
		private readonly ApplicationDbContext _db;
		public HomeController(ApplicationDbContext db)
		{
			_db = db;
		}
		public IActionResult Index()
		{
			int countProduct = _db.Product.Count();
            int countAccount = _db.AplicationUser.Count();
            int countOrder = _db.HoaDon.Count();
            int countTheLoai = _db.SanPham.Count();
			double countInStock = 0; /*= _db.Product.Where(sp => sp.QuantityInStock > 0).Count();*/
			var product = _db.Product.ToList();
			for (int i = 0; i<product.Count; i++)
			{
				countInStock = (double)(countInStock + product[i].QuantityInStock);
			}

			ViewBag.countProduct = countProduct;
            ViewBag.countAccount = countAccount;
            ViewBag.countOrder = countOrder;
            ViewBag.countTheLoai = countTheLoai;
			ViewBag.countInStock = countInStock;
            return View();
		}
	
	}
}
