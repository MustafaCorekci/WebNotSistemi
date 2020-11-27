using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebNotSistemi
{
    public partial class DuyuruEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                DataSetTableAdapters.tblOgretmenTableAdapter dt = new DataSetTableAdapters.tblOgretmenTableAdapter();
                DropDownList1.DataSource = dt.OgretmenListesi();
                DropDownList1.DataTextField = "OgretmenAdSoyad";
                DropDownList1.DataValueField = "OgretmenID";
                DropDownList1.DataBind();
            }
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.tblDuyurularTableAdapter dt = new DataSetTableAdapters.tblDuyurularTableAdapter();
            dt.DuyuruEkle(DateTime.Today.ToString(),txtDuyuruBaslik.Text, TextArea1.Value.ToString(), int.Parse(DropDownList1.SelectedValue));
            Response.Redirect("DuyuruListesi.aspx");
        }
    }
}