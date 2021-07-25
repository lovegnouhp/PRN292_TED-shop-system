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
	public partial class RegisterProductGUI : Form
	{
		Product product;

		public RegisterProductGUI()
		{
			InitializeComponent();
			product = new Product();
			initType();
		}

		public void initType()
		{
			DataTable dt = DAO.GetDataTable("SELECT [ProductTypeID],[Type_name] FROM [ProductType]");
			cmbType.DataSource = dt;
			cmbType.ValueMember = "ProductTypeID";
			cmbType.DisplayMember = "Type_name";

		}

		private void btnCancel_Click(object sender, EventArgs e)
		{
			this.DialogResult = DialogResult.No;
		}


		private void btnSave_Click(object sender, EventArgs e)
		{
			double price;

			if (string.IsNullOrEmpty(txtName.Text))
			{
				MessageBox.Show("Product name can not be empty!");
				return;
			}
			else product.Name = txtName.Text;

			product.TypeID = cmbType.SelectedValue.ToString();

			if (string.IsNullOrEmpty(txtCountry.Text))
			{
				MessageBox.Show("Produce country can not be empty!");
				return;
			}
			else product.Produce_country = txtCountry.Text;

			if (string.IsNullOrEmpty(txtDescription.Text))
			{
				MessageBox.Show("Description can not be empty!");
				return;
			}
			else product.Description = txtDescription.Text;

			if (string.IsNullOrEmpty(txtUserGuide.Text))
			{
				MessageBox.Show("User guide can not be empty!");
				return;
			}
			else product.User_guide = txtUserGuide.Text;

			//price
			if (string.IsNullOrEmpty(txtPrice.Text))
			{
				MessageBox.Show("Price can not be empty!");
				return;
			}
			else
			{
				try
				{
					price = double.Parse(txtPrice.Text);
					product.Price = price;
				}
				catch (Exception)
				{
					MessageBox.Show("Price must be float");
					return;
				}
			}
			product.Quantity = int.Parse(txtQuantity.Text);

			//price_sell
			if (string.IsNullOrEmpty(txtSellPrice.Text))
			{
				MessageBox.Show("Price sell can not be empty!");
				return;
			}
			else
			{
				try
				{
					price = double.Parse(txtSellPrice.Text);
					product.Sell_price = price;
				}
				catch (Exception)
				{
					MessageBox.Show("Price sell must be float");
					return;
				}
			}



			ProductDAO.insertProduct(product);
			string message = "Register product successfully!";
			string title = "Notification";
			MessageBoxButtons buttons = MessageBoxButtons.OK;
			DialogResult result = MessageBox.Show(message, title, buttons);
			this.DialogResult = DialogResult.OK;
		}
	}

}

