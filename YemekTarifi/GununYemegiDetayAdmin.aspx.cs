using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifi
{
    public partial class GununYemegiDetayAdmin : System.Web.UI.Page
    {
        string ID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            ID = Request.QueryString["ID"];
            

                SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Yemekler WHERE YemekID=@p1", Sql.cnn());
                komut.Parameters.AddWithValue("@p1", ID);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    txt_yemekadi.Text = dr[1].ToString();
                    txt_malzemeler.Text = dr[2].ToString();
                    lbl_gerekli.Text = dr[3].ToString();
                    txt_tarif.Text = dr[4].ToString();
                    Image1.ImageUrl = dr[5].ToString();
                }
                Sql.cnn().Close();

            

        
    }

        protected void btn_baslangıc_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("INSERT INTO Tbl_GYBaslangıc (GYBaslangıcAd, GYBaslangıcMalzeme, GYBaslangıcTarif, GYBaslangıcFoto, GYBaslangıcDurum, YemekID) VALUES (@p1, @p2, @p3, @p4, 'True', @p5)", Sql.cnn());
            cmd.Parameters.AddWithValue("@p1", txt_yemekadi.Text);
            cmd.Parameters.AddWithValue("@p2", lbl_gerekli.Text);
            cmd.Parameters.AddWithValue("@p3", txt_tarif.Text);
            cmd.Parameters.AddWithValue("@p4", Image1.ImageUrl);
            cmd.Parameters.AddWithValue("@p5", ID);
            cmd.ExecuteNonQuery();
            Sql.cnn().Close();
            Response.Redirect("GununYemegiAdmin.aspx");
        }

        protected void btn_kahvaltı_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO Tbl_GYKahvaltı (GYKahvaltıAd, GYKahvaltıMalzeme, GYKahvaltıTarif, GYKahvaltıFoto, GYKahvaltıDurum, YemekID) VALUES (@p1, @p2, @p3, @p4, 'True', @p5)", Sql.cnn());
            cmd.Parameters.AddWithValue("@p1", txt_yemekadi.Text);
            cmd.Parameters.AddWithValue("@p2", lbl_gerekli.Text);
            cmd.Parameters.AddWithValue("@p3", txt_tarif.Text);
            cmd.Parameters.AddWithValue("@p4", Image1.ImageUrl);
            cmd.Parameters.AddWithValue("@p5", ID);
            cmd.ExecuteNonQuery();
            Sql.cnn().Close();
            Response.Redirect("GununYemegiAdmin.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO Tbl_GYOgleYemegi (GYOgleYemegiAd, GYOgleYemegiMalzeme, GYOgleYemegiTarif, GYOgleYemegiFoto, GYOgleYemegiDurum, YemekID) VALUES (@p1, @p2, @p3, @p4, 'True', @p5)", Sql.cnn());
            cmd.Parameters.AddWithValue("@p1", txt_yemekadi.Text);
            cmd.Parameters.AddWithValue("@p2", lbl_gerekli.Text);
            cmd.Parameters.AddWithValue("@p3", txt_tarif.Text);
            cmd.Parameters.AddWithValue("@p4", Image1.ImageUrl);
            cmd.Parameters.AddWithValue("@p5", ID);
            cmd.ExecuteNonQuery();
            Sql.cnn().Close();
            Response.Redirect("GununYemegiAdmin.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO Tbl_GYAksamYemegi (GYAksamYemegiAd, GYAksamYemegiMalzeme, GYAksamYemegiTarif, GYAksamYemegiFoto, GYAksamYemegiDurum, YemekID) VALUES (@p1, @p2, @p3, @p4, 'True', @p5)", Sql.cnn());
            cmd.Parameters.AddWithValue("@p1", txt_yemekadi.Text);
            cmd.Parameters.AddWithValue("@p2", lbl_gerekli.Text);
            cmd.Parameters.AddWithValue("@p3", txt_tarif.Text);
            cmd.Parameters.AddWithValue("@p4", Image1.ImageUrl);
            cmd.Parameters.AddWithValue("@p5", ID);
            cmd.ExecuteNonQuery();
            Sql.cnn().Close();
            Response.Redirect("GununYemegiAdmin.aspx");
        }
    }
}