using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebNotSistemi
{
    public partial class OgrenciGidenMesaj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSetTableAdapters.tblMesajlarTableAdapter dt = new DataSetTableAdapters.tblMesajlarTableAdapter();
            Repeater1.DataSource = dt.OgrenciGidenKutusu(Session["numara"].ToString());
            Repeater1.DataBind();
        }
    }
}