using baicuoiki.Data;
using baicuoiki.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Security.Claims;

namespace baicuoiki.Areas.Customer.Controllers
{
	[Area("Customer")]
	public class GioHangController : Controller
	{
		private readonly ApplicationDbContext _db;
		public GioHangController(ApplicationDbContext db)
		{
			_db = db;
		}
		[Authorize]
		public IActionResult Index()
		{

			// Lay TTin
			var identity = (ClaimsIdentity)User.Identity;
			var claim = identity.FindFirst(ClaimTypes.NameIdentifier);

			//Lay Ds SanPham trong gio hang cua User
			GioHangViewModel giohang = new GioHangViewModel()
			{
				DsGioHang = _db.GioHang
				.Include("ProDuct")
				.Where(x => x.AplicationUserId == claim.Value)
				.ToList(),
				HoaDon = new HoaDon()
			};
			foreach (var item in giohang.DsGioHang)
			{
                
                // tinh tien theo SL
                item.ProductPrice = item.Quantity * item.ProDuct.Price;
				// Tong tien gio hang
				giohang.HoaDon.Toatal += item.ProductPrice;
				
			}
			giohang.HoaDon.Toatal += 3;
			return View(giohang);
		}
		public IActionResult Giam(int giohangId)
		{
			var giohang = _db.GioHang.FirstOrDefault(gh => gh.Id == giohangId);
			giohang.Quantity -= 1;
			if (giohang.Quantity == 0)
			{
				_db.GioHang.Remove(giohang);
			}
			_db.SaveChanges();
			return RedirectToAction("Index");
		}
		public IActionResult Tang(int giohangId)
		{
			var giohang = _db.GioHang.FirstOrDefault(gh => gh.Id == giohangId);

				giohang.Quantity += 1;
                _db.SaveChanges();
			return RedirectToAction("Index");
		}
		public IActionResult Xoa(int giohangId)
		{
			var giohang = _db.GioHang.FirstOrDefault(gh => gh.Id == giohangId);
			_db.GioHang.Remove(giohang);
			_db.SaveChanges();
			return Redirect("/Customer/GioHang/Index");
		}
		[HttpGet]
		public IActionResult ThanhToan()
		{
			// Lay TTin
			var identity = (ClaimsIdentity)User.Identity;
			var claim = identity.FindFirst(ClaimTypes.NameIdentifier);

			//Lay Ds SanPham trong gio hang cua User
			GioHangViewModel giohang = new GioHangViewModel()
			{
				DsGioHang = _db.GioHang
				.Include("ProDuct")
				.Where(x => x.AplicationUserId == claim.Value)
				.ToList(),
				HoaDon = new HoaDon()
			};
			foreach (var item in giohang.DsGioHang)
			{
				// tinh tien theo SL
				item.ProductPrice = item.Quantity * item.ProDuct.Price;

					// Tong tien gio hang
					giohang.HoaDon.Toatal += item.ProductPrice;
			}
			giohang.HoaDon.Toatal += 3;
			giohang.HoaDon.AplicationUser = _db.AplicationUser.FirstOrDefault(user => user.Id == claim.Value);
			giohang.HoaDon.Name = giohang.HoaDon.AplicationUser.Name;
			giohang.HoaDon.Address = giohang.HoaDon.AplicationUser.Address;
			giohang.HoaDon.PhoneNumber = giohang.HoaDon.AplicationUser.PhoneNumber;
			return View(giohang);
		}
		[HttpPost]
		[ValidateAntiForgeryToken]
		public IActionResult ThanhToan(GioHangViewModel giohang)
		{
			// Lay TTin
			var identity = (ClaimsIdentity)User.Identity;
			var claim = identity.FindFirst(ClaimTypes.NameIdentifier);

			giohang.DsGioHang = _db.GioHang.Include(x => x.ProDuct)
				.Where(gh => gh.AplicationUserId == claim.Value).ToList();
			giohang.HoaDon.AplicationUserId = claim.Value;
			giohang.HoaDon.OrderTime = DateTime.Now;
			giohang.HoaDon.OrderStatus = "Confirming";
			foreach (var item in giohang.DsGioHang)
			{
				// tinh tien theo SL
				item.ProductPrice = item.Quantity * item.ProDuct.Price;
                    // Giảm số lượng tồn kho
                 item.ProDuct.QuantityInStock -= item.Quantity;
                // Tong tien gio hang
                giohang.HoaDon.Toatal += item.ProductPrice;
			}
			giohang.HoaDon.Toatal += 3;
			_db.HoaDon.Add(giohang.HoaDon);
			_db.SaveChanges();
			foreach (var item in giohang.DsGioHang)
			{
				ChiTietHoaDon chitiethoadon = new ChiTietHoaDon()
				{
					ProductId = item.ProDuctId,
					HoaDonId = giohang.HoaDon.Id,
					ProductPrice = item.ProductPrice,
					Quantity = item.Quantity,
				};
				_db.ChiTietHoaDon.Add(chitiethoadon);
				_db.SaveChanges();
			}
			_db.GioHang.RemoveRange(giohang.DsGioHang);
			_db.SaveChanges();
			return Redirect("/Customer/HoaDon/Index");
		}
	}
}
