using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TBSProject.Admin
{
    public partial class CreateUser : System.Web.UI.Page
    {
        BALAdmin obj = new BALAdmin();
        protected void Page_Load(object sender, EventArgs e)
        {
                
        }

        protected void CreateUserNext_onclick(object sender, EventArgs e)
        {
            string uname = TextBox9.Text;
            string password = TextBox10.Text;
            string acces = DropDownList1.SelectedItem.ToString();
            string status = DropDownList2.SelectedItem.ToString();
           
            obj.InsertUser(uname, password, acces, status);

            Session["uname"] = TextBox9.Text;
            if(status=="Customer")
            {
                Response.Redirect("CreateUser1.aspx");

            }
            else
            {
                Response.Write("<script>alert('User Created Successfully');</script>");
            }
           

          
        }
    }
}