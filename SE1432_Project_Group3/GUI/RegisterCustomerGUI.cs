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
			Account account = new Account();

			//check username can not empty, duplicate
			if (string.IsNullOrEmpty(txtUsername.Text.Trim()))
			{
				MessageBox.Show("Username can not be empty!");
				return;
			}
			else
			{
				if (AccountDAO.checkUsernameExist(txtUsername.Text.Trim()))
				{
					MessageBox.Show("Username existed! Please try another!");
					return;
				}
				else
				{
					account.Username = txtUsername.Text;
				}
			}

			account.Role = "customer";

			if (string.IsNullOrEmpty(lblPassword.Text))
			{
				MessageBox.Show("Password can not be empty!");
				return;
			}
			else
			{
				account.Password = lblPassword.Text;
			}

			//create customer
			Customer customer = new Customer();

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
			String cid = Guid.NewGuid().ToString();

			customer.CustomerID = cid;
			account.AccountID = cid;
			CustomerDAO.insertCustomer(customer);
			AccountDAO.insert(account);

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
