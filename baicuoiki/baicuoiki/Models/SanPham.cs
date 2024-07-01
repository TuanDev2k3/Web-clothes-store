using System.ComponentModel.DataAnnotations;

namespace baicuoiki.Models
{
	public class SanPham
	{
		[Key]
		public int Id { get; set; }
		[Required]
		public string Name { get; set; }
		[Required]
		public string? Description { get; set; } = "No";

	}
}
