using baicuoiki.Models;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace baicuoiki.Data
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }
		public DbSet<SanPham> SanPham { get; set; }
		public DbSet<ProDuct> Product { get; set; }
        public DbSet<AplicationUser> AplicationUser { get; set; }
		public DbSet<GioHang> GioHang { get; set; }
		public DbSet<HoaDon> HoaDon { get; set; }
		public DbSet<ChiTietHoaDon>  ChiTietHoaDon { get; set; }

	}
}