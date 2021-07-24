using PRN292_Project.DAL;
using PRN292_Project.DTL;
using System;
using System.Data;
using System.Linq;
using System.Windows.Forms;

namespace PRN292_Project
{
    public partial class CartGUI : Form
    {
        public CartGUI()
        {
            InitializeComponent();
            initDataGridDetailButton();
            loadData();
            initDataGridRemoveButton();
        }

        private void loadData()
        {
            dataGridViewCart.DataSource = ShoppingCartDAO.GetCart().GetCartItems();
            dataGridViewCart.Columns["RecordID"].Visible = false;
            dataGridViewCart.Columns["CustomerID"].Visible = false;
            dataGridViewCart.Columns["DateCreated"].DisplayIndex = 1;
            dataGridViewCart.Columns["ProductID"].DisplayIndex = 2;
            dataGridViewCart.Columns["Count"].DisplayIndex = 3;
            textBoxTotal.Text = ShoppingCartDAO.GetCart().GetTotal().ToString();
        }

        private void initDataGridDetailButton()
        {
            DataGridViewButtonColumn btnDetail = new DataGridViewButtonColumn
            {
                Name = "Detail",
                Text = "Detail",
                UseColumnTextForButtonValue = true
            };
            dataGridViewCart.Columns.Insert(0, btnDetail);
        }
        private void initDataGridRemoveButton()
        {
            DataGridViewButtonColumn btnRemove = new DataGridViewButtonColumn
            {
                Name = "Remove",
                Text = "Remove from cart",
                UseColumnTextForButtonValue = true
            };
            int count = dataGridViewCart.ColumnCount;
            dataGridViewCart.Columns.Insert(count, btnRemove);
        }

        private void dataGridViewAlbum_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == -1 || e.RowIndex == -1) return;
            if (dataGridViewCart.Columns[e.ColumnIndex].Name == "Detail")
            {
                string productID = (string)dataGridViewCart.Rows[e.RowIndex].Cells["ProductID"].Value;
                var productDetailGUI = new ProductDetailGUI(productID, true);
                DialogResult dr = productDetailGUI.ShowDialog();
                if (dr == DialogResult.OK)
                {
                    ShoppingCartDAO.GetCart().AddToCart(productID);
                    loadData();
                    productDetailGUI.Dispose();
                }
            }
            else if (dataGridViewCart.Columns[e.ColumnIndex].Name == "Remove")
            {
                string productID = (string)dataGridViewCart.Rows[e.RowIndex].Cells["ProductID"].Value;
                ShoppingCartDAO.GetCart().RemoveFromCart(productID);
                loadData();
            }
        }

        private void CartGUI_Activated(object sender, EventArgs e)
        {
            loadData();
        }

        private void buttonCheckOut_Click(object sender, EventArgs e)
        {
            if (ShoppingCartDAO.GetCart().GetCount() == 0)
            {
                string message = "Cart is empty, let's shooping more product.";
                string title = "Checkout failed";
                MessageBoxButtons buttons = MessageBoxButtons.OK;
                MessageBox.Show(message, title, buttons);
                this.Dispose();
                return;
            }

            if (Variables.Username == null)
            {
                var loginGUI = new LoginGUI();
                DialogResult dr = loginGUI.ShowDialog();
                if (dr == DialogResult.No && Variables.Username != null)
                {
                    Variables.Username = null;
                    Variables.Role = "";
                }
            }
            else
            {
                var customer = CustomerDAO.getAllCustomers().Where(c => c.Username == Variables.Username).FirstOrDefault();
                //MessageBox.Show(customer.CustomerID);
                var checkoutGUI = new CheckoutGUI(customer);
                DialogResult dr = checkoutGUI.ShowDialog();
                if (dr == DialogResult.OK)
                {
                    this.Dispose();
                }
            }
        }
    }
}
