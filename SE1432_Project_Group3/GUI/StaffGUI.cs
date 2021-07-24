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
	public partial class StaffGUI : Form
	{
		public StaffGUI()
		{
			InitializeComponent();
			loadDataGrid();
		}

		private void button1_Click(object sender, EventArgs e)
		{
			RegisterStaffGUI register = new RegisterStaffGUI();
			register.ShowDialog();
			loadDataGrid();
		}

		private void loadDataGrid()
		{
			dgvStaff.DataSource = DAO.GetDataTable("SELECT [StaffID],[Name],[Address],[Phone],[BankAccount] FROM [Staff]");
			this.dgvStaff.Columns["StaffID"].Visible = false;
		}
	}
}
