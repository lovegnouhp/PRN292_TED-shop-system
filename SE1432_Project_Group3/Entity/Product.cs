using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PRN292_Project.DTL
{
	public class Product
	{
		private string productID;
		private string typeID;
		private string produce_country;
		private string name;
		private string description;
		private string user_guide;
		private double price;
		private double sell_price;
		private int quantity;

        public Product()
        {
        }

        public string ProductID { get => productID; set => productID = value; }
		public string TypeID { get => typeID; set => typeID = value; }
		public string Produce_country { get => produce_country; set => produce_country = value; }
		public string Name { get => name; set => name = value; }
		public string Description { get => description; set => description = value; }
		public string User_guide { get => user_guide; set => user_guide = value; }
		public double Price { get => price; set => price = value; }
		public double Sell_price { get => sell_price; set => sell_price = value; }
		public int Quantity { get => quantity; set => quantity = value; }
	}
}
