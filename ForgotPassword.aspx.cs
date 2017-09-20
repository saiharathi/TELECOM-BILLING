using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TBSProject
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SendPassword_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Password Sent Succesfully');</script>");
        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}