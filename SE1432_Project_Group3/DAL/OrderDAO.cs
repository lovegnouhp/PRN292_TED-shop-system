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

        static public int GetMaxID()
        {
            int max = -1;
            string sql = "Select Max(OrderID) as MaxID from Orders";
            DataTable dt = DAO.GetDataTable(sql);
            if (dt.Rows.Count > 0) max = (int)dt.Rows[0]["MaxID"];
            return max;
        }

        public static bool Insert(Order o)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [Orders] ([OrderID],[CustomerID],[Order_date],[Total_amount] " +
                "VALUES([OrderID] = @orderID, [CustomerID] = @customerID, [Order_date] = @orderDate, [Total_amount] = @totalAmount)");
            cmd.Parameters.AddWithValue("@orderID", o.OrderID);
            cmd.Parameters.AddWithValue("@customerID", o.CustomerID);
            cmd.Parameters.AddWithValue("@orderDate", o.OrderDate);
            cmd.Parameters.AddWithValue("@totalAmount", o.Total);
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
