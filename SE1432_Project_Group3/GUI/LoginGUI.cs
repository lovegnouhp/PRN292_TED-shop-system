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
    public partial class LoginGUI : Form
    {
        public object UserDAO { get; private set; }

        public LoginGUI()
        {
            InitializeComponent();
        }

        private void buttonLogin_Click(object sender, EventArgs e)
        {
            string username = txtUserName.Text.Trim();
            string password = txtPassword.Text.Trim();

            string message = "";
            string title = "Login failed";
            MessageBoxButtons buttons = MessageBoxButtons.OK;
            message += username == "" ? "Username is empty.\n" : "";
            message += password == "" ? "Password is empty." : "";
            if (message != "")
            {
                MessageBox.Show(message, title, buttons);
                return;
            }

            var account = AccountDAO.getAllAccounts().Where(a => a.Username == username
                && a.Password == password).FirstOrDefault();

            if (account != null)
            {
                Variables.Username = account.Username;
                Variables.Role = account.Role;
                if (account.Role == "customer") {
                    var customer = CustomerDAO.getAllCustomers().Where(
                        c => c.Username == account.Username).FirstOrDefault();
                    ShoppingCartDAO.accID = customer.CustomerID;
                    ShoppingCartDAO.GetCart().MigrateCart();
                    this.DialogResult = DialogResult.OK;
                } else
                {
                    this.DialogResult = DialogResult.Yes;
                }
            }
            else
            {
                message = "The username or password you entered is incorrect.";
                MessageBox.Show(message, title, buttons);
            }
        }

        private void buttonCancel_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.No;
        }
    }
}
