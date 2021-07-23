using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PRN292_Project.DTL
{
	class ProductType
	{
		private string typeID;
		private string name;

        public ProductType()
        {
        }

        public string TypeID { get => typeID; set => typeID = value; }
		public string Name { get => name; set => name = value; }
	}
}
