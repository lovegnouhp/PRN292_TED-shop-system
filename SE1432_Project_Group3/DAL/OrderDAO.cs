using PRN292_Project.DAL;
using PRN292_Project.DTL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;

namespace PRN292_Project.DAL
{
    class OrderDAO
    {
        public static IEnumerable<Order> getAllOrders()
        {
            var orders = new List<Order>();
            try
            {
                DataTable dt = getDataTable();
                foreach (DataRow row in dt.Rows)
                {
                    var order = new Order
                    {
                        OrderID = row["OrderID"].ToString(),
                        CustomerID = row["CustomerID"].ToString(),
                        OrderDate = DateTime.Parse(row["Order_date"].ToString()),
                        Total = double.Parse(row["Total_amount"].ToString())
                    };
                    orders.Add(order);
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            return orders.AsEnumerable();
        }

        public static DataTable getDataTable()
        {
            string sql = "SELECT [OrderID],[CustomerID],[Order_date],[Total_amount],[StaffID],[Deliver_date] FROM [Orders]";
            return DAO.GetDataTable(sql);
        }

        public static bool Insert(Order o)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [Orders] ([OrderID],[CustomerID],[Order_date],[Total_amount]) " +
                "VALUES(@OrderID, @CustomerID, @Order_date, @Total_amount)");
            cmd.Parameters.AddWithValue("@OrderID", o.OrderID);
            cmd.Parameters.AddWithValue("@CustomerID", o.CustomerID);
            cmd.Parameters.AddWithValue("@Order_date", o.OrderDate);
            cmd.Parameters.AddWithValue("@Total_amount", o.Total);
            return DAO.UpdateTable(cmd);
        }

        public static bool Update(Order o)
        {
            SqlCommand cmd = new SqlCommand("UPDATE [Orders] " +
                "SET [CustomerID] = @customerID, [Order_date] = @order_date, [Total_amount] = @total_amount, " +
                "[StaffID] = @staffID,[Deliver_date] = @deliver_date " +
                "WHERE [OrderID] = @orderID");
            cmd.Parameters.AddWithValue("@customerID", o.CustomerID);
            cmd.Parameters.AddWithValue("@order_date", o.OrderDate);
            cmd.Parameters.AddWithValue("@total_amount", o.Total);
            cmd.Parameters.AddWithValue("@staffID", o.StaffID);
            cmd.Parameters.AddWithValue("@deliver_date", o.DeliverDate);
            cmd.Parameters.AddWithValue("@orderID", o.OrderID);
            return DAO.UpdateTable(cmd);
        }
    }
}
