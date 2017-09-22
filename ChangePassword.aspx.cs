using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TBSProject.Customer
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        BALCustomer obj = new BALCustomer();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Visible = true;
            Label3.Text = Session["Username"].ToString();
        }

        protected void ChangePassword_onclick(object sender, EventArgs e)
        {
            string username = Label3.Text;
            string password = TextBox2.Text;
            obj.ChangepassCustomer(username, password);
            Response.Write("<script>alert('Password changed Sucessfully');</script>");
        }
    }
}