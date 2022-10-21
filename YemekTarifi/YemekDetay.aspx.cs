using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi
{
    public partial class YemekDetay : System.Web.UI.Page
    {

        string ID = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            ID = Request.QueryString["ID"];
        }

        protected void btn_yorumyap_Click(object sender, EventArgs e)
        {
            
                SqlCommand komut = new SqlCommand("INSERT INTO Tbl_Yorumlar (YorumAdSoyad, YorumMail, YorumIcerik, YemekID) VALUES (@p1, @p2, @p3, @p4)", Sql.cnn());
                komut.Parameters.AddWithValue("@p1", txt_name.Text);
                komut.Parameters.AddWithValue("@p2", txt_email.Text);
                komut.Parameters.AddWithValue("@p3", txt_message.Text);
                komut.Parameters.AddWithValue("@p4", ID);
                komut.ExecuteNonQuery();
                Sql.cnn().Close();
                Response.Write("<script>alert('Yorumunuz Alınmıştır.Teşekkür Ederiz!')</script>");



        }
    }
}