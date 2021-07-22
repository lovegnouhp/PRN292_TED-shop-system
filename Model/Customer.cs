using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PRN292_Project.Model
{
	class Customer
	{
		private int customerID;
		private String name;
		private String address;
		private String phone;

		public int CustomerID { get => customerID; set => customerID = value; }
		public string Name { get => name; set => name = value; }
		public string Address { get => address; set => address = value; }
		public string Phone { get => phone; set => phone = value; }
	}
}
