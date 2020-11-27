using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebNotSistemi
{
    public partial class OgrenciDuyuruListesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSetTableAdapters.tblDuyurularTableAdapter dt = new DataSetTableAdapters.tblDuyurularTableAdapter();
            Repeater1.DataSource = dt.OgrenciDuyuruListesi();
            Repeater1.DataBind();
        }
    }
}