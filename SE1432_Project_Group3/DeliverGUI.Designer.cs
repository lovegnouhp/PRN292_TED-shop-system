
namespace PRN292_Project
{
	partial class DeliverGUI
	{
		/// <summary>
		/// Required designer variable.
		/// </summary>
		private System.ComponentModel.IContainer components = null;

		/// <summary>
		/// Clean up any resources being used.
		/// </summary>
		/// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
		protected override void Dispose(bool disposing)
		{
			if (disposing && (components != null))
			{
				components.Dispose();
			}
			base.Dispose(disposing);
		}

		#region Windows Form Designer generated code

		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{
			this.dataGridViewOrders = new System.Windows.Forms.DataGridView();
			((System.ComponentModel.ISupportInitialize)(this.dataGridViewOrders)).BeginInit();
			this.SuspendLayout();
			// 
			// dataGridViewOrders
			// 
			this.dataGridViewOrders.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
			this.dataGridViewOrders.Location = new System.Drawing.Point(23, 25);
			this.dataGridViewOrders.Name = "dataGridViewOrders";
			this.dataGridViewOrders.RowHeadersWidth = 51;
			this.dataGridViewOrders.RowTemplate.Height = 24;
			this.dataGridViewOrders.Size = new System.Drawing.Size(741, 336);
			this.dataGridViewOrders.TabIndex = 0;
			// 
			// DeliverGUI
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(862, 401);
			this.Controls.Add(this.dataGridViewOrders);
			this.Name = "DeliverGUI";
			this.Text = "DeliverGUI";
			((System.ComponentModel.ISupportInitialize)(this.dataGridViewOrders)).EndInit();
			this.ResumeLayout(false);

		}

		#endregion

		private System.Windows.Forms.DataGridView dataGridViewOrders;
	}
}