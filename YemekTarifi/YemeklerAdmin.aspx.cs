using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifi
{
    public partial class YemeklerAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            

        }

        protected void btn_yemekekle_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));

            SqlCommand komut = new SqlCommand("INSERT INTO Tbl_Yemekler (YemekAd, YemekMalzeme, YemekMalzemeKısa, YemekTarif, YemekFoto, YemekVideo, KategoriID) VALUES (@p1, @p2, @p3, @p4, @p5, @p6, @p7)", Sql.cnn());
            komut.Parameters.AddWithValue("@p1", txt_yemekadı.Text);
            komut.Parameters.AddWithValue("@p2",txt_yemekmalzeme.Text);
            komut.Parameters.AddWithValue("@p3", txt_malzemekısa.Text);
            komut.Parameters.AddWithValue("@p4", txt_yemektarif.Text);
            komut.Parameters.AddWithValue("@p5", "/resimler/" + FileUpload1.FileName);
            komut.Parameters.AddWithValue("@p6", txt_video.Text);
            komut.Parameters.AddWithValue("@p7", DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
            Sql.cnn().Close();
            Response.Redirect("Admin.aspx");
        }


    }
}