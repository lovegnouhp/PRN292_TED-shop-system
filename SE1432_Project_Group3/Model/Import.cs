using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PRN292_Project.Model
{
	class Import
	{
		private int importID;
		private int staffID;
		private DateTime date;

		public int ImportID { get => importID; set => importID = value; }
		public int StaffID { get => staffID; set => staffID = value; }
		public DateTime Date { get => date; set => date = value; }
	}
}
