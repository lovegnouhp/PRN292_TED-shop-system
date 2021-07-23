using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PRN292_Project.DTL
{
    public class Customer : Variables
	{
		private string customerID;
		private string name;
		private string phone;
		private string address;
        private string username;
        private string password;

        public Customer()
        {
        }

        public string CustomerID { get => customerID; set => customerID = value; }
        public string Name { get => name; set => name = value; }
        public string Phone { get => phone; set => phone = value; }
        public string Address { get => address; set => address = value; }
        public string Username1 { get => username; set => username = value; }
        public string Password1 { get => password; set => password = value; }
    }
}
