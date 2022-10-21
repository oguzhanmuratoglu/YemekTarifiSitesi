using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifi
{
    public partial class OneriDetayAdmin : System.Web.UI.Page
    {
        string ID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            ID = Request.QueryString["ID"];

            SqlCommand cmd = new SqlCommand("SELECT * FROM Tbl_Tarifler WHERE TarifID=@P1", Sql.cnn());
            cmd.Parameters.AddWithValue("@P1", ID);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                lbl_sahip.Text = dr[5].ToString();
                lbl_mail.Text = dr[6].ToString();
                txt_yemekadi.Text = dr[1].ToString();
                txt_malzemeler.Text = dr[2].ToString();
                txt_tarif.Text = dr[3].ToString();
                Image1.ImageUrl = dr[4].ToString();
            }
            Sql.cnn().Close();
        }

        protected void btn_yemekekle_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO Tbl_Yemekler (YemekAd, YemekMalzeme, YemekTarif, YemekFoto, YemekVideo, KategoriID, YemekMalzemeKısa) VALUES (@p1,@p2,@p3,@p4,@p5,@p6,@p7)", Sql.cnn());
            cmd.Parameters.AddWithValue("@p1", txt_yemekadi.Text);
            cmd.Parameters.AddWithValue("@p2", txt_malzemeler.Text);
            cmd.Parameters.AddWithValue("@p3", txt_tarif.Text);
            cmd.Parameters.AddWithValue("@p4", Image1.ImageUrl);
            cmd.Parameters.AddWithValue("@p5", txt_yemekvideo.Text);
            cmd.Parameters.AddWithValue("@p6", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@p7", txt_kısa.Text);
            cmd.ExecuteNonQuery();
            Sql.cnn().Close();

        }
    }
}