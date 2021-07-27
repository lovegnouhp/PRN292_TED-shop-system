using PRN292_Project.DAL;
using PRN292_Project.DTL;
using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PRN292_Project
{
    public partial class ImportGUI : Form
    {
        public ImportGUI()
        {
            InitializeComponent();
            initGridViewProductData();
        }
        private void initGridViewProductData()
        {
            DataTable dt = ProductDAO.getDataTable();
            dt.Columns.Add("Import quantity");
            dgvProducts.DataSource = dt;
            dgvProducts.Columns["ProductID"].Visible = false;
            dgvProducts.Columns["ProductTypeID"].Visible = false;
            dgvProducts.Columns["Produce_country"].Visible = false;
            dgvProducts.Columns["Description"].Visible = false;
            dgvProducts.Columns["User_guide"].Visible = false;
        }

        private void btnSelect_Click(object sender, EventArgs e)
        {
            DataTable table = new DataTable();
            table.Columns.Add("ProductID", typeof(string));
            table.Columns.Add("Name", typeof(string));
            table.Columns.Add("Import quantity", typeof(int));
            bool isNotAllEmpty = true;
            for (int i = 0; i < dgvProducts.Rows.Count - 1; i++)
            {
                if (!dgvProducts.Rows[i].Cells["Import quantity"].Value.ToString().Equals(""))
                {
                    try
                    {
                        int quantity = int.Parse(dgvProducts.Rows[i].Cells["Import quantity"].Value.ToString());
                        table.Rows.Add(
                            dgvProducts.Rows[i].Cells["ProductID"].Value.ToString(),
                            dgvProducts.Rows[i].Cells["Name"].Value.ToString(),
                            quantity
                            );
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show("Please enter valid quantity!");
                        return;
                    }
                }
                else
                {
                    isNotAllEmpty = false;
                }
            }
            if (isNotAllEmpty)
            {
                MessageBox.Show("Please enter valid quantity!");
                return;
            }
            dgvSelectedProducts.DataSource = table;
            dgvSelectedProducts.Columns["ProductID"].Visible = false;
        }

        private void btnImport_Click(object sender, EventArgs e)
        {
            string importID = Guid.NewGuid().ToString();  
            Import import = new Import
                {
                    ImportID = importID,
                    StaffID = StaffDAO.getAllStaffs().Where(s => s.Username == Variables.Username).FirstOrDefault().StaffID,
                    Date = DateTime.Now
                };
            int i = 1;
            foreach (DataRow row in ((DataTable)dgvSelectedProducts.DataSource).Rows)
            {
                ImportDetail detail = new ImportDetail
                {
                    ImportID = importID,
                    ImportLine = i,
                    ProductID = row["ProductID"].ToString(),
                    Quantity = int.Parse(row["Import quantity"].ToString())
                };
                import.Details.Add(detail);
                i++;
            }
            ImportDAO.Insert(import);
            MessageBox.Show("Import successfull.");
            dgvSelectedProducts.DataSource = null;
        }
    }
}
