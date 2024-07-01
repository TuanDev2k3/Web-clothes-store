using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace baicuoiki.Models
{
	public class HoaDon
	{
		[Key]
		 public int Id { get; set; }
		public string AplicationUserId { get; set; }
		[ForeignKey("AplicationUserId")]
		[ValidateNever]
		public AplicationUser AplicationUser { get; set; }
		public double Toatal {  get; set; }
		public DateTime OrderTime { get; set; }
		public string? OrderStatus { get; set; }
		[RegularExpression(@"0[35789]\d{8}", ErrorMessage = "Not correct Vietnamese mobile format")]
		[Required]
		public string PhoneNumber { get; set; }
		public string Name { get; set;}
		public string Address { get; set; }
	}
}
