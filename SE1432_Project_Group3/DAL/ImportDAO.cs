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
                "VALUES([ImportID] = @importID, [StaffID] = @staffID, [ImportDate] = @importDate)");
            cmd.Parameters.AddWithValue("@importID", i.ImportID);
            cmd.Parameters.AddWithValue("@staffID", i.StaffID);
            cmd.Parameters.AddWithValue("@importDate", i.ImportID);
            status = DAO.UpdateTable(cmd);

            foreach (var detail in i.Details)
            {
                SqlCommand cmd1 = new SqlCommand("INSERT INTO [Import_details] ([ImportID],[ImportLine],[Quantity],[ProductID]) " +
                    "VALUES([ImportID] = @ImportID, [ImportLine] = @ImportLine, [Quantity] = @quantity), [ProductID] = @productID");
                cmd.Parameters.AddWithValue("@importID", detail.ImportID);
                cmd.Parameters.AddWithValue("@importLine", detail.ImportLine);
                cmd.Parameters.AddWithValue("@quantity", detail.Quantity);
                cmd.Parameters.AddWithValue("@productID", detail.ProductID);
                status = DAO.UpdateTable(cmd1);
            }

            return status;
        }
    }
}
