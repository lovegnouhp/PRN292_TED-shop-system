using PRN292_Project.DTL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;

namespace PRN292_Project.DAL
{
	class StaffDAO
	{
        public static IEnumerable<Staff> getAllStaffs()
        {
            var Staffs = new List<Staff>();

            try
            {
                DataTable dt = getDataTable();
                foreach (DataRow row in dt.Rows)
                {
                    var Staff = new Staff
                    {
                        StaffID = row["StaffID"].ToString(),
                        Name = row["Name"].ToString(),
                        Address = row["Address"].ToString(),
                        Phone = row["Phone"].ToString(),
                        BankAccount = row["BankAccount"].ToString()
                    };
                    Staffs.Add(Staff);
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }

            return Staffs.AsEnumerable();

        }
        public static DataTable getDataTable()
        {
            string sql = "SELECT [StaffID],[Name],[Address],[Phone],[BankAccount] FROM [Staff]";
            return DAO.GetDataTable(sql);
        }

        /*public static DataTable getStaffByTypeID(int typeID)
        {
            SqlCommand cmd = new SqlCommand("SELECT [StaffID],[TypeID],[Produce_country],[Name],[Description],[User_guide],[Price],[Sell_price],[Quantity] " +
                "FROM [Staff] " +
                "WHERE [TypeID] = @TypeID");
            cmd.Parameters.AddWithValue("@TypeID", typeID);
            return DAO.GetDataTable(cmd);
        }*/

        public static bool insertStaff(Staff s)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [Staff]([StaffID],[Name],[Address],[Phone],[BankAccount])" +
                "VALUES(@StaffID,@Name,@Address,@Phone,@BankAccount)");
            cmd.Parameters.AddWithValue("@StaffID", s.StaffID);
            cmd.Parameters.AddWithValue("@Name", s.Name);
            cmd.Parameters.AddWithValue("@Address", s.Address);
            cmd.Parameters.AddWithValue("@Phone", s.Phone);
            cmd.Parameters.AddWithValue("@BankAccount", s.BankAccount);
            return DAO.UpdateTable(cmd);

        }

/*        public static bool update(Staff p)
        {
            SqlCommand cmd = new SqlCommand("UPDATE [Staff] " +
                "SET [Name] = @Name," +
                "[Address] = @Address,[Phone] = @Phone,[BankAccount] = @BankAccount WHERE [StaffID] = @StaffID");
            cmd.Parameters.AddWithValue("@StaffID", p.StaffID);
            cmd.Parameters.AddWithValue("@Name", p.Name);
            cmd.Parameters.AddWithValue("@Address", p.Address);
            cmd.Parameters.AddWithValue("@Phone", p.Phone);
            cmd.Parameters.AddWithValue("@BankAccount", p.BankAccount);
            return DAO.UpdateTable(cmd);

        }

        public static bool delete(string id)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM [Staff] WHERE [StaffID]=@StaffID");
            cmd.Parameters.AddWithValue("@StaffID", id);
            return DAO.UpdateTable(cmd);

        }*/

        public static Staff getStaffByID(string id)
        {
            Staff Staff = null;
            try
            {
                SqlCommand cmd = new SqlCommand("SELECT [StaffID],[TypeID],[Produce_country],[Name],[Description],[User_guide],[Price],[Sell_price],[Quantity] " +
                "FROM [Staff] " +
                "WHERE [StaffID] = @StaffID");
                cmd.Parameters.AddWithValue("@StaffID", id);
                DataTable dt = DAO.GetDataTable(cmd);
                if (dt.Rows.Count > 0)
                {
                    DataRow row = dt.Rows[0];
                    Staff = new Staff
                    {
                        StaffID = row["StaffID"].ToString(),
                        Name = row["Name"].ToString(),
                        Address = row["Address"].ToString(),
                        Phone = row["Phone"].ToString(),
                        BankAccount = row["BankAccount"].ToString()
                    };

                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            return Staff;
        }

        public static string getStaffIDByUsername(string username)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("SELECT [StaffID] " +
                    "FROM [Staff] s INNER JOIN[Account] a ON s.[Staff] = a.[AccountID] " +
                    "WHERE [Username] = @username");
                cmd.Parameters.AddWithValue("@username", username);
                DataTable dt = DAO.GetDataTable(cmd);
                if (dt.Rows.Count > 0)
                {
                    DataRow row = dt.Rows[0];
                    return row["StaffID"].ToString();
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            return "";
        }
    }
}
