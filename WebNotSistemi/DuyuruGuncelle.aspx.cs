using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebNotSistemi
{
    public partial class DuyuruGuncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Convert.ToInt32(Request.QueryString["DuyuruID"].ToString());
                DataSetTableAdapters.tblDuyurularTableAdapter dt = new DataSetTableAdapters.tblDuyurularTableAdapter();
                txtDuyuruID.Text = id.ToString();
                txtDuyuruBaslik.Text = dt.DuyuruSec(id)[0].DuyuruBaslik;
                TextArea1.Value = dt.DuyuruSec(id)[0].DuyuruIcerik;
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.tblDuyurularTableAdapter dt = new DataSetTableAdapters.tblDuyurularTableAdapter();
            dt.DuyuruGuncelle(DateTime.Today.ToString(), txtDuyuruBaslik.Text, TextArea1.Value, int.Parse(txtDuyuruID.Text));
            Response.Redirect("DuyuruListesi.aspx");
        }
    }
}