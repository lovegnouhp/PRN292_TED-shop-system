using System;

namespace PRN292_Project.DTL
{
    public class Cart
    {

        private int recordID;
        private string customerID;
        private DateTime dateCreated;
        private string productID;
        private int count;

        public int RecordID { get => recordID; set => recordID = value; }
        public string CustomerID { get => customerID; set => customerID = value; }
        public DateTime DateCreated { get => dateCreated; set => dateCreated = value; }
        public string ProductID { get => productID; set => productID = value; }
        public int Count { get => count; set => count = value; }
    }
}
