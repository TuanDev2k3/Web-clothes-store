using Microsoft.AspNetCore.Identity;
using System.ComponentModel.DataAnnotations;

namespace baicuoiki.Models
{
	public class AplicationUser : IdentityUser
	{
		[Required]
		public string Name { get; set; }

		public string Address { get; set; }

		public string Phone { get; set; }

	}
}