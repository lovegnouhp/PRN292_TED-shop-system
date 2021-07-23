using PRN292_Project.DAL;
using PRN292_Project.DTL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;

namespace PRN292_Project.DAL
{
    public class ShoppingCartDAO
    {
        string ShoppingCartId { get; set; }
        static string CustomerID { get; set; }
        public static string UserName { get; set; }
        public static ShoppingCartDAO GetCart()
        {
            var cart = new ShoppingCartDAO();
            cart.ShoppingCartId = cart.GetCartId();
            return cart;
        }

        public List<Cart> GetCartItems()
        {
            List<Cart> cartItems = CartDAO.GetCarts()
                    .Where(c => c.CustomerID == ShoppingCartId).ToList<Cart>();
            return cartItems;
        }

        public int GetCount()
        {
            // Get the count of each item in the cart and sum them up
            List<Cart> cartItems = GetCartItems();
            int count = 0;
            if (cartItems != null)
            {
                foreach (Cart cartItem in cartItems)
                {
                    count += cartItem.Count;
                }
            }
            return count;
        }
        public double GetTotal()
        {
            // Multiply album price by count of that album to get
            // the current price for each of those albums in the cart
            // sum all album price totals to get the cart total
            double total = 0;
            List<Cart> cartItems = GetCartItems();
            if (cartItems != null)
            {
                foreach (Cart cart in cartItems)
                {
                    total += cart.Count * ProductDAO.getProductByID(cart.ProductID).Sell_price;
                }
            }

            return total;
        }

        public string CreateOrder(Order order)
        {
            // Save the order
            OrderDAO.Insert(order);
            string orderID = Guid.NewGuid().ToString();
            var cartItems = GetCartItems();
            // Iterate over the items in the cart, adding the 
            // order details for each
            for (int i = 0; i < cartItems.Count; i++)
            {
                var orderDetail = new OrderDetail
                {
                    OrderID = orderID,
                    OrderLine = i + 1,
                    ProductID = cartItems[i].ProductID,
                    Quantity = cartItems[i].Count
                };

                SqlCommand cmd1 = new SqlCommand("INSERT INTO [Order_details] ([OrderID],[OrderLine],[Quantity],[ProductID]) " +
                    "VALUES([OrderID] = @orderID, [OrderLine] = @orderLine, [Quantity] = @quantity), [ProductID] = @productID");
                cmd1.Parameters.AddWithValue("@orderID", orderDetail.OrderID);
                cmd1.Parameters.AddWithValue("@orderLine", orderDetail.OrderLine);
                cmd1.Parameters.AddWithValue("@quantity", orderDetail.Quantity);
                cmd1.Parameters.AddWithValue("@productID", orderDetail.ProductID);
                DAO.UpdateTable(cmd1);
            }

            // Empty the shopping cart
            CartDAO.Delete(ShoppingCartId);
            // Return the OrderId as the confirmation number
            return orderID;
        }

        public void AddToCart(string id)
        {
            // Get the matching cart and album instances
            var cartItem = CartDAO.GetCarts().Where(c => c.CustomerID == ShoppingCartId
                && c.ProductID == id).FirstOrDefault();
            if (cartItem == null)
            {
                // Create a new cart item if no cart item exists
                cartItem = new Cart
                {
                    ProductID = id,
                    CustomerID = ShoppingCartId,
                    Count = 1,
                    DateCreated = DateTime.Now
                };
                CartDAO.Insert(cartItem);
            }
            else
            {
                // If the item does exist in the cart, then add one to the quantity
                cartItem.Count++;
                CartDAO.Update(cartItem);
            }
        }

        public void RemoveFromCart(string id)
        {
            // Get the cart
            // Get the matching cart and album instances
            var cartItem = GetCartItems().Where(c => c.ProductID == id).First();
            int itemCount = 0;
            if (cartItem != null)
            {
                if (cartItem.Count > 1)
                {
                    cartItem.Count--;
                    itemCount = cartItem.Count;
                    CartDAO.Update(cartItem);
                }
                else
                {
                    CartDAO.Delete(ShoppingCartId, id);
                }
            }
        }

        public void EmptyCart() => CartDAO.Delete(ShoppingCartId);

        public string GetCartId()
        {
            if (CustomerID == null)
            {
                if (UserName != null)
                    CustomerID = UserName;
                else
                {
                    Guid tempCustomerID = Guid.NewGuid();
                    CustomerID = tempCustomerID.ToString();
                }
            }
            return CustomerID;
        }

        // When a user has logged in, migrate their shopping cart 
        // to be associated with their username
        public void MigrateCart()
        {
            CartDAO.MigrateCart(ShoppingCartId, UserName);
            CustomerID = UserName;
        }

        public void ResetCartID()
        {
            CustomerID = null;
        }
    }
}
