using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifi
{
    public partial class YemekDetayAdmin : System.Web.UI.Page
    {
        string ID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            ID = Request.QueryString["ID"];
            if (IsPostBack==false)
            {

            SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Yemekler WHERE YemekID=@p1", Sql.cnn());
            komut.Parameters.AddWithValue("@p1", ID);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                txt_yemekadi.Text = dr[1].ToString();
                txt_malzemeler.Text = dr[2].ToString();
                txt_malzemekısa.Text = dr[3].ToString();
                txt_tarif.Text = dr[4].ToString();
                Image1.ImageUrl = dr[5].ToString();
                txt_video.Text = dr[8].ToString();
                DDL_1.Text = dr[9].ToString();
            }
            Sql.cnn().Close();

            }

        }

        protected void btn_yemegiguncelle_Click(object sender, EventArgs e)
        {

            SqlCommand komut = new SqlCommand("UPDATE Tbl_Yemekler SET YemekAd=@p1, YemekMalzeme=@p2, YemekTarif=@p3, YemekFoto=@p4, KategoriID=@p5, YemekMalzemeKısa=@p6, YemekVideo=@p7 WHERE YemekID=@p8", Sql.cnn());
            komut.Parameters.AddWithValue("@p1", txt_yemekadi.Text);
            komut.Parameters.AddWithValue("@p2", txt_malzemeler.Text);
            komut.Parameters.AddWithValue("@p3", txt_tarif.Text);
            if (FileUpload1.FileName == "")
            {
                komut.Parameters.AddWithValue("@p4", Image1.ImageUrl);

            }
            else
            {
                FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));
                komut.Parameters.AddWithValue("@p4", "/resimler/" + FileUpload1.FileName);
            }
            komut.Parameters.AddWithValue("@p5", DDL_1.SelectedValue);
            komut.Parameters.AddWithValue("@p6", txt_malzemekısa.Text);
            komut.Parameters.AddWithValue("@p7", txt_video.Text);
            komut.Parameters.AddWithValue("@p8", ID);
            komut.ExecuteNonQuery();
            Sql.cnn().Close();
            Response.Redirect("YemeklerAdmin.aspx");

        }

        protected void btn_yemegisil_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("DELETE FROM Tbl_Yemekler WHERE YemekID=@p1", Sql.cnn());
            komut.Parameters.AddWithValue("@p1", ID);
            komut.ExecuteNonQuery();
            Sql.cnn().Close();
            Response.Redirect("YemeklerAdmin.aspx");

        }
    }
}