using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebNotSistemi
{
    public partial class OgrenciSifreDegistir : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                txtNumara.Text = Session["numara"].ToString();
            }
        }

        protected void btnDegistir_Click(object sender, EventArgs e)
        {
            if (txtSifre1.Text == txtSifre2.Text)
            {
                DataSetTableAdapters.tblOgrenciTableAdapter dt = new DataSetTableAdapters.tblOgrenciTableAdapter();
                dt.OgrenciSifreDegistir(txtSifre2.Text, txtNumara.Text);
                Response.Redirect("OgrenciDefault.aspx?Numara=" + Session["numara"].ToString());
            }
            else
            {
                Response.Write("<script>alert('Şifrenizi Kontrol Ediniz ! ! !')</script>");
            }
        }
    }
}