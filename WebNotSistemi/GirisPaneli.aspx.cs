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
    public partial class GirisPaneli : System.Web.UI.Page
    {
        sqlBaglantisi bag = new sqlBaglantisi();
        SqlCommand komut;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnGirisYap_Click(object sender, EventArgs e)
        {
            bag.baglanti();
            komut = new SqlCommand("Select * From tblOgrenci Where Numara = @p1 and OgrenciSifre = @p2", bag.baglanti());
            komut.Parameters.AddWithValue("@p1", txtNumara.Text);
            komut.Parameters.AddWithValue("@p2", txtSifre.Text);
            dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("numara",txtNumara.Text);
                Response.Redirect("OgrenciDefault.aspx");
            }
            else
            {
                Response.Write("<script>alert('Numara Yada Şifre Hatalı')</script>");
            }
            bag.baglanti().Close();
        }

        protected void btnOgretmenGiris_Click(object sender, EventArgs e)
        {
            bag.baglanti();
            komut = new SqlCommand("Select * From tblOgretmen Where OgretmenNumara = @p1 and OgretmenSifre = @p2", bag.baglanti());
            komut.Parameters.AddWithValue("@p1", txtNumara.Text);
            komut.Parameters.AddWithValue("@p2", txtSifre.Text);
            dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("OgretmenNumara", txtNumara.Text);
                Response.Redirect("Default.aspx");
            }
            else
            {
                Response.Write("<script>alert('Numara Yada Şifre Hatalı')</script>");
            }
            bag.baglanti().Close();
        }
    }
}