using PRN292_Project.DAL;
using PRN292_Project.DTL;
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
            Variables.Username = "staff1";
            InitializeComponent();
            initDataGridView();
        }

        private void loadDataGridView()
        {
            DataTable dt = DAO.GetDataTable("SELECT [OrderID],[CustomerID],[Order_date],[Total_amount],[StaffID],[Deliver_date], " +
            "(CASE WHEN Deliver_date IS NULL THEN 'Processing' ELSE 'Shipped' END) AS Status " +
            "FROM [Orders]");
            dataGridViewOrder.DataSource = dt;
        }
        public void initDataGridView()
        {
            DataTable dt = DAO.GetDataTable("SELECT [OrderID],[CustomerID],[Order_date],[Total_amount],[StaffID],[Deliver_date], " +
            "(CASE WHEN Deliver_date IS NULL THEN 'Processing' ELSE 'Shipped' END) AS Status " +
            "FROM [Orders]");
            dataGridViewOrder.DataSource = dt;
            dataGridViewOrder.Columns["OrderID"].Visible = false;
            dataGridViewOrder.Columns["CustomerID"].Visible = false;
            dataGridViewOrder.Columns["StaffID"].Visible = false;

            /* DataGridViewButtonColumn btnDetail = new DataGridViewButtonColumn
             {
                 Name = "Deliver",
                 Text = "Deliver",
                 UseColumnTextForButtonValue = true,
                 AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
             };*/
           
            int count = dataGridViewOrder.ColumnCount;
            //dataGridViewOrder.Columns.Insert(count, deliver);
            dataGridViewOrder.Columns.Add("Deliver", "Deliver");

            for (int i = 0; i< dt.Rows.Count; i++)
            {
                DataRow row = dt.Rows[i];
                if (row["Status"].ToString().Equals("Processing"))
                {
                    DataGridViewButtonCell btn = new DataGridViewButtonCell
                    {
                        /*Name = "Deliver",
                        Text = "Deliver",*/
                        /*AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells*/
                    };
                    dataGridViewOrder.Rows[i].Cells["Deliver"] = new DataGridViewButtonCell();
                    dataGridViewOrder.Rows[i].Cells["Deliver"].Value = "SHIP NOW!!";
                }
            }
        }

        private void dataGridViewOrder_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == -1 || e.RowIndex == -1) return;

            if (dataGridViewOrder.Columns[e.ColumnIndex].Name == "Deliver")
            {
                if (dataGridViewOrder.Rows[e.RowIndex].Cells["Status"].Value.ToString() == "Processing")
                {
                    String orderID = dataGridViewOrder.Rows[e.RowIndex].Cells["OrderID"].Value.ToString();
                    Order order = OrderDAO.getAllOrders().Where(o => o.OrderID == orderID).FirstOrDefault();
                    DateTime today = DateTime.Now;
                    string staffID = StaffDAO.getAllStaffs().Where(s => s.Username == Variables.Username).FirstOrDefault().StaffID;
                    order.DeliverDate = today;
                    order.StaffID = staffID;
                    OrderDAO.Update(order);
                    loadDataGridView();
                }
            }
        }
    }
}
