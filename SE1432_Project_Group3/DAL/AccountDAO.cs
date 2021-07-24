using PRN292_Project.DTL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace PRN292_Project.DAL
{
    class AccountDAO
    {
        public static IEnumerable<Account> getAllAccounts()
        {
            var Accounts = new List<Account>();

            try
            {
                DataTable dt = getDataTable();
                foreach (DataRow row in dt.Rows)
                {
                    var Account = new Account
                    {
                        Username = row["Username"].ToString(),
                        Password = row["Password"].ToString(),
                        Role = row["Role"].ToString(),
                        AccountID = row["AccountID"].ToString()
                    };
                    Accounts.Add(Account);
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }

            return Accounts.AsEnumerable();

        }

        public static DataTable getDataTable()
        {
            string sql = "SELECT [Username],[Password],[Role],[AccountID] FROM [Account]";
            return DAO.GetDataTable(sql);
        }

        public static bool insert(Account a)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [Account] ([Username],[Password],[Role],[AccountID] ) " +
                "VALUES (@username, @password, @role, @accountID)");
            cmd.Parameters.AddWithValue("@username", a.Username);
            cmd.Parameters.AddWithValue("@password", a.Password);
            cmd.Parameters.AddWithValue("@role", a.Role);
            cmd.Parameters.AddWithValue("@accountID", a.AccountID);
            return DAO.UpdateTable(cmd);
        }

        public static bool checkUsernameExist(string username)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("SELECT [Username],[Password],[Role] " +
                    "FROM [Account] " +
                    "WHERE [Username] = @username");
                cmd.Parameters.AddWithValue("@username", username);
                DataTable dt = DAO.GetDataTable(cmd);
                if (dt.Rows.Count > 0)
                {
                    return true;
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            return false;
        }

        /*public static bool update(Account a)
        {
            SqlCommand cmd = new SqlCommand("UPDATE [Account] " +
                "SET [Password] = @password ,[Role] = @role " +
                "WHERE [Username] = @username");
            cmd.Parameters.AddWithValue("@password", a.Password);
            cmd.Parameters.AddWithValue("@role", a.Role);
            cmd.Parameters.AddWithValue("@username", a.Username);
            return DAO.UpdateTable(cmd);
        }

        public static bool delete(string username)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM [Account] WHERE [Username] = @username");
            cmd.Parameters.AddWithValue("@username", username);
            return DAO.UpdateTable(cmd);
        }*/
    }
}
