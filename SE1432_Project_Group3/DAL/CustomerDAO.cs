using PRN292_Project.DTL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace PRN292_Project.DAL
{
    class CustomerDAO
    {
        public static IEnumerable<Customer> getAllCustomers()
        {
            var customers = new List<Customer>();
            try
            {
                DataTable dt = getDataTable();
                foreach (DataRow row in dt.Rows)
                {
                    var customer = new Customer
                    {
                        CustomerID = row["CustomerID"].ToString(),
                        Name = row["Name"].ToString(),
                        Address = row["Address"].ToString(),
                        Phone = row["Phone"].ToString(),
                        Username = row["Username"].ToString(),
                        Password = row["Password"].ToString(),
                        Role = row["Role"].ToString()
                    };
                    customers.Add(customer);
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            return customers.AsEnumerable();
        }
        public static DataTable getDataTable()
        {
            string sql = "SELECT [CustomerID],[Name],[Address],[Phone],a.[Username],[Password],[Role]" +
                "FROM [Customer] c INNER JOIN [Account] a ON c.[Username] = a.[Username]";
            return DAO.GetDataTable(sql);
        }

        public static bool insertCustomer(Customer c)
        {
            AccountDAO.insert(c);
            SqlCommand cmd = new SqlCommand("INSERT INTO [Customer] " +
                "([CustomerID],[Name],[Phone],[Address], [Username]) " +
                "VALUES(@cid, @Name, @Phone, @Address, @Username)");
            cmd.Parameters.AddWithValue("@cid", c.CustomerID);
            cmd.Parameters.AddWithValue("@Name", c.Name);
            cmd.Parameters.AddWithValue("@Address", c.Address);
            cmd.Parameters.AddWithValue("@Phone", c.Phone);
            cmd.Parameters.AddWithValue("@Username", c.Phone);
            return DAO.UpdateTable(cmd);
        }

        /*        public static bool update(Customer p)
                {
                    SqlCommand cmd = new SqlCommand("UPDATE [Customer] " +
                        "SET [Name] = @Name," +
                        "[Address] = @Address,[Phone] = @Phone,[BankAccount] = @BankAccount WHERE [CustomerID] = @CustomerID");
                    cmd.Parameters.AddWithValue("@CustomerID", p.CustomerID);
                    cmd.Parameters.AddWithValue("@Name", p.Name);
                    cmd.Parameters.AddWithValue("@Address", p.Address);
                    cmd.Parameters.AddWithValue("@Phone", p.Phone);
                    cmd.Parameters.AddWithValue("@BankAccount", p.BankAccount);
                    return DAO.UpdateTable(cmd);

                }

                public static bool delete(string id)
                {
                    SqlCommand cmd = new SqlCommand("DELETE FROM [Customer] WHERE [CustomerID]=@CustomerID");
                    cmd.Parameters.AddWithValue("@CustomerID", id);
                    return DAO.UpdateTable(cmd);

                }*/
    }
}
