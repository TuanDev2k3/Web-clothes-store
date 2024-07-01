using baicuoiki.Data;
using baicuoiki.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Mvc.Rendering;
using baicuoiki.Data.Migrations;
using PagedList;
using Microsoft.AspNetCore.Authorization;

namespace baicuoiki.Areas.Admin.Controllers
{
	[Area("Admin")]
	[Authorize(Roles = "Admin")]
	public class QLProductController : Controller
	{
		private readonly ApplicationDbContext _db;
		public QLProductController(ApplicationDbContext db)
		{
			_db = db;
		}
		public IActionResult Index(string Searching, int? maloaisp, int? page)
		{
			IQueryable<ProDuct> products = _db.Product.Include(p => p.SanPham);

			// Apply search condition
			if (!string.IsNullOrEmpty(Searching))
			{
				products = products.Where(p => p.Name.ToUpper().Contains(Searching.ToUpper())
											|| p.SanPham.Name.ToUpper().Contains(Searching.ToUpper()));
			}
			else if (maloaisp > 0)
			{
				products = products.Where(p => p.Id == maloaisp);
			}

			// Now apply pagination
			int pageSize = 8;
			int pageNumber = (page ?? 1);

			// Materialize the query (execute it) before pagination
			var filteredProducts = products.ToList();

			// Paginate the filtered results
			var paginatedProducts = filteredProducts.ToPagedList(pageNumber, pageSize);

			// Pass the search term to the view
			ViewBag.Searching = Searching;

			return View(paginatedProducts);
		}

		[HttpGet]
		public IActionResult Upsert(int id)
		{
			ProDuct product = new ProDuct();
			IEnumerable<SelectListItem> dssanpham = _db.SanPham.Select
				(
					item => new SelectListItem
					{
						Value = item.Id.ToString(),
						Text = item.Name
					}
				);
			ViewBag.DSSanPham = dssanpham;
			if (id == 0)
			{
				return View(product);

			}
			else
			{
				product = _db.Product.Include("SanPham").FirstOrDefault(sp => sp.Id == id);
				return View(product);
			}
		}
        [HttpPost]
        public IActionResult Create(ProDuct product, IFormFile imagefile)
        {
            if (product.Id == 0)
            {
                // Kiểm tra và xử lý tập tin ảnh
                if (imagefile != null && imagefile.Length > 0)
                {
                    DateTime now = DateTime.Now;
                    string date = now.ToString();
                    string fileImage = Path.Combine("Upload", "SanPham", imagefile.FileName);
                    var imagePath = Path.Combine("wwwroot", fileImage);
                    // Lưu tập tin ảnh vào thư mục đã xác định
                    using (FileStream stream = new FileStream(imagePath, FileMode.Create))
                    {
                        imagefile.CopyTo(stream);
                        stream.Close();
                    }
                    // Lưu đường dẫn của ảnh vào thuộc tính ImageUrl của sản phẩm
                    product.ImageUrl = fileImage;
                }

                // Thêm mới sản phẩm
                _db.Product.Add(product);
                _db.SaveChanges(); // Lưu thay đổi vào cơ sở dữ liệu
                return RedirectToAction("Index"); // Chuyển hướng đến trang chính sau khi thêm hoặc cập nhật sản phẩm
            }
            // ModelState không hợp lệ, quay lại form
            return View(product);
        }
        [HttpPost]
		public IActionResult Edit(ProDuct product)
		{
			if (ModelState.IsValid)
			{
				_db.Product.Update(product);
				_db.SaveChanges();
				return RedirectToAction("Index");
			}
			return View(product);
		}
		public IActionResult Delete(int id)
		{
			var product = _db.Product.FirstOrDefault(sp => sp.Id == id);
			if (product == null)
			{
				return NotFound();
			}
			_db.Product.Remove(product);
			_db.SaveChanges();
			return RedirectToAction("Index");
		}
		//==== Stock ======
		public IActionResult InStock(string Searching, bool? inStock, int? page)
		{
			IQueryable<ProDuct> products = _db.Product.Include(p => p.SanPham);

			// Apply search condition
			if (!string.IsNullOrEmpty(Searching))
			{
				products = products.Where(p => p.Name.ToUpper().Contains(Searching.ToUpper()));
			}
			else if (inStock == false)
			{
				products = products.Where(p => p.QuantityInStock <= 0);
			}
			else if (inStock == true)
            {
                products = products.Where(p => p.QuantityInStock > 0);
            }

            // Now apply pagination
            int pageSize = 8;
			int pageNumber = (page ?? 1);

			// Materialize the query (execute it) before pagination
			var filteredProducts = products.ToList();

			// Paginate the filtered results
			var paginatedProducts = filteredProducts.ToPagedList(pageNumber, pageSize);

			// Pass the search term to the view
			ViewBag.Searching = Searching;

			return View(paginatedProducts);
		}

		[HttpGet]
		public IActionResult EditStock(int id)
		{
			ProDuct product = new ProDuct();
			IEnumerable<SelectListItem> dssanpham = _db.SanPham.Select
				(
					item => new SelectListItem
					{
						Value = item.Id.ToString(),
						Text = item.Name
					}
				);
			ViewBag.DSSanPham = dssanpham;
			if (id == 0)
			{
				return NotFound();
			}
			product = _db.Product.Include("SanPham").FirstOrDefault(sp => sp.Id == id);
			return View(product);
		}

		[HttpPost]
		public IActionResult EditStock(ProDuct product)
		{
			if (ModelState.IsValid)
			{
				_db.Product.Update(product);
				_db.SaveChanges();
				return RedirectToAction("InStock");
			}
			return View(product);
		}
	}
}
