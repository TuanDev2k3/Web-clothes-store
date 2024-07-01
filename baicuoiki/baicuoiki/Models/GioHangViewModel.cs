namespace baicuoiki.Models
{
	public class GioHangViewModel
	{
		//Luu thong tin SP trong Gio Hang
		public IEnumerable<GioHang> DsGioHang { get; set; }
		// Luu tru tong tien gio hang
		public HoaDon HoaDon { get; set; }
	}
}
