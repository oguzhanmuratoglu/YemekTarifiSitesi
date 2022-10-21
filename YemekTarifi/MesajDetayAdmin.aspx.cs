using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifi
{
    public partial class MesajDetayAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ID = Request.QueryString["ID"];

            if (IsPostBack==false)
            {

            
            SqlCommand cmd = new SqlCommand("SELECT * FROM Tbl_Mesajlar WHERE MesajID=@p1", Sql.cnn());
            cmd.Parameters.AddWithValue("@p1", ID);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                lbl_adi.Text = dr[1].ToString();
                lbl_konu.Text = dr[2].ToString();
                lbl_mail.Text = dr[3].ToString();
                lbl_icerik.Text = dr[4].ToString();
                
            }
            Sql.cnn().Close();
            }

        }

        protected void btn_mesajsil_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM Tbl_Mesajlar WHERE MesajID=@p1", Sql.cnn());
            cmd.Parameters.AddWithValue("@p1", ID);
            cmd.ExecuteNonQuery();
            Sql.cnn().Close();
        }
    }
}