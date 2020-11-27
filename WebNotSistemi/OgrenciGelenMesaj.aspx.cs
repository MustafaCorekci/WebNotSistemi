using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebNotSistemi
{
    public partial class OgrenciGelenMesaj1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //DataSetTableAdapters.tblMesajlarTableAdapter dt = new DataSetTableAdapters.tblMesajlarTableAdapter();
            //Repeater1.DataSource = dt.OgrenciGelenKutusu1(Session["numara"].ToString());
            //Repeater1.DataBind();

            sqlBaglantisi bag = new sqlBaglantisi();
            SqlCommand komut = new SqlCommand("Select (OgrenciAd +' '+ OgrenciSoyad) as 'Gonderen',Baslik,Icerik,Tarih From tblMesajlar inner join tblOgrenci on tblMesajlar.Gonderen = tblOgrenci.Numara where Alici = @Alici", bag.baglanti());
            komut.Parameters.AddWithValue("@Alici", Session["numara"].ToString());
            SqlDataAdapter da = new SqlDataAdapter(komut);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
    }
}