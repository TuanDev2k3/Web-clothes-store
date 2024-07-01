using baicuoiki.Data;
using Microsoft.AspNetCore.Mvc;
using baicuoiki.Data.Migrations;
using AplicationUser = baicuoiki.Models.AplicationUser;
using Microsoft.AspNetCore.Authorization;
using baicuoiki.Models;
using Microsoft.EntityFrameworkCore;
using PagedList;
using NuGet.Versioning;

namespace baicuoiki.Areas.Admin.Controllers
{
	[Area("Admin")]
	[Authorize(Roles = "Admin")]
	public class QLHoaDon : Controller
	{
		private readonly ApplicationDbContext _db;
		public QLHoaDon(ApplicationDbContext db)
		{
			_db = db;
		}
		public IActionResult Index(string Searching, int? page)
		{
			IQueryable<HoaDon> hoadons = _db.HoaDon;

			// Apply search condition
			if (!string.IsNullOrEmpty(Searching))
			{
				hoadons = hoadons.Where(p => p.Name.ToUpper().Contains(Searching.ToUpper()));

			}
			

			// Now apply pagination
			int pageSize = 5;
			int pageNumber = (page ?? 1);

			// Materialize the query (execute it) before pagination
			var filteredProducts = hoadons.ToList();

			// Paginate the filtered results
			var paginatedProducts = filteredProducts.ToPagedList(pageNumber, pageSize);

			// Pass the search term to the view
			ViewBag.Searching = Searching;

			return View(paginatedProducts);
		}
		public IActionResult Delete(int id)
		{
			var hoadon= _db.HoaDon.Find(id);
			if (hoadon == null)
			{
				return NotFound();
			}
			var donhang = _db.ChiTietHoaDon.Include("ProDuct").Where(h => h.HoaDonId == id).ToList();
			foreach (var item in donhang)
			{
				item.ProDuct.QuantityInStock += item.Quantity;
			}
			_db.HoaDon.Remove(hoadon);
			_db.SaveChanges();
			return RedirectToAction("Index");
		}

		public IActionResult DetailHD(int id)
		{
			var donhang = _db.ChiTietHoaDon.Include("ProDuct").Where(h => h.HoaDonId == id).ToList();
			var ttdonhang = _db.HoaDon.FirstOrDefault(h => h.Id == id);

			ViewBag.Donhang = donhang;
			ViewBag.TTDonHang = ttdonhang;
			int ToTal = 0;
			foreach (var item in @ViewBag.Donhang)
			{
				ToTal += item.ProductPrice;
			}
			ViewBag.Total = ToTal;
			return View();
		}
	}
}

