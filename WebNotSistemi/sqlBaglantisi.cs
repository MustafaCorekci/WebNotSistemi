using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace WebNotSistemi
{
    public class sqlBaglantisi
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-MN3O9G6\SQLEXPRESS;Initial Catalog=dbOkulSite;User ID=sa;Password=m10zxcvb");
            baglan.Open();
            return baglan;
        }

    }
}