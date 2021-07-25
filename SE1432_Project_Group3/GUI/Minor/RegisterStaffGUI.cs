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
			Staff staff = new Staff();

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
					staff.Username = txtUsername.Text;
				}
			}

			staff.Role = cmbRole.SelectedItem.ToString();

			if (string.IsNullOrEmpty(txtPassword.Text))
			{
				MessageBox.Show("Password can not be empty!");
				return;
			}
			else
			{
				staff.Password = txtPassword.Text;
			}

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
				MessageBox.Show("Bank account can not be empty!");
				return;
			}
			else
			{
				staff.BankAccount = txtAccount.Text;
			}

			staff.StaffID = Guid.NewGuid().ToString();
			StaffDAO.insertStaff(staff);

			string message = "Register staff successfully!";
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
