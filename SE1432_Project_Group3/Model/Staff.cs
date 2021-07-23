using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PRN292_Project.Model
{
	class Staff
	{
		private int staffID;
		private String name;
		private String address;
		private String phone;
		private bool isManager;
		private String account;
		public Staff()
		{

		}
		
		public int StaffID { get => staffID; set => staffID = value; }
		public string Name { get => name; set => name = value; }
		public string Address { get => address; set => address = value; }
		public string Phone { get => phone; set => phone = value; }
		public bool IsManager { get => isManager; set => isManager = value; }
		public string Account { get => account; set => account = value; }
	}
}
