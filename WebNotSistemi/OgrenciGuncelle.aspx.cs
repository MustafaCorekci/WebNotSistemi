using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebNotSistemi
{
    public partial class OgrenciGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                try
                {
                    DataSetTableAdapters.tblOgrenciTableAdapter dt = new DataSetTableAdapters.tblOgrenciTableAdapter();
                    int id = Convert.ToInt32(Request.QueryString["OgrenciID"].ToString());
                    txtOgrenciID.Text = id.ToString();
                    txtOgrenciAd.Text = dt.OgrenciSec(id)[0].OgrenciAd;
                    txtOgrenciSoyad.Text = dt.OgrenciSec(id)[0].OgrenciSoyad;
                    txtOgrenciTelefon.Text = dt.OgrenciSec(id)[0].OgrenciTelefon;
                    txtOgrenciMail.Text = dt.OgrenciSec(id)[0].OgrenciMail;
                    txtOgrenciSifre.Text = dt.OgrenciSec(id)[0].OgrenciSifre;
                    txtOgrenciFoto.Text = dt.OgrenciSec(id)[0].OgrenciFotograf;
                }
                catch (Exception)
                {
                    txtOgrenciFoto.Text = "Link Girin";
                }
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.tblOgrenciTableAdapter dt = new DataSetTableAdapters.tblOgrenciTableAdapter();
            dt.OgrenciGuncelle(txtOgrenciAd.Text, txtOgrenciSoyad.Text, txtOgrenciTelefon.Text, txtOgrenciMail.Text, txtOgrenciSifre.Text, txtOgrenciFoto.Text, int.Parse(txtOgrenciID.Text));
            Response.Redirect("Default.aspx");
        }
    }
}