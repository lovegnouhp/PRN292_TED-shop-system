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
	public partial class RegisterStaffGUI : Form
	{
		Staff staff;
		public RegisterStaffGUI()
		{
			InitializeComponent();
			staff = new Staff();
			cmbRole.SelectedIndex = 0;
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

			account.Role = cmbRole.SelectedItem.ToString();

			if (string.IsNullOrEmpty(txtPassword.Text))
			{
				MessageBox.Show("Password can not be empty!");
				return;
			}
			else
			{
				account.Password = txtPassword.Text;
			}

			Staff staff = new Staff();

			if (string.IsNullOrEmpty(txtName.Text))
			{
				MessageBox.Show("Name can not be empty!");
				return;
			}
			else
			{
				staff.Name = txtName.Text;
			}

			if (string.IsNullOrEmpty(txtAddress.Text))
			{
				MessageBox.Show("Address can not be empty!");
				return;
			}
			else
			{
				staff.Address = txtAddress.Text;
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
				staff.Phone = txtPhone.Text;
			}

			if (string.IsNullOrEmpty(txtAccount.Text))
			{
				MessageBox.Show("Account can not be empty!");
				return;
			}
			else
			{
				staff.BankAccount = txtAccount.Text;
			}

			String cid = Guid.NewGuid().ToString();

			staff.StaffID = cid;
			account.AccountID = cid;
			StaffDAO.insertStaff(staff);
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
