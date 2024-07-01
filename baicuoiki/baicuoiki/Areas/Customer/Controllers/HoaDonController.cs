using baicuoiki.Data;
using baicuoiki.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace baicuoiki.Areas.Customer.Controllers
{
	[Area("Customer")]
	public class HoaDonController : Controller
	{
		private readonly ApplicationDbContext _db;
		public HoaDonController(ApplicationDbContext db)
		{
			_db = db;
		}
		[Authorize]
		public IActionResult Index()
		{

			IEnumerable<HoaDon> hoadon = _db.HoaDon.Where(hd => hd.AplicationUser.Email == User.Identity.Name).ToList();
			return View(hoadon);
		}
		public IActionResult DeleteConFirm(int id)
		{
			var hoadon = _db.HoaDon.FirstOrDefault(dh => dh.Id == id);
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
			return RedirectToAction("");
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
			ViewBag.Total = ToTal+3;
			return View();
		}
	}
}
