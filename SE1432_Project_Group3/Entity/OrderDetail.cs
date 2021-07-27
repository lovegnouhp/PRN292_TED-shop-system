using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PRN292_Project.DTL
{
    public class OrderDetail
    {
        private string orderID;
        private int orderLine;
        private int quantity;
        private string productID;

        public string OrderID { get => orderID; set => orderID = value; }
        public int OrderLine { get => orderLine; set => orderLine = value; }
        public int Quantity { get => quantity; set => quantity = value; }
        public string ProductID { get => productID; set => productID = value; }
    }
}
