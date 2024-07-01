using baicuoiki.Data;
using baicuoiki.Data.Migrations;
using baicuoiki.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using PagedList;
using SanPham = baicuoiki.Models.SanPham;
namespace baicuoiki.Areas.Admin.Controllers
{
	[Area("Admin")]
	[Authorize(Roles = "Admin")]
	public class TheLoaiController : Controller
    {
        private readonly ApplicationDbContext _db;
        public TheLoaiController(ApplicationDbContext db)
        {
            _db = db;
        }
		public IActionResult Index(string Searching, int? page)
		{
			IQueryable<SanPham> theloais = _db.SanPham;

			// Apply search condition
			if (!string.IsNullOrEmpty(Searching))
			{
				theloais = theloais.Where(p => p.Name.ToUpper().Contains(Searching.ToUpper()));

			}


			// Now apply pagination
			int pageSize = 5;
			int pageNumber = (page ?? 1);

			// Materialize the query (execute it) before pagination
			var filteredProducts = theloais.ToList();

			// Paginate the filtered results
			var paginatedProducts = filteredProducts.ToPagedList(pageNumber, pageSize);

			// Pass the search term to the view
			ViewBag.Searching = Searching;

			return View(paginatedProducts);
		}
		[HttpGet]
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public IActionResult Create(SanPham sanpham)
        {
            // Lưu hoặc cập nhật sản phẩm vào cơ sở dữ liệu
            if (sanpham.Id == 0)
            {
                // Thêm mới sản phẩm
                _db.SanPham.Add(sanpham);
                _db.SaveChanges(); // Lưu thay đổi vào cơ sở dữ liệu
                return RedirectToAction("Index"); // Chuyển hướng đến trang chính sau khi thêm hoặc cập nhật sản phẩm
            }

            return View(sanpham);
        }
        [HttpGet]
        public IActionResult Edit(int id)
        {
            if (id == 0)
            {
                return NotFound();
            }
            var sanpham = _db.SanPham.Find(id);
            return View(sanpham);
        }
        [HttpPost]
        public IActionResult Edit(SanPham sanpham)
        {
            if (ModelState.IsValid)
            {
                // Cập nhật thông tin sản phẩm
                _db.SanPham.Update(sanpham);
                _db.SaveChanges(); // Lưu thay đổi vào cơ sở dữ liệu
                return RedirectToAction("Index"); // Chuyển hướng đến trang chính sau khi thêm hoặc cập nhật sản phẩm
            }
            // ModelState không hợp lệ, quay lại form
            return View(sanpham);
        }


        public IActionResult Delete(int id)
        {
            var sanPham = _db.SanPham.FirstOrDefault(sp => sp.Id == id);
            if (sanPham == null)
            {
                return NotFound();
            }
            _db.SanPham.Remove(sanPham);
            _db.SaveChanges();
            return RedirectToAction("Index");
        }

    }
}
