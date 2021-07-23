using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PRN292_Project.DTL
{
    public class ImportDetail
    {
        private string importID;
        private int importLine;
        private string productID;
        private int quantity;

        public string ImportID { get => importID; set => importID = value; }
        public int ImportLine { get => importLine; set => importLine = value; }
        public string ProductID { get => productID; set => productID = value; }
        public int Quantity { get => quantity; set => quantity = value; }
    }
}
