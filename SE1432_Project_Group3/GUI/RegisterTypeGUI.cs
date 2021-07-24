using PRN292_Project.DAL;
using PRN292_Project.DTL;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PRN292_Project
{
    public partial class RegisterTypeGUI : Form
    {
        ProductType productType;
        public RegisterTypeGUI()
        {
            InitializeComponent();
            productType = new ProductType();
            dataGridView1.DataSource = TypeDAO.getDataTable();
        }

        private void btnSave_Click_1(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtType.Text))
            {
                MessageBox.Show("Name can not be empty!");
                return;
            }
            else productType.Name = txtType.Text;
            productType.TypeID = Guid.NewGuid().ToString();
            TypeDAO.insert(productType);
            string message = "Create ProductType successfully!";
            string title = "Notification";
            MessageBoxButtons buttons = MessageBoxButtons.OK;
            MessageBox.Show(message, title, buttons);
            dataGridView1.DataSource = TypeDAO.getDataTable();
            txtType.Text = "";
        }
    }
}

