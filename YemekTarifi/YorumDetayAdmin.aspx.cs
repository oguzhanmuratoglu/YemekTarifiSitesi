using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifi
{
    public partial class YorumDetayAdmin : System.Web.UI.Page
    {
        string ID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            ID = Request.QueryString["ID"];

            if (IsPostBack==false)
            {

            SqlCommand komut = new SqlCommand("SELECT YorumAdSoyad, YorumMail, YorumIcerik, YemekAd FROM Tbl_Yorumlar INNER JOIN Tbl_Yemekler ON Tbl_Yemekler.YemekID=Tbl_Yorumlar.YemekID WHERE YorumID=@p1", Sql.cnn());
            komut.Parameters.AddWithValue("@p1", ID);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                txt_yorumadi.Text = dr[0].ToString();
                lbl_mail.Text = dr[1].ToString();
                txt_icerik.Text = dr[2].ToString();
                lbl_yemekad.Text = dr[3].ToString();
            }
            Sql.cnn().Close();
            }
        }


        protected void btn_yorumonayla_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("UPDATE Tbl_Yorumlar SET YorumAdSoyad=@p1, YorumIcerik=@p2, YorumOnay=@p3 WHERE YorumID=@p4", Sql.cnn());
            komut.Parameters.AddWithValue("@p1", txt_yorumadi.Text);
            komut.Parameters.AddWithValue("@p2", txt_icerik.Text);
            komut.Parameters.AddWithValue("@p3", "True");
            komut.Parameters.AddWithValue("@p4", ID);
            komut.ExecuteNonQuery();
            Sql.cnn().Close();
            Response.Redirect("Admin.aspx");
        }

        protected void btn_yorumpasiflestir_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("UPDATE Tbl_Yorumlar SET YorumOnay=@p1 WHERE YorumID=@p2", Sql.cnn());
            komut.Parameters.AddWithValue("@p1", "False");
            komut.Parameters.AddWithValue("@p2", ID);
            komut.ExecuteNonQuery();
            Sql.cnn().Close();
            Response.Redirect("Admin.aspx");
            
        }

        protected void btn_yorumsil_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("DELETE FROM Tbl_Yorumlar WHERE YorumID=@p1", Sql.cnn());
            komut.Parameters.AddWithValue("@p1", ID);
            komut.ExecuteNonQuery();
            Sql.cnn().Close();
            Response.Redirect("Admin.aspx");

        }

        
    }
}