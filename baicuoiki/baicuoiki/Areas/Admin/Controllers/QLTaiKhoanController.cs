using baicuoiki.Data;
using Microsoft.AspNetCore.Mvc;
using baicuoiki.Data.Migrations;
using AplicationUser = baicuoiki.Models.AplicationUser;
using Microsoft.AspNetCore.Authorization;
using baicuoiki.Models;
using Microsoft.EntityFrameworkCore;

namespace baicuoiki.Areas.Admin.Controllers
{
	[Area("Admin")]
	[Authorize(Roles = "Admin")]
	public class QLTaiKhoanController : Controller
	{
		private readonly ApplicationDbContext _db;
		public QLTaiKhoanController(ApplicationDbContext db)
		{
			_db = db;
		}
		public IActionResult Index(string Searching)
		{
			IQueryable<AplicationUser> taikhoan = _db.AplicationUser;
			if (!string.IsNullOrEmpty(Searching))
			{
				taikhoan = taikhoan.Where(p => p.Email.ToUpper().Contains(Searching.ToUpper())
											|| p.Name.ToUpper().Contains(Searching.ToUpper())
											|| p.Address.ToUpper().Contains(Searching.ToUpper()));
			}
			ViewBag.Searching = Searching;
			return View(taikhoan);
		}

		public IActionResult Delete(string id)
		{
			Models.AplicationUser? taikhoan = _db.AplicationUser.Find(id);
			if(taikhoan == null)
			{
				return NotFound();
			}
			_db.AplicationUser.Remove(taikhoan);
			_db.SaveChanges();
			return RedirectToAction("Index");
		}


    }
}
