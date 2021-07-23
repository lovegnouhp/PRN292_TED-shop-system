using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PRN292_Project.DTL
{
	public class Order
	{
		private string orderID;
		private string customerID;
		private DateTime orderDate;
		private double total;
		private string staffID;
		private DateTime deliverDate;
		private List<OrderDetail> details = new List<OrderDetail>();

        public Order()
        {
        }

        public string OrderID { get => orderID; set => orderID = value; }
		public string CustomerID { get => customerID; set => customerID = value; }
		public string StaffID { get => staffID; set => staffID = value; }
		public DateTime OrderDate { get => orderDate; set => orderDate = value; }
		public double Total { get => total; set => total = value; }
		public DateTime DeliverDate { get => deliverDate; set => deliverDate = value; }
        internal List<OrderDetail> Details { get => details; set => details = value; }
    }
}
