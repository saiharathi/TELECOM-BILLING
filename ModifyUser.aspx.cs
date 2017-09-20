using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TBSProject.Admin
{
    public partial class ModifyUser : System.Web.UI.Page
    {
        BALAdmin obj = new BALAdmin();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Modifyuser_Onclick(object sender, EventArgs e)
        {
            string uname = DropDownList1.SelectedItem.ToString();
            string password = TextBox15.Text;
            string acces = DropDownList2.SelectedItem.ToString();
            string status = DropDownList3.SelectedItem.ToString();
            
            obj.ModifyUser(uname, password, acces, status);
            Session["uname"] = DropDownList1.SelectedItem.ToString();
            if (acces=="Customer")
            {
                Response.Redirect("ModifyUser1.aspx");

            }
            else
            {
                Response.Write("<script>alert('Modified User Success');</script>");
            }
        }
    }
}