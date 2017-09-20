using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TBSProject.Finance
{
    public partial class AllUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GenerateBill_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Generated Bill For All Users Successfully');</script>");
        }
    }
}