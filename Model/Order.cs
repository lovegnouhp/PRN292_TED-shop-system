using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PRN292_Project.Model
{
	class Order
	{
		private int orderID;
		private int customerID;
		private int staffID;
		private DateTime orderDate;
		private double total;
		private DateTime deliverDate;

		public int OrderID { get => orderID; set => orderID = value; }
		public int CustomerID { get => customerID; set => customerID = value; }
		public int StaffID { get => staffID; set => staffID = value; }
		public DateTime OrderDate { get => orderDate; set => orderDate = value; }
		public double Total { get => total; set => total = value; }
		public DateTime DeliverDate { get => deliverDate; set => deliverDate = value; }
	}
}
