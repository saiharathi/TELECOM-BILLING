using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TBSProject.Admin
{
    public partial class ModifyUser1 : System.Web.UI.Page
    {
        BALAdmin obj = new BALAdmin();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label42.Visible = true;
            Label42.Text = Session["uname"].ToString();

       }

        protected void ConfirmUpdate_onclick(object sender, EventArgs e)
        {
            string username = Label42.Text;
            int conid = Convert.ToInt32(TextBox1.Text);
            obj.UpdateConid(username, conid);
            Response.Write("<script>alert('Customer Details Updated');</script>");
        }
    }
}