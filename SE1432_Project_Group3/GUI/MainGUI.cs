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
	public partial class MainGUI : Form
	{
        public MainGUI()
        {
            InitializeComponent();
            Account.Username = "admin";
            Account.Role = "manager";
            loadMenuStrip();
        }

        public void loadMenuStrip()
        {
            if (Account.Role == "manager")
            {
                productToolStripMenuItem.Visible = true;
                productTypeToolStripMenuItem.Visible = true;
                staffsToolStripMenuItem.Visible = true;
                reportToolStripMenuItem.Visible = true;
            }
            else
            {
                productToolStripMenuItem.Visible = false;
                productTypeToolStripMenuItem.Visible = false;
                staffsToolStripMenuItem.Visible = false;
                reportToolStripMenuItem.Visible = false;
                storeToolStripMenuItem.Visible = false;
                cartToolStripMenuItem.Visible = false;
            }

            if (Account.Role == "staff")
            {
                importToolStripMenuItem.Visible = true;
                deliveryToolStripMenuItem.Visible = true;
            }
            else
            {
                importToolStripMenuItem.Visible = false;
                deliveryToolStripMenuItem.Visible = false;
                storeToolStripMenuItem.Visible = false;
                cartToolStripMenuItem.Visible = false;
            }

            if (Account.Username != null) // already login: show Logout button
            {
                loginToolStripMenuItem.Text = "Logout (" + Account.Username + ")";
            }
            else // not login yet: show Login button
            {
                loginToolStripMenuItem.Text = "Login";
            }
            cartToolStripMenuItem.Text = "Cart (" + ShoppingCartDAO.GetCart().GetCount() + ")";
        }

        private void storeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Embed(panel1, new StoreGUI());
        }

        private void Embed(Panel p, Form f)
        {
            p.Controls.Clear();
            f.FormBorderStyle = FormBorderStyle.None;
            f.TopLevel = false;
            f.Visible = true;
            f.Dock = DockStyle.Fill;
            p.Controls.Add(f); //thêm form mới vào panel
            p.Show();
        }

        private void cartToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var cartGUI = new CartGUI();
            cartGUI.ShowDialog();
            loadMenuStrip();
        }

        private void albumToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Embed(panel1, new AlbumGUI());
        }

        private void reportToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Embed(panel1, new ReportGUI());
        }

        private void aboutToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Embed(panel1, new AboutGUI());
        }

        private void loginToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (Account.Username != null)
            {
                string message = "Do you want to logout?";
                string title = "Log out";
                MessageBoxButtons buttons = MessageBoxButtons.YesNo;
                DialogResult result = MessageBox.Show(message, title, buttons);
                if (result == DialogResult.Yes)
                {
                    Account.Username = null;
                    Account.Role = 0;
                    ShoppingCartDAO.UserName = null;
                    ShoppingCartDAO.GetCart().ResetCartID();
                    loadMenuStrip();
                    panel1.Controls.Clear();
                }
            }
            else
            {
                var loginGUI = new LoginGUI();
                DialogResult dr = loginGUI.ShowDialog();
                if (dr == DialogResult.OK)
                {
                    loadMenuStrip();
                }
            }
        }

        private void MainGUI_Activated(object sender, EventArgs e)
        {
            loadMenuStrip();
        }
    }
}
}
