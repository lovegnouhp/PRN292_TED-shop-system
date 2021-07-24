using PRN292_Project.DAL;
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
	public partial class ProductGUI : Form
	{
		public ProductGUI()
		{
			InitializeComponent();
			initGridViewProductData();
		}
		private void initGridViewProductData()
		{
			initDataGridDetailButton();
			dataGridViewProduct.DataSource = ProductDAO.getDataTable();
			dataGridViewProduct.Columns["ProductID"].Visible = false;
			dataGridViewProduct.Columns["ProductTypeID"].Visible = false;
			dataGridViewProduct.Columns["Price"].Visible = false;
		}

		private void initDataGridDetailButton()
		{
			DataGridViewButtonColumn btnDetail = new DataGridViewButtonColumn
			{
				Name = "Detail",
				Text = "Detail",
				UseColumnTextForButtonValue = true
			};
			dataGridViewProduct.Columns.Insert(0, btnDetail);
		}

        private void registerProduct_Click(object sender, EventArgs e)
        {
			DialogResult dr = new RegisterProductGUI().ShowDialog();
			if (dr == DialogResult.OK)
            {
				initGridViewProductData();
            }
        }

        private void dataGridViewProduct_Click(object sender, EventArgs e)
        {

        }

        private void dataGridViewProduct_CellClick(object sender, DataGridViewCellEventArgs e)
        {
			if (e.ColumnIndex == -1 || e.RowIndex == -1) return;
			if (dataGridViewProduct.Columns[e.ColumnIndex].Name == "Detail")
			{
				string productID = ((Guid)dataGridViewProduct.Rows[e.RowIndex].Cells["ProductID"].Value).ToString();
				new ProductDetailGUI(productID, false).ShowDialog();
			}
		}
    }
}
