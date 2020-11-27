using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebNotSistemi
{
    public partial class NotGuncelle : System.Web.UI.Page
    {
        int NotID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                try
                {
                    NotID = Math.Abs(Convert.ToInt32(Request.QueryString["NotID"].ToString()));

                    DataSetTableAdapters.OgrenciNotTableAdapter dt = new DataSetTableAdapters.OgrenciNotTableAdapter();
                    txtDersAd.Text = dt.NotGetir(NotID)[0].DersAd.ToString();
                    txtOgrenciID.Text = dt.NotGetir(NotID)[0].OgrenciID.ToString();
                    txtOgrenciAdSoyad.Text = dt.NotGetir(NotID)[0].Ogrenci_Ad.ToString();
                    txtSınav1.Text = dt.NotGetir(NotID)[0].Sinav1.ToString();
                    txtSınav2.Text = dt.NotGetir(NotID)[0].Sinav2.ToString();
                    txtSınav3.Text = dt.NotGetir(NotID)[0].Sinav3.ToString();
                    txtOrtalama.Text = dt.NotGetir(NotID)[0].Ortalama.ToString();
                    txtDurum.Text = dt.NotGetir(NotID)[0].Durum.ToString();
                }
                catch (Exception)
                {
                    NotID = 0;
                }
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            NotID = Math.Abs(Convert.ToInt32(Request.QueryString["NotID"].ToString()));

            DataSetTableAdapters.OgrenciNotTableAdapter dt = new DataSetTableAdapters.OgrenciNotTableAdapter();
            dt.NotGuncelle(byte.Parse(txtSınav1.Text), byte.Parse(txtSınav2.Text), byte.Parse(txtSınav3.Text), decimal.Parse(txtOrtalama.Text), bool.Parse(txtDurum.Text), NotID);
            Response.Redirect("NotListesi.aspx");
        }

        protected void btnHesapla_Click(object sender, EventArgs e)
        {
            double Sinav1, Sinav2, Sinav3, Ortalama;
            Sinav1 = Convert.ToDouble(txtSınav1.Text);
            Sinav2 = Convert.ToDouble(txtSınav2.Text);
            Sinav3 = Convert.ToDouble(txtSınav3.Text);
            Ortalama = (Sinav1 + Sinav2 + Sinav3) / 3;
            txtOrtalama.Text = Ortalama.ToString("0.00");
            if (Ortalama >= 50)
            {
                txtDurum.Text = "True";
            }
            else
            {
                txtDurum.Text = "False";
            }
        }

        protected void txtSınav1_TextChanged(object sender, EventArgs e)
        {
            double Sinav1, Sinav2, Sinav3, Ortalama;
            Sinav1 = Convert.ToDouble(txtSınav1.Text);
            Sinav2 = Convert.ToDouble(txtSınav2.Text);
            Sinav3 = Convert.ToDouble(txtSınav3.Text);
            Ortalama = (Sinav1 + Sinav2 + Sinav3) / 3;
            txtOrtalama.Text = Ortalama.ToString("0.00");
            if (Ortalama >= 50)
            {
                txtDurum.Text = "True";
            }
            else
            {
                txtDurum.Text = "False";
            }
        }

        protected void txtSınav2_TextChanged(object sender, EventArgs e)
        {
            double Sinav1, Sinav2, Sinav3, Ortalama;
            Sinav1 = Convert.ToDouble(txtSınav1.Text);
            Sinav2 = Convert.ToDouble(txtSınav2.Text);
            Sinav3 = Convert.ToDouble(txtSınav3.Text);
            Ortalama = (Sinav1 + Sinav2 + Sinav3) / 3;
            txtOrtalama.Text = Ortalama.ToString("0.00");
            if (Ortalama >= 50)
            {
                txtDurum.Text = "True";
            }
            else
            {
                txtDurum.Text = "False";
            }
        }

        protected void txtSınav3_TextChanged(object sender, EventArgs e)
        {
            double Sinav1, Sinav2, Sinav3, Ortalama;
            Sinav1 = Convert.ToDouble(txtSınav1.Text);
            Sinav2 = Convert.ToDouble(txtSınav2.Text);
            Sinav3 = Convert.ToDouble(txtSınav3.Text);
            Ortalama = (Sinav1 + Sinav2 + Sinav3) / 3;
            txtOrtalama.Text = Ortalama.ToString("0.00");
            if (Ortalama >= 50)
            {
                txtDurum.Text = "True";
            }
            else
            {
                txtDurum.Text = "False";
            }
        }


    }
}