using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebNotSistemi
{
    public partial class Istatistikler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            sqlBaglantisi bag = new sqlBaglantisi();
            SqlCommand komut;
            SqlDataReader dr;

            bag.baglanti();
            
            //Toplam Öğrenci sayısını çekme
            komut = new SqlCommand("Select count(*) From tblOgrenci ", bag.baglanti());
            dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Textbox1.Text = "Toplam Öğrenci Sayısı \t\t\t\t\t\t\t\t\t\t : \t\t" + dr[0].ToString();
            }

            //Toplam Öğretmen sayısını çekme
            komut = new SqlCommand("Select count(*) From tblOgretmen ", bag.baglanti());
            dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Textbox2.Text = "Toplam Öğretmen Sayısı \t\t\t\t\t\t\t\t\t : \t\t" + dr[0].ToString();
            }

            //Toplam Ders sayısını çekme
            komut = new SqlCommand("Select count(*) From tblDersler ", bag.baglanti());
            dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Textbox3.Text = "Toplam Ders Sayısı \t\t\t\t\t\t\t\t\t\t\t : \t\t" + dr[0].ToString();
            }


            //1.Sınavda Dil Anlatım Dersinde En Yüksek Alan Öğrenci
            komut = new SqlCommand("Select tblOgrenci.OgrenciAd + ' ' + tblOgrenci.OgrenciSoyad as 'Ad Soyad' From tblNotlar inner join tblOgrenci on tblNotlar.OgrenciID = tblOgrenci.OgrenciID Where Sinav1 = (Select max(Sinav1) From tblNotlar Where tblNotlar.DersID = 1) ", bag.baglanti());
            dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Textbox4.Text = "1.Sınavda Dil Anlatım Dersinde En Yüksek Alan Öğrenci \t\t : \t\t" + dr[0].ToString();
            }
            //1.Sınav Dil Anlatım Dersinin Not Ortalaması
            komut = new SqlCommand("Select AVG(Sinav1) From tblNotlar Where DersID = 1", bag.baglanti());
            dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Textbox5.Text = "1.Sınav Dil Anlatım Dersinin Not Ortalaması \t\t\t\t\t : \t\t" + dr[0].ToString();
            }


            //1.Sınavda Matematik Dersinde En Yüksek Alan Öğrenci
            komut = new SqlCommand("Select tblOgrenci.OgrenciAd + ' ' + tblOgrenci.OgrenciSoyad as 'Ad Soyad' From tblNotlar inner join tblOgrenci on tblNotlar.OgrenciID = tblOgrenci.OgrenciID Where Sinav1 = (Select max(Sinav1) From tblNotlar Where tblNotlar.DersID = 2) ", bag.baglanti());
            dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Textbox6.Text = "1.Sınavda Matematik Dersinde En Yüksek Alan Öğrenci \t\t : \t\t" + dr[0].ToString();
            }
            //1.Sınav Matematik Dersinin Not Ortalaması
            komut = new SqlCommand("Select AVG(Sinav1) From tblNotlar Where DersID = 2", bag.baglanti());
            dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Textbox7.Text = "1.Sınav Matematik Dersinin Not Ortalaması \t\t\t\t\t : \t\t" + dr[0].ToString();
            }


            //1.Sınavda Edebiyat Dersinde En Yüksek Alan Öğrenci
            komut = new SqlCommand("Select tblOgrenci.OgrenciAd + ' ' + tblOgrenci.OgrenciSoyad as 'Ad Soyad' From tblNotlar inner join tblOgrenci on tblNotlar.OgrenciID = tblOgrenci.OgrenciID Where Sinav1 = (Select max(Sinav1) From tblNotlar Where tblNotlar.DersID = 3) ", bag.baglanti());
            dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Textbox8.Text = "1.Sınavda Edebiyat Dersinde En Yüksek Alan Öğrenci \t\t : \t\t" + dr[0].ToString();
            }
            //1.Sınav Edebiyat Dersinin Not Ortalaması
            komut = new SqlCommand("Select AVG(Sinav1) From tblNotlar Where DersID = 3", bag.baglanti());
            dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Textbox9.Text = "1.Sınav Edebiyat Dersinin Not Ortalaması \t\t\t\t\t : \t\t" + dr[0].ToString();
            }


            //1.Sınavda Fizik Dersinde En Yüksek Alan Öğrenci
            komut = new SqlCommand("Select tblOgrenci.OgrenciAd + ' ' + tblOgrenci.OgrenciSoyad as 'Ad Soyad' From tblNotlar inner join tblOgrenci on tblNotlar.OgrenciID = tblOgrenci.OgrenciID Where Sinav1 = (Select max(Sinav1) From tblNotlar Where tblNotlar.DersID = 4) ", bag.baglanti());
            dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Textbox10.Text = "1.Sınavda Fizik Dersinde En Yüksek Alan Öğrenci \t\t\t\t : \t\t" + dr[0].ToString();
            }
            //1.Sınav Fizik Dersinin Not Ortalaması
            komut = new SqlCommand("Select AVG(Sinav1) From tblNotlar Where DersID = 4", bag.baglanti());
            dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Textbox11.Text = "1.Sınav Fizik Dersinin Not Ortalaması \t\t\t\t\t\t\t : \t\t" + dr[0].ToString();
            }


            //1.Sınavda Kimya Dersinde En Yüksek Alan Öğrenci
            komut = new SqlCommand("Select tblOgrenci.OgrenciAd + ' ' + tblOgrenci.OgrenciSoyad as 'Ad Soyad' From tblNotlar inner join tblOgrenci on tblNotlar.OgrenciID = tblOgrenci.OgrenciID Where Sinav1 = (Select max(Sinav1) From tblNotlar Where tblNotlar.DersID = 5) ", bag.baglanti());
            dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Textbox12.Text = "1.Sınavda Kimya Dersinde En Yüksek Alan Öğrenci \t\t\t : \t\t" + dr[0].ToString();
            }
            //1.Sınav Fizik Dersinin Not Ortalaması
            komut = new SqlCommand("Select AVG(Sinav1) From tblNotlar Where DersID = 5", bag.baglanti());
            dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Textbox13.Text = "1.Sınav Kimya Dersinin Not Ortalaması \t\t\t\t\t\t : \t\t" + dr[0].ToString();
            }

            bag.baglanti().Close();
        }
    }
}