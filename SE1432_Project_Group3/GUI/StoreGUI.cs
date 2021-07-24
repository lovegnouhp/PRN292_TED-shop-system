using PRN292_Project.DAL;
using System;
using System.Linq;
using System.Windows.Forms;

namespace PRN292_Project
{
    public partial class StoreGUI : Form
    {
        public StoreGUI()
        {
            InitializeComponent();
            initGridViewTypeData();
            initGridViewProductData();
        }

        private void dataGridViewType_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int selectedRow = dataGridViewProductType.SelectedCells[0].RowIndex;
            string typeID = ((Guid)dataGridViewProductType.Rows[selectedRow].Cells["ProductTypeID"].Value).ToString();
            dataGridViewProduct.DataSource = ProductDAO.getProductByTypeID(typeID);
        }

        private void dataGridViewProduct_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == -1 || e.RowIndex == -1) return;
            if (dataGridViewProduct.Columns[e.ColumnIndex].Name == "Detail")
            {
                string productID = ((Guid)dataGridViewProduct.Rows[e.RowIndex].Cells["ProductID"].Value).ToString();
                DialogResult dr = new ProductDetailGUI(productID, true).ShowDialog();
                if (dr == DialogResult.OK)
                {
                    ShoppingCartDAO.GetCart().AddToCart(productID);
                    CartGUI cartGUI = new CartGUI();
                    cartGUI.ShowDialog();
                }
            }
        }

        private void initGridViewTypeData()
        {
            dataGridViewProductType.DataSource = TypeDAO.getDataTable();
            dataGridViewProductType.Columns["ProductTypeID"].Visible = false;
            dataGridViewProductType.Columns["Type_name"].Visible = true;
            dataGridViewProductType.Rows[0].Selected = true;
        }

        private void initGridViewProductData()
        {
            string selectedTypeID = ((Guid)dataGridViewProductType.Rows[0].Cells[0].Value).ToString();
            initDataGridDetailButton();
            dataGridViewProduct.DataSource = ProductDAO.getProductByTypeID(selectedTypeID);
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
    }
}
