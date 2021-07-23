using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PRN292_Project.DTL
{
    internal class Staff : Account
    {
        private string staffID;
        private String name;
        private String address;
        private String phone;
        private String bankAccount;
        public Staff()
        {

        }
        public string StaffID { get => staffID; set => staffID = value; }
        public string Name { get => name; set => name = value; }
        public string Address { get => address; set => address = value; }
        public string Phone { get => phone; set => phone = value; }
        public string BankAccount { get => bankAccount; set => bankAccount = value; }
    }
}
