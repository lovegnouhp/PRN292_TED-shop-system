using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PRN292_Project.Model
{
	class Account
	{
		private String phone;
		private String password;
		private String role;

		public string Phone { get => phone; set => phone = value; }
		public string Password { get => password; set => password = value; }
		public string Role { get => role; set => role = value; }
	}
}
