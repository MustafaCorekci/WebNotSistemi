using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebNotSistemi
{
    public partial class DersEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.tblDerslerTableAdapter dt = new DataSetTableAdapters.tblDerslerTableAdapter();
            dt.DersEkle(txtDers.Text);
            Response.Redirect("DersListesi.aspx");
        }
    }
}