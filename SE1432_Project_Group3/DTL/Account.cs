using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PRN292_Project.DTL
{
    class Account
    {
        private string username;
        private string password;
        private string role;
        private string accountID;
        public Account()
        {
        }

        public string Username { get => username; set => username = value; }
        public string Password { get => password; set => password = value; }
        public string Role { get => role; set => role = value; }
        public string AccountID { get => accountID; set => accountID = value; }
    }
}
