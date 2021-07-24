using PRN292_Project.DAL;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PRN292_Project.GUI
{
    public partial class ManageOrderGUI : Form
    {
        public ManageOrderGUI()
        {
            InitializeComponent();
            initDataGridView();
        }
        public void initDataGridView()
        {
            DataTable dt = DAO.GetDataTable("SELECT [OrderID],[CustomerID],[Order_date],[Total_amount],[StaffID],[Deliver_date], " +
                "(case when Deliver_date IS null then 'Processing' else 'Shipped' end) as Status " +
                "FROM [Orders]");
            dataGridViewOrder.DataSource = dt;
            dataGridViewOrder.Columns["OrderID"].Visible = false;
            dataGridViewOrder.Columns["CustomerID"].Visible = false;
            dataGridViewOrder.Columns["StaffID"].Visible = false;

            DataGridViewButtonColumn btnDetail = new DataGridViewButtonColumn
            {
                Name = "Deliver",
                Text = "Deliver",
                UseColumnTextForButtonValue = true,
                AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
            };
            int count = dataGridViewOrder.ColumnCount;
            dataGridViewOrder.Columns.Insert(count, btnDetail);

            foreach (DataRow row in dt.Rows)
            {
                if (row["Status"].ToString().Equals("Shipped"))
                {
                    int index = dt.Rows.IndexOf(row);
                    var buttonCell = (DataGridViewButtonCell)dataGridViewOrder.Rows[index].Cells[count];
                    buttonCell.ReadOnly = true;
                }
            }
        }

        private void dataGridViewOrder_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == -1 || e.RowIndex == -1) return;

            if (dataGridViewOrder.Columns[e.ColumnIndex].Name == "Deliver")
            {
            }
        }
    }
}
