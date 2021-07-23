using PRN292_Project.DTL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace PRN292_Project.DAL
{
	class ProductDAO
	{
        public static IEnumerable<Product> getAllProducts()
        {
            var products = new List<Product>();

            try
            {
                DataTable dt = getDataTable();
                foreach (DataRow row in dt.Rows)
                {
                    var product = new Product
                    {
                        ProductID = row["ProductID"].ToString(),
                        TypeID = row["TypeID"].ToString(),
                        Produce_country = row["Produce_country"].ToString(),
                        Name = row["Name"].ToString(),
                        Description = row["Description"].ToString(),
                        User_guide = row["User_guide"].ToString(),
                        Price = double.Parse(row["Price"].ToString()),
                        Sell_price = double.Parse(row["Sell_price"].ToString()),
                        Quantity = int.Parse(row["Quantity"].ToString())
                    };
                    products.Add(product);
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }

            return products.AsEnumerable();

        }
        public static DataTable getDataTable()
        {
            string sql = "SELECT [ProductID],[TypeID],[Produce_country],[Name],[Description],[User_guide],[Price],[Sell_price],[Quantity] " +
                "FROM [Product]";
            return DAO.GetDataTable(sql);
        }

        public static DataTable getProductByTypeID(string typeID)
        {
            SqlCommand cmd = new SqlCommand("SELECT [ProductID],[TypeID],[Produce_country],[Name],[Description],[User_guide],[Price],[Sell_price],[Quantity] " +
                "FROM [Product] " +
                "WHERE [TypeID] = @TypeID");
            cmd.Parameters.AddWithValue("@TypeID", typeID);
            return DAO.GetDataTable(cmd);
        }

        public static bool insertProduct(Product p)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [Product] ([TypeID],[Produce_country],[Name],[Description],[User_guide],[Price],[Sell_price],[Quantity]) " +
                "VALUES(@TypeID, @Produce_country, @Name, @Description, @User_guide, @Price, @Sell_price, @Quantity)");
            cmd.Parameters.AddWithValue("@TypeID", p.TypeID);
            cmd.Parameters.AddWithValue("@Produce_country", p.Produce_country);
            cmd.Parameters.AddWithValue("@Name", p.Name);
            cmd.Parameters.AddWithValue("@Description", p.Description);
            cmd.Parameters.AddWithValue("@User_guide", p.User_guide);
            cmd.Parameters.AddWithValue("@Price", p.Price);
            cmd.Parameters.AddWithValue("@Sell_price", p.Sell_price);
            cmd.Parameters.AddWithValue("@Quantity", p.Quantity);
            return DAO.UpdateTable(cmd);

        }

        public static bool update(Product p)
        {
            SqlCommand cmd = new SqlCommand("UPDATE [Product] " +
                "SET [TypeID] = @TypeID, [Produce_country] = @Produce_country, [Name] = @Name, [Description] = @Description, " +
                "[User_guide] = @User_guide, [Price] = @Price, [Sell_price] = @Sell_price, [Quantity] = @Quantity WHERE [ProductID] = @ProductID");
            cmd.Parameters.AddWithValue("@TypeID", p.TypeID);
            cmd.Parameters.AddWithValue("@Produce_country", p.Produce_country);
            cmd.Parameters.AddWithValue("@Name", p.Name);
            cmd.Parameters.AddWithValue("@Description", p.Description);
            cmd.Parameters.AddWithValue("@User_guide", p.User_guide);
            cmd.Parameters.AddWithValue("@Price", p.Price);
            cmd.Parameters.AddWithValue("@Sell_price", p.Sell_price);
            cmd.Parameters.AddWithValue("@Quantity", p.Quantity);
            cmd.Parameters.AddWithValue("@ProductID", p.ProductID);
            return DAO.UpdateTable(cmd);

        }

        public static bool delete(string id)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM [Product] WHERE [ProductID]=@ProductID");
            cmd.Parameters.AddWithValue("@ProductID", id);
            return DAO.UpdateTable(cmd);

        }

        public static Product getProductByID(string id)
        {
            Product product = null;
            try
            {
                SqlCommand cmd = new SqlCommand("SELECT [ProductID],[TypeID],[Produce_country],[Name],[Description],[User_guide],[Price],[Sell_price],[Quantity] " +
                "FROM [Product] " +
                "WHERE [ProductID] = @ProductID");
                cmd.Parameters.AddWithValue("@ProductID", id);
                DataTable dt = DAO.GetDataTable(cmd);
                if (dt.Rows.Count > 0)
                {
                    DataRow row = dt.Rows[0];
                    product = new Product
                    {
                        ProductID = row["ProductID"].ToString(),
                        TypeID = row["TypeID"].ToString(),
                        Produce_country = row["Produce_country"].ToString(),
                        Name = row["Name"].ToString(),
                        Description = row["Description"].ToString(),
                        User_guide = row["User_guide"].ToString(),
                        Price = double.Parse(row["Price"].ToString()),
                        Sell_price = double.Parse(row["Sell_price"].ToString()),
                        Quantity = int.Parse(row["Quantity"].ToString())

                    };

                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            return product;
        }
    }
}
