
using PRN292_Project.DTL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;


namespace PRN292_Project.DAL
{
    class TypeDAO
    {
        public static IEnumerable<ProductType> getAllProductTypes()
        {
            var productTypes = new List<ProductType>();

            try
            {
                DataTable dt = getDataTable();
                foreach (DataRow row in dt.Rows)
                {
                    var productType = new ProductType
                    {
                        TypeID = row["ProductTypeID"].ToString(),
                        Name = row["Type_name"].ToString()
                    };
                    productTypes.Add(productType);
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }

            return productTypes.AsEnumerable();

        }
        public static DataTable getDataTable()
        {
            string sql = "SELECT [ProductTypeID],[Type_name] " +
                "FROM [ProductType]";
            return DAO.GetDataTable(sql);
        }

        public static bool insert(ProductType t)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [ProductType] ([Type_name]) VALUES (@[Type_name])");
            cmd.Parameters.AddWithValue("@Type_name", t.Name);
            return DAO.UpdateTable(cmd);

        }

        public static bool update(ProductType t)
        {
            SqlCommand cmd = new SqlCommand("UPDATE [dbo].[ProductType] SET [Type_name] = @Type_name WHERE [ProductTypeID] = @ProductTypeID");
            cmd.Parameters.AddWithValue("@Type_name", t.Name);
            cmd.Parameters.AddWithValue("@ProductTypeID", t.TypeID);
            return DAO.UpdateTable(cmd);

        }

        public static bool delete(string id)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM [ProductType] WHERE [ProductTypeID] = @ProductTypeID");
            cmd.Parameters.AddWithValue("@ProductTypeID", id);
            return DAO.UpdateTable(cmd);

        }

        public static ProductType getTypeByID(string id)
        {
            ProductType type = null;
            try
            {
                SqlCommand cmd = new SqlCommand("SELECT [ProductTypeID],[Type_name] " +
                "FROM [ProductType] " +
                "WHERE [ProductTypeID] = @ProductTypeID");
                cmd.Parameters.AddWithValue("@ProductTypeID", id);
                DataTable dt = DAO.GetDataTable(cmd);
                if (dt.Rows.Count > 0)
                {
                    DataRow row = dt.Rows[0];
                    type = new ProductType
                    {
                        TypeID = row["ProductTypeID"].ToString(),
                        Name = row["Type_name"].ToString()
                    };

                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            return type;
        }
    }
}
