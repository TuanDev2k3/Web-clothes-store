using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace baicuoiki.Models
{
	public class GioHang
	{
		[Key]
		public int Id { get; set; }
		public int ProDuctId { get;set; }
		[ForeignKey("ProDuctId")]
		[ValidateNever]
		public ProDuct ProDuct { get; set; }
		public int Quantity { get; set; }
		public string AplicationUserId { get; set; }
		[ForeignKey("AplicationUserId")]
		[ValidateNever]
		public AplicationUser AplicationUser { get; set; }
		[NotMapped]
		public double ProductPrice { get; set; }


	}
}
