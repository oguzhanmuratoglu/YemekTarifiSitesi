using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi
{
    public partial class AnaSayfa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));

            SqlCommand komut = new SqlCommand("INSERT INTO Tbl_Tarifler (TarifSahip, TarifSahipMail, TarifAd, TarifMalzeme, TarifFoto, TarifYapılıs) VALUES (@P1, @P2, @P3, @P4, @P5, @P6)", Sql.cnn());
            komut.Parameters.AddWithValue("@P1", txt_ad.Text);
            komut.Parameters.AddWithValue("@P2", txt_email.Text);
            komut.Parameters.AddWithValue("@P3", txt_tarifad.Text);
            komut.Parameters.AddWithValue("@P4", txt_gereklimalzemeler.Text);
            komut.Parameters.AddWithValue("@P5", "/resimler/" + FileUpload1.FileName);
            komut.Parameters.AddWithValue("@P6", txt_hazırlanıs.Text);
            komut.ExecuteNonQuery();
            Sql.cnn().Close();
            Response.Write("<script>alert('Tarifiniz Alınmıştır. Teşekkür Ederiz:)')</script>");
            
        }

    
    }
}