using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifi
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_kategoriekle_Click(object sender, EventArgs e) 
        {
            SqlCommand komut = new SqlCommand("INSERT INTO Tbl_Kategoriler (KategoriAd, KategoriFoto) VALUES (@p1, @p2)", Sql.cnn());
            komut.Parameters.AddWithValue("@p1", txt_kategoriadı.Text);
            komut.Parameters.AddWithValue("@p2", FileUpload1.FileName);
            komut.ExecuteNonQuery();
            Sql.cnn().Close();
            Response.Redirect("Admin.aspx");
            
        }

        
    }
}