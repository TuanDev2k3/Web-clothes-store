﻿using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace baicuoiki.Models
{
	public class ChiTietHoaDon
	{
		[Key]
		public int Id { get; set; }
		[Required]
		public int HoaDonId { get; set; }
		[ForeignKey("HoaDonId")]
		[ValidateNever]
		public HoaDon HoaDon { get; set; }
		[Required]
		public int ProductId { get; set; }
		[ForeignKey("ProductId")]
		[ValidateNever]
		public ProDuct ProDuct { get; set; }
		public int Quantity { get; set; }
		public double ProductPrice { get; set; }
	}
}
