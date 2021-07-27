using PRN292_Project.DTL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;

namespace PRN292_Project.DAL
{
    public class CartDAO
    {
        public static IEnumerable<Cart> GetCarts()
        {
            var carts = new List<Cart>();
            try
            {
                DataTable dt = GetDataTable();
                foreach (DataRow row in dt.Rows)
                {
                    var c = new Cart
                    {
                        RecordID = (int)row["recordID"],
                        CustomerID = row["CustomerID"].ToString(),
                        ProductID = row["ProductID"].ToString(),
                        Count = (int)row["Count"],
                        DateCreated = (DateTime)row["DateCreated"]
                    };
                    carts.Add(c);
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            return carts.AsEnumerable();
        }
        public static DataTable GetDataTable()
        {
            return DAO.GetDataTable("SELECT * FROM [Carts]");
        }

        public static void Insert(Cart cart)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO [Carts] ([CustomerID],[ProductID],[Count],[DateCreated]) " +
                    "VALUES(@customerID, @productID, @count, @dateCreated)");
                cmd.Parameters.AddWithValue("@customerID", cart.CustomerID);
                cmd.Parameters.AddWithValue("@productID", cart.ProductID);
                cmd.Parameters.AddWithValue("@count", cart.Count);
                cmd.Parameters.AddWithValue("@dateCreated", cart.DateCreated);
                DAO.UpdateTable(cmd);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public static void Update(Cart cart)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("UPDATE Carts SET CustomerID = @customerID, " +
                    "ProductID = @productID, Count = @count, dateCreated = @dateCreated " +
                    "WHERE RecordID = @recordID");
                cmd.Parameters.AddWithValue("@recordID", cart.RecordID);
                cmd.Parameters.AddWithValue("@customerID", cart.CustomerID);
                cmd.Parameters.AddWithValue("@productID", cart.ProductID);
                cmd.Parameters.AddWithValue("@count", cart.Count);
                cmd.Parameters.AddWithValue("@dateCreated", cart.DateCreated);
                DAO.UpdateTable(cmd);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);

            }
        }
        public static void Delete(string customerID, string productID)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("DELETE FROM Carts WHERE CustomerID = @customerID "
                    + "AND ProductID = @productID");
                cmd.Parameters.AddWithValue("customerID", customerID);
                cmd.Parameters.AddWithValue("productID", productID);
                DAO.UpdateTable(cmd);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);

            }
        }

        public static void Delete(string customerID)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("DELETE FROM Carts WHERE CustomerID = @customerID");
                cmd.Parameters.AddWithValue("@customerID", customerID);

                DAO.UpdateTable(cmd);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public static void MigrateCart(string shoppingCartId, string customerID)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("UPDATE carts SET CustomerID = @customerID "
                    + "WHERE CustomerID = @shoppingCartID");
                cmd.Parameters.AddWithValue("@shoppingCartID", shoppingCartId);
                cmd.Parameters.AddWithValue("@customerID", customerID);
                DAO.UpdateTable(cmd);
            }
            catch (Exception exx)
            {
                throw new Exception(exx.Message);
            }
        }
    }
}
