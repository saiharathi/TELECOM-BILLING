using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TBSProject.Backend
{
    public partial class Backend : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Sigout(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }
    }
}