using PRN292_Project.DAL;
using PRN292_Project.DTL;
using System.Data;
using System.Data.SqlClient;

namespace PRN292_Project.DAL
{
    class OrderDAO
    {
        public static DataTable GetDataTable()
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
            SqlCommand cmd = new SqlCommand("UPDATE [Orders]  SET [StaffID] = @staffID, " +
                "[Deliver_date] = @deliver_date WHERE [OrderID] = @orderID");
            cmd.Parameters.AddWithValue("@staffID", o.StaffID);
            cmd.Parameters.AddWithValue("@deliver_date", o.DeliverDate);
            cmd.Parameters.AddWithValue("@orderID", o.OrderID);
            return DAO.UpdateTable(cmd);
        }
    }
}
