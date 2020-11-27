using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebNotSistemi
{
    public partial class OgrenciEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.tblOgrenciTableAdapter dt = new DataSetTableAdapters.tblOgrenciTableAdapter();
            dt.OgrenciEkle(txtNumara.Text, txtOgrenciAd.Text, txtOgrenciSoyad.Text, txtOgrenciTelefon.Text, txtOgrenciMail.Text, txtOgrenciSifre.Text, txtOgrenciFoto.Text);
            Response.Redirect("Default.aspx");
        }
    }
}