using PRN292_Project.DAL;
using System;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace PRN292_Project.GUI
{
    public partial class ReportGUI : Form
    {
        public ReportGUI()
        {
            InitializeComponent();
            BindGrid1();
            dataGridViewOrder.DataSource = DAO.GetDataTable("select o.OrderID,o.Total_amount-ip.ImportPrice as Profit,[CustomerID],[Order_date],[StaffID],[Deliver_date]  " +
                "from (SELECT  sum(od.Quantity * p.Price)  as ImportPrice,od.OrderID  FROM [Order_details] od join Product p on p.ProductID = od.ProductID group by od.OrderID) " +
                "as ip join Orders o on ip.OrderID = o.OrderID");
        }

        private void MonthCalendar1_DateSelected(object sender, DateRangeEventArgs e)
        {
            BindGrid1();
        }

        //display all orders between startDate & endDate in dataGridViewOrder
        private void BindGrid1()
        {
            try
            {
                DateTime startDate = monthCalendar1.SelectionStart;
                DateTime endDate = monthCalendar1.SelectionEnd;
                SqlCommand cmd = new SqlCommand("select o.OrderID,o.Total_amount-ip.ImportPrice as Profit,[CustomerID],[Order_date],[StaffID],[Deliver_date]  " +
                "from (SELECT  sum(od.Quantity * p.Price)  as ImportPrice,od.OrderID  FROM [Order_details] od join Product p on p.ProductID = od.ProductID group by od.OrderID) " +
                "as ip join Orders o on ip.OrderID = o.OrderID WHERE Order_date BETWEEN @startDate AND @endDate");
                cmd.Parameters.AddWithValue("@startDate", startDate);
                cmd.Parameters.AddWithValue("@endDate", endDate);

                //data -> dataGridViewOrder
                dataGridViewOrder.DataSource = DAO.GetDataTable(cmd);
                dataGridViewOrderDetail.DataSource = null;

                //startDate, endDate -> textBox
                txtFrom.Text = monthCalendar1.SelectionStart.ToString("dd/MM/yyyy");
                txtTo.Text = monthCalendar1.SelectionEnd.ToString("dd/MM/yyyy");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void DataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                //get index of selected row
                int rowIndex = e.RowIndex;
                if (rowIndex == -1) return;

                //get OrderDetails of Order in selected row
                string orderID = dataGridViewOrder.Rows[rowIndex].Cells["OrderID"].Value.ToString();
                SqlCommand cmd = new SqlCommand("SELECT [OrderID],[OrderLine],[Quantity],[ProductID]FROM [Order_details] where [OrderID] =@OrderId");
                cmd.Parameters.AddWithValue("@OrderId", orderID);

                DateTime orderDate = DateTime.Parse(dataGridViewOrder.Rows[rowIndex].Cells["Order_date"].Value.ToString());
                txtFrom.Text = orderDate.ToString("dd/MM/yyyy");
                txtTo.Text = orderDate.ToString("dd/MM/yyyy");

                //data -> dataGridView
                dataGridViewOrderDetail.DataSource = DAO.GetDataTable(cmd);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
