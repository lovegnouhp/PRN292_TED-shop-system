using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PRN292_Project.DTL
{
    public class Staff
    {
        private string staffID;
        private string name;
        private string address;
        private string phone;
        private string bankAccount;
        private string username;
        private string password;
        private string role;
        public Staff()
        {

        }
        public string StaffID { get => staffID; set => staffID = value; }
        public string Name { get => name; set => name = value; }
        public string Address { get => address; set => address = value; }
        public string Phone { get => phone; set => phone = value; }
        public string BankAccount { get => bankAccount; set => bankAccount = value; }
        public string Username { get => username; set => username = value; }
        public string Password { get => password; set => password = value; }
        public string Role { get => role; set => role = value; }
    }
}
