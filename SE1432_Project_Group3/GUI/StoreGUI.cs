using System.Windows.Forms;

namespace PRN292_Project
{
    public partial class StoreGUI : Form
    {
        public StoreGUI()
        {
            InitializeComponent();
            initGridViewGenreData();
            initGridViewAlbumData();
        }

        private void dataGridViewGenre_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            //int selectedRow = dataGridViewGenre.SelectedCells[0].RowIndex;
            //int genreID = (int)dataGridViewGenre.Rows[selectedRow].Cells["GenreId"].Value;
            //dataGridViewAlbum.DataSource = AlbumDAO.GetAlbumsByGenreID(genreID);
        }

        private void dataGridViewAlbum_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            //if (e.ColumnIndex == -1 || e.RowIndex == -1) return;
            //if (dataGridViewAlbum.Columns[e.ColumnIndex].Name == "Detail")
            //{
            //    int albumID = (int)dataGridViewAlbum.Rows[e.RowIndex].Cells["AlbumId"].Value;
            //    var albumDetail = new AlbumDetailGUI(albumID);
            //    DialogResult dr = albumDetail.ShowDialog();
            //    if (dr == DialogResult.OK)
            //    {
            //        ShoppingCartDAO.GetCart().AddToCart(albumID);
            //        CartGUI cartGUI = new CartGUI();
            //        cartGUI.ShowDialog();
            //    }
            //}
        }

        private void initGridViewGenreData()
        {
            //dataGridViewGenre.DataSource = GenreDAO.GetDataTable();
            //dataGridViewGenre.Columns["GenreId"].Visible = false;
            //dataGridViewGenre.Columns["Description"].Visible = false;
            //dataGridViewGenre.Rows[0].Selected = true;
        }

        private void initGridViewAlbumData()
        {
            //int selectedGenreID = (int)dataGridViewGenre.Rows[0].Cells[0].Value;
            //initDataGridDetailButton();
            //dataGridViewAlbum.DataSource = AlbumDAO.GetAlbumsByGenreID(selectedGenreID);
        }

        private void initDataGridDetailButton()
        {
            DataGridViewButtonColumn btnDetail = new DataGridViewButtonColumn
            {
                Name = "Detail",
                Text = "Detail",
                UseColumnTextForButtonValue = true
            };
            dataGridViewAlbum.Columns.Insert(0, btnDetail);
        }
    }
}
