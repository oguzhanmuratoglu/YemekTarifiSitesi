using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi
{
    public partial class Iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("INSERT INTO Tbl_Mesajlar (MesajGonderen, MesajBaslık, MesajMail, MesajIcerik) VALUES (@p1, @p2, @p3, @p4)", Sql.cnn());
            komut.Parameters.AddWithValue("@p1", name.Text);
            komut.Parameters.AddWithValue("@p2", subject.Text);
            komut.Parameters.AddWithValue("@p3", email.Text);
            komut.Parameters.AddWithValue("@p4", message.Text);
            komut.ExecuteNonQuery();
            Sql.cnn().Close();
            Response.Write("<script>alert('Öneri Talebiniz Alınmıştır. Hassasiyetiniz için Teşekkür Ederiz!')</script>");
        }

    }
}