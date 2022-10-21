using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifi
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand(@"DECLARE @sayac int
            SET @sayac = (SELECT MAX (KategoriID) FROM Tbl_Kategoriler)
            WHILE(@sayac>0)
            BEGIN
            UPDATE Tbl_Kategoriler SET KategoriAdet = (SELECT COUNT (KategoriID) FROM Tbl_Yemekler WHERE KategoriID=@sayac) WHERE KategoriID= @sayac
            SELECT @sayac = @sayac-1
            END", Sql.cnn());
            komut.ExecuteNonQuery();
            Sql.cnn().Close();

        }
    }
}