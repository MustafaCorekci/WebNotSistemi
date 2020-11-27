using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebNotSistemi
{
    public partial class DersSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            byte id = Convert.ToByte(Request.QueryString["DersID"].ToString());

            DataSetTableAdapters.tblDerslerTableAdapter dt = new DataSetTableAdapters.tblDerslerTableAdapter();
            dt.DersSil(id);
            Response.Redirect("DersListesi.aspx");
        }
    }
}