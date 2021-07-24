using PRN292_Project.DAL;
using PRN292_Project.DTL;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PRN292_Project
{
	public partial class CheckoutGUI : Form
	{
        Customer customer;

        public Customer Customer { get => customer; set => customer = value; }

        public CheckoutGUI(Customer c)
		{
			InitializeComponent();
            this.customer = c;
            loadOrderData();
        }

        private void loadOrderData()
        {
            txtOrderDate.Text = DateTime.Now.ToString();
            txtCustomerName.Text = customer.Name;
            txtAddress.Text = customer.Address;
            txtPhone.Text = customer.Phone;
            txtTotal.Text = ShoppingCartDAO.GetCart().GetTotal().ToString();
        }

        private void btnOrder_Click(object sender, EventArgs e)
        {
            string oid = Guid.NewGuid().ToString();
            Order order = new Order()
            {
                OrderID = oid,
                CustomerID = customer.CustomerID,
                OrderDate = DateTime.Now,
                Total = double.Parse(txtTotal.Text)
            };
            ShoppingCartDAO.GetCart().CreateOrder(order);
            ShoppingCartDAO.GetCart().EmptyCart();
            string message = "Create order " + oid + " successfully.";
            string title = "Check out";
            MessageBox.Show(message, title, MessageBoxButtons.OK);
            this.DialogResult = DialogResult.OK;
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }
    }
}
