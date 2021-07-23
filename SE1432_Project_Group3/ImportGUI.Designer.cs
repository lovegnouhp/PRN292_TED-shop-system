
namespace PRN292_Project
{
	partial class ImportGUI
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
			this.dataGridViewImports = new System.Windows.Forms.DataGridView();
			this.btnImport = new System.Windows.Forms.Button();
			((System.ComponentModel.ISupportInitialize)(this.dataGridViewImports)).BeginInit();
			this.SuspendLayout();
			// 
			// dataGridViewImports
			// 
			this.dataGridViewImports.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
			this.dataGridViewImports.Location = new System.Drawing.Point(38, 30);
			this.dataGridViewImports.Name = "dataGridViewImports";
			this.dataGridViewImports.RowHeadersWidth = 51;
			this.dataGridViewImports.RowTemplate.Height = 24;
			this.dataGridViewImports.Size = new System.Drawing.Size(594, 338);
			this.dataGridViewImports.TabIndex = 0;
			// 
			// btnImport
			// 
			this.btnImport.Location = new System.Drawing.Point(688, 334);
			this.btnImport.Name = "btnImport";
			this.btnImport.Size = new System.Drawing.Size(106, 34);
			this.btnImport.TabIndex = 1;
			this.btnImport.Text = "Import";
			this.btnImport.UseVisualStyleBackColor = true;
			// 
			// ImportGUI
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(825, 404);
			this.Controls.Add(this.btnImport);
			this.Controls.Add(this.dataGridViewImports);
			this.Name = "ImportGUI";
			this.Text = "Import";
			((System.ComponentModel.ISupportInitialize)(this.dataGridViewImports)).EndInit();
			this.ResumeLayout(false);

		}

		#endregion

		private System.Windows.Forms.DataGridView dataGridViewImports;
		private System.Windows.Forms.Button btnImport;
	}
}