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
    public partial class RegisterCustomerGUI : Form
    {
        public RegisterCustomerGUI()
        {
            InitializeComponent();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            Customer customer = new Customer();

            //check username can not empty, duplicate
            if (string.IsNullOrEmpty(txtUsername.Text.Trim()))
            {
                MessageBox.Show("Username can not be empty!");
                return;
            }
            else
            {
                if (AccountDAO.getAllAccounts().Where(
                    a => a.Username == txtUsername.Text.Trim()).FirstOrDefault() != null)
                {
                    MessageBox.Show("Username existed! Please try another!");
                    return;
                }
                else
                {
                    customer.Username = txtUsername.Text;
                }
            }

            customer.Role = "customer";

            if (string.IsNullOrEmpty(lblPassword.Text))
            {
                MessageBox.Show("Password can not be empty!");
                return;
            }
            else
            {
                customer.Password = lblPassword.Text;
            }

            if (string.IsNullOrEmpty(txtName.Text))
            {
                MessageBox.Show("Name can not be empty!");
                return;
            }
            else
            {
                customer.Name = txtName.Text;
            }

            if (string.IsNullOrEmpty(txtAddress.Text))
            {
                MessageBox.Show("Address can not be empty!");
                return;
            }
            else
            {
                customer.Address = txtAddress.Text;
            }

            //phone
            if (string.IsNullOrEmpty(txtPhone.Text))
            {
                MessageBox.Show("Phone can not be empty!");
                return;
            }
            else
            {
                customer.Phone = txtPhone.Text;
            }

            customer.CustomerID = Guid.NewGuid().ToString();
            CustomerDAO.insertCustomer(customer);

            string message = "Register successfully!";
            string title = "Notification";
            MessageBoxButtons buttons = MessageBoxButtons.OK;
            DialogResult result = MessageBox.Show(message, title, buttons);
            this.Dispose();
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }
    }
}
