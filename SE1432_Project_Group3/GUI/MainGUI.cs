using PRN292_Project.DAL;
using PRN292_Project.DTL;
using PRN292_Project.GUI;
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
            Variables.Username = null;
            Variables.Role = "";
            loadMenuStrip();
        }

        public void loadMenuStrip()
        {
            storeToolStripMenuItem.Visible = true;
            cartToolStripMenuItem.Visible = true;
            if (Variables.Role == "manager")
            {
                productToolStripMenuItem.Visible = true;
                productTypeToolStripMenuItem.Visible = true;
                staffsToolStripMenuItem.Visible = true;
                reportToolStripMenuItem.Visible = true;
                storeToolStripMenuItem.Visible = false;
                cartToolStripMenuItem.Visible = false;
            }
            else
            {
                productToolStripMenuItem.Visible = false;
                productTypeToolStripMenuItem.Visible = false;
                staffsToolStripMenuItem.Visible = false;
                reportToolStripMenuItem.Visible = false;
            }

            if (Variables.Role == "staff")
            {
                importToolStripMenuItem.Visible = true;
                deliveryToolStripMenuItem.Visible = true;
                storeToolStripMenuItem.Visible = false;
                cartToolStripMenuItem.Visible = false;
            }
            else
            {
                importToolStripMenuItem.Visible = false;
                deliveryToolStripMenuItem.Visible = false;

            }

            if (Variables.Username != null) // already login: show Logout button
            {
                loginToolStripMenuItem.Text = "Logout (" + Variables.Username + ")";
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

        private void cartToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var cartGUI = new CartGUI();
            cartGUI.ShowDialog();
            loadMenuStrip();
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
            if (Variables.Username != null)
            {
                string message = "Do you want to logout?";
                string title = "Log out";
                MessageBoxButtons buttons = MessageBoxButtons.YesNo;
                DialogResult result = MessageBox.Show(message, title, buttons);
                if (result == DialogResult.Yes)
                {
                    Variables.Username = null;
                    Variables.Role = "";
                    ShoppingCartDAO.accID = null;
                    ShoppingCartDAO.GetCart().ResetCartID();
                    loadMenuStrip();
                    panel1.Controls.Clear();
                }
            }
            else
            {
                var loginGUI = new LoginGUI();
                DialogResult dr = loginGUI.ShowDialog();
                if (dr != DialogResult.No)
                {
                    loadMenuStrip();
                    panel1.Controls.Clear();
                }
                
            }
        }

        private void MainGUI_Activated(object sender, EventArgs e)
        {
            loadMenuStrip();
        }

        private void productToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Embed(panel1, new ProductGUI());
        }

        private void productTypeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Embed(panel1, new RegisterTypeGUI());
        }

        private void staffsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Embed(panel1, new StaffGUI());
        }

        private void importToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Embed(panel1, new ImportGUI());
        }

        private void deliveryToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Embed(panel1, new DeliveryGUI());
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
    }
}
