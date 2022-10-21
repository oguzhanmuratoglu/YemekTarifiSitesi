using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifi
{
    public partial class KategoriDetayAdmin : System.Web.UI.Page
    {
        string ID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            ID = Request.QueryString["ID"];

            if (IsPostBack==false)
            {
                SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Kategoriler WHERE KategoriID=@p1", Sql.cnn());
                komut.Parameters.AddWithValue("@p1", ID);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    txt_kategoriadi.Text = dr[1].ToString();
                }
                Sql.cnn().Close();
            }

        }

        protected void btn_kategoridegistir_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("UPDATE Tbl_Kategoriler SET KategoriAd=@p1, KategoriFoto=@p2 WHERE KategoriID=@p3", Sql.cnn());
            komut.Parameters.AddWithValue("@p1", txt_kategoriadi.Text);
            komut.Parameters.AddWithValue("@p2", FileUpload2.FileName);
            komut.Parameters.AddWithValue("@p3", ID);
            komut.ExecuteNonQuery();
            Sql.cnn().Close();
            Response.Redirect("Kategoriler.aspx");
        }

        protected void btn_kategorisil_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("DELETE FROM Tbl_Kategoriler WHERE KategoriID=@p1", Sql.cnn());
            komut.Parameters.AddWithValue("@p1", ID);
            komut.ExecuteNonQuery();
            Sql.cnn().Close();
            Response.Redirect("Kategoriler.aspx");
        }
    }
}