using baicuoiki.Data;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Mvc;	
namespace baicuoiki.ViewComponents
{
	public class TheLoaiViewComponent: ViewComponent
	{
		private readonly ApplicationDbContext _db;
		public TheLoaiViewComponent(ApplicationDbContext db)
		{
			_db = db;
		}
		public IViewComponentResult Invoke()
		{
			var sanpham = _db.SanPham.ToList();
			return View();
		}
	}
}
