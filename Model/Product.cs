using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PRN292_Project.Model
{
	class Product
	{
		private int productID;
		private int typeID;
		private String produce_country;
		private String name;
		private String description;
		private String user_guide;
		private double price;
		private double sell_price;
		private int quantity;

		public int ProductID { get => productID; set => productID = value; }
		public int TypeID { get => typeID; set => typeID = value; }
		public string Produce_country { get => produce_country; set => produce_country = value; }
		public string Name { get => name; set => name = value; }
		public string Description { get => description; set => description = value; }
		public string User_guide { get => user_guide; set => user_guide = value; }
		public double Price { get => price; set => price = value; }
		public double Sell_price { get => sell_price; set => sell_price = value; }
		public int Quantity { get => quantity; set => quantity = value; }
	}
}
