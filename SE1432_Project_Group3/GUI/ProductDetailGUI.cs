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
	public partial class ProductDetailGUI : Form
	{
		public ProductDetailGUI(String productID, bool enableAddCart)
		{
			InitializeComponent();
            var product = ProductDAO.getProductByID(productID);
            txtName.Text = product.Name;
            txtCountry.Text = product.Produce_country;
            txtType.Text = TypeDAO.getTypeByID(product.TypeID).Name.ToString();
            txtPrice.Text = product.Sell_price.ToString();
            txtDescription.Text = product.Description;
            txtUserGuide.Text = product.User_guide;
            btnAddToCart.Enabled = enableAddCart;
        }

        private void buttonBack_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }

        private void buttonAddCart_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.OK;
        }
    }
}
