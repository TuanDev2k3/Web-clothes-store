using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace baicuoiki.Models
{
	public class ProDuct
	{
		[Key]
		public int Id { get; set; }
		[Required]
		public string Name { get; set; }
		[Required]
		public double Price { get; set; }
		public string? Description { get; set; }
		public string? ImageUrl { get; set; }
		[Required]
		public double? QuantityInStock { get; set; }
		[Required]
		//public double? QuantityInStock { get; set; }
		//[Required]
		public int SanPhamID { get; set; }
		[ForeignKey("SanPhamID")]
		[ValidateNever]
		public SanPham SanPham { get; set; }
	}
}
