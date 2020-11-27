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
    public partial class Grafikler : System.Web.UI.Page
    {
        sqlBaglantisi bag = new sqlBaglantisi();
        SqlCommand komut;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                //Dropdown liste verileri çekme
                DataSetTableAdapters.tblDerslerTableAdapter dt = new DataSetTableAdapters.tblDerslerTableAdapter();
                DropDownList.DataSource = dt.DersListesi();
                DropDownList.DataTextField = "DersAd";
                DropDownList.DataValueField = "DersID";
                DropDownList.DataBind();

                bag.baglanti();
                //ders sayısı grafiklerini çekme
                WebChartDers.Series["Dersler"].Points.Clear();
                komut = new SqlCommand("Execute GrafikDers", bag.baglanti());
                dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    WebChartDers.Series["Dersler"].Points.AddPoint(Convert.ToString(dr[0]), int.Parse(dr[1].ToString()));
                }

                //Cinsiyet Grafik veri çekme
                WebChartCinsiyet.Series["Cinsiyet"].Points.Clear();
                komut = new SqlCommand("Execute GrafikCinsiyet", bag.baglanti());
                dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    WebChartCinsiyet.Series["Cinsiyet"].Points.AddPoint(Convert.ToString(dr[0]), int.Parse(dr[1].ToString()));
                }

                //Öğretmen Branş Grafik veri çekme
                WebChartOgretmen.Series["Öğretmen"].Points.Clear();
                komut = new SqlCommand("Execute GrafikOgretmen", bag.baglanti());
                dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    WebChartOgretmen.Series["Öğretmen"].Points.AddPoint(Convert.ToString(dr[0]), int.Parse(dr[1].ToString()));
                }

                //Not öğrenci Grafik veri çekme
                WebChartNot.Series["Notlar"].Points.Clear();
                komut = new SqlCommand(" Select (tblOgrenci.OgrenciAd + ' ' + tblOgrenci.OgrenciSoyad) as 'ÖĞRENCİ', Sinav1 From tblNotlar inner join tblOgrenci on tblNotlar.OgrenciID = tblOgrenci.OgrenciID Where DersID = @DersID", bag.baglanti());
                komut.Parameters.AddWithValue("@DersID", 1);
                dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    WebChartNot.Series["Notlar"].Points.AddPoint(Convert.ToString(dr[0]), int.Parse(dr[1].ToString()));
                }

                bag.baglanti().Close();
            }
        }

        protected void DropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Not öğrenci Grafik veri çekme
            WebChartNot.Series["Notlar"].Points.Clear();
            bag.baglanti();
            komut = new SqlCommand(" Select (tblOgrenci.OgrenciAd + ' ' + tblOgrenci.OgrenciSoyad) as 'ÖĞRENCİ', Sinav1 From tblNotlar inner join tblOgrenci on tblNotlar.OgrenciID = tblOgrenci.OgrenciID Where DersID = @DersID", bag.baglanti());
            komut.Parameters.AddWithValue("@DersID", DropDownList.SelectedItem.Value);
            dr = komut.ExecuteReader();
            while (dr.Read())
            {
                WebChartNot.Series["Notlar"].Points.AddPoint(Convert.ToString(dr[0]), int.Parse(dr[1].ToString()));
            }

            bag.baglanti().Close();
        }
    }
}