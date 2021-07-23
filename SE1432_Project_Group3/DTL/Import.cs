using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PRN292_Project.DTL
{
	public class Import
	{
		private string importID;
		private string staffID;
		private DateTime importDate;
		private List<ImportDetail> details = new List<ImportDetail>();

		public string ImportID { get => importID; set => importID = value; }
		public string StaffID { get => staffID; set => staffID = value; }
		public DateTime Date { get => importDate; set => importDate = value; }
        internal List<ImportDetail> Details { get => details; set => details = value; }
    }
}
