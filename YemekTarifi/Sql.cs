using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace YemekTarifi
{
    public class Sql
    {
        //public static SqlConnection cnn() 
        //{
        //    SqlConnection conn = new SqlConnection(@"Data Source=MONSTER\SQLEXPRESS;Initial Catalog=Dbo_YemekTarifi;Integrated Security=True");
        //    conn.Open();
        //    return conn;
        //}

        public static SqlConnection cnn()
        {
            SqlConnection conn = new SqlConnection(@"Data Source=MONSTER\SQLEXPRESS;Initial Catalog=Dbo_YemekTarifi;Integrated Security=True");
            conn.Open();
            return conn;
        }
    }
}