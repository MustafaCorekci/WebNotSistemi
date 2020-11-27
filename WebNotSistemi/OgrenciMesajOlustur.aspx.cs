using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebNotSistemi
{
    public partial class OgrenciMesajOlustur : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtGonderen.Text = Session["numara"].ToString();
        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.tblMesajlarTableAdapter dt = new DataSetTableAdapters.tblMesajlarTableAdapter();
            dt.MesajGonder(DateTime.Today.ToString(), txtGonderen.Text, txtAlici.Text, txtMesajBaslik.Text, txtMesajIcerik.Value);
            Response.Redirect("OgrenciGidenMesaj.aspx");
        }
    }
}