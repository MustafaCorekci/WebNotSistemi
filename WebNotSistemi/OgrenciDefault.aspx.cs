using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebNotSistemi
{
    public partial class OgrenciDefault : System.Web.UI.Page
    {
        string numara;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                try
                {
                    numara = Session["numara"].ToString();
                    DataSetTableAdapters.tblOgrenciTableAdapter dt = new DataSetTableAdapters.tblOgrenciTableAdapter();

                    txtNumara.Text = "Numara\t :\t " + numara;
                    txtAdSoyad.Text = "Ad Soyad\t :\t " + dt.OgrenciPaneliGetir(numara)[0].OgrenciAd + " " + dt.OgrenciPaneliGetir(numara)[0].OgrenciSoyad;
                    txtMail.Text = "Mail\t\t :\t " + dt.OgrenciPaneliGetir(numara)[0].OgrenciMail;
                    txtTelefon.Text = "Telefon\t\t :\t " + dt.OgrenciPaneliGetir(numara)[0].OgrenciTelefon;
                    txtSifre.Text = "Şifre\t\t :\t " + dt.OgrenciPaneliGetir(numara)[0].OgrenciSifre;
                    txtFotograf.Text = "Fotoğraf \t :\t " + dt.OgrenciPaneliGetir(numara)[0].OgrenciFotograf;
                }
                catch (Exception)
                {

                }
            }
        }

        protected void btnSifreDegistir_Click(object sender, EventArgs e)
        {
            Response.Redirect("OgrenciSifreDegistir.aspx?Numara=" + Session["numara"].ToString());
        }
    }
}