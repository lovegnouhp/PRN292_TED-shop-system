
namespace PRN292_Project
{
    partial class StoreGUI
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(StoreGUI));
            this.dataGridViewGenre = new System.Windows.Forms.DataGridView();
            this.dataGridViewAlbum = new System.Windows.Forms.DataGridView();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewGenre)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewAlbum)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridViewGenre
            // 
            this.dataGridViewGenre.AccessibleName = "";
            this.dataGridViewGenre.AllowUserToAddRows = false;
            this.dataGridViewGenre.AllowUserToDeleteRows = false;
            this.dataGridViewGenre.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dataGridViewGenre.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewGenre.Location = new System.Drawing.Point(12, 12);
            this.dataGridViewGenre.Name = "dataGridViewGenre";
            this.dataGridViewGenre.ReadOnly = true;
            this.dataGridViewGenre.Size = new System.Drawing.Size(240, 254);
            this.dataGridViewGenre.TabIndex = 0;
            this.dataGridViewGenre.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridViewGenre_CellClick);
            // 
            // dataGridViewAlbum
            // 
            this.dataGridViewAlbum.AccessibleName = "dataGridViewAlbum";
            this.dataGridViewAlbum.AllowUserToAddRows = false;
            this.dataGridViewAlbum.AllowUserToDeleteRows = false;
            this.dataGridViewAlbum.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dataGridViewAlbum.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewAlbum.Location = new System.Drawing.Point(12, 284);
            this.dataGridViewAlbum.Name = "dataGridViewAlbum";
            this.dataGridViewAlbum.ReadOnly = true;
            this.dataGridViewAlbum.Size = new System.Drawing.Size(744, 209);
            this.dataGridViewAlbum.TabIndex = 1;
            this.dataGridViewAlbum.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridViewAlbum_CellClick);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(271, 12);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(485, 254);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 2;
            this.pictureBox1.TabStop = false;
            // 
            // StoreGUI
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(768, 514);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.dataGridViewAlbum);
            this.Controls.Add(this.dataGridViewGenre);
            this.Name = "StoreGUI";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "StoreGUI";
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewGenre)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewAlbum)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridViewGenre;
        private System.Windows.Forms.DataGridView dataGridViewAlbum;
        private System.Windows.Forms.PictureBox pictureBox1;
    }
}