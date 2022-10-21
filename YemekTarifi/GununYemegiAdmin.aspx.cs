using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifi
{
    public partial class GununYemegiAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd2 = new SqlCommand("DELETE FROM Tbl_GYBaslangıc WHERE GYBaslangıcDurum='True'", Sql.cnn());
            cmd2.ExecuteNonQuery();
            Sql.cnn().Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd2 = new SqlCommand("DELETE FROM Tbl_GYKahvaltı WHERE GYKahvaltıDurum='True'", Sql.cnn());
            cmd2.ExecuteNonQuery();
            Sql.cnn().Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand cmd2 = new SqlCommand("DELETE FROM Tbl_GYOgleYemegi WHERE GYOgleYemegiDurum='True'", Sql.cnn());
            cmd2.ExecuteNonQuery();
            Sql.cnn().Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlCommand cmd2 = new SqlCommand("DELETE FROM Tbl_GYAksamYemegi WHERE GYAksamYemegiDurum='True'", Sql.cnn());
            cmd2.ExecuteNonQuery();
            Sql.cnn().Close();
        }
    }
}