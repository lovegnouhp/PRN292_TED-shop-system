using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PRN292_Project.DTL
{
	public class Variables
	{
		private static string username;
        private static string role;

        public static string Username { get => username; set => username = value; }
        public static string Role { get => role; set => role = value; }
    }
}
