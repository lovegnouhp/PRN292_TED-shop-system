using PRN292_Project.DTL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace PRN292_Project.DAL
{
    class ImportDAO
    {
        public static DataTable GetDataTable()
        {
            string sql = "SELECT [ImportID],[StaffID],[ImportDate] FROM [Import]";
            return DAO.GetDataTable(sql);
        }

        public static bool Insert(Import i)
        {
            bool status = true;
            SqlCommand cmd = new SqlCommand("INSERT INTO [Import]([ImportID],[StaffID],[ImportDate]) " +
                "VALUES(@importID, @staffID, @importDate)");
            cmd.Parameters.AddWithValue("@importID", i.ImportID);
            cmd.Parameters.AddWithValue("@staffID", i.StaffID);
            cmd.Parameters.AddWithValue("@importDate", i.Date);
            DAO.UpdateTable(cmd);

            foreach (var detail in i.Details)
            {
                SqlCommand cmd1 = new SqlCommand("INSERT INTO [Import_details] ([ImportID],[ImportLine],[Quantity],[ProductID]) " +
                    "VALUES(@importID, @importLine, @quantity, @productID)");
                cmd1.Parameters.AddWithValue("@importID", detail.ImportID);
                cmd1.Parameters.AddWithValue("@importLine", detail.ImportLine);
                cmd1.Parameters.AddWithValue("@quantity", detail.Quantity);
                cmd1.Parameters.AddWithValue("@productID", detail.ProductID);
                status = DAO.UpdateTable(cmd1);
            }

            return status;
        }
    }
}
