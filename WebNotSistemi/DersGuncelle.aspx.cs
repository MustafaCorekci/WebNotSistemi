using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebNotSistemi
{
    public partial class DersGuncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Convert.ToInt32(Request.QueryString["DersID"].ToString());
                DataSetTableAdapters.tblDerslerTableAdapter dt = new DataSetTableAdapters.tblDerslerTableAdapter();
                txtDersID.Text = id.ToString();
                txtDersAd.Text = dt.DersGetir(byte.Parse(id.ToString()))[0].DersAd;
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.tblDerslerTableAdapter dt = new DataSetTableAdapters.tblDerslerTableAdapter();
            dt.DersGuncelle(txtDersAd.Text, byte.Parse(txtDersID.Text));
            Response.Redirect("DersListesi.aspx");
        }
    }
}