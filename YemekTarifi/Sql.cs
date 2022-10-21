using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace YemekTarifi
{
    public class Sql
    {
        

        public static SqlConnection cnn()
        {
            SqlConnection conn = new SqlConnection("workstation id=YemekTarifi.mssql.somee.com;packet size=4096;user id=oguzhan14_SQLLogin_1;pwd=8w7qjb9quv;data source=YemekTarifi14.mssql.somee.com;persist security info=False;initial catalog=YemekTarifi");
            conn.Open();
            return conn;
        }
    }
}
