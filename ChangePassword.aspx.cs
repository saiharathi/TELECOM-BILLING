using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TBSProject.Admin
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        BALAdmin obj = new BALAdmin();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Changepassword_onclick(object sender, EventArgs e)
        {
            string username = DropDownList1.SelectedItem.ToString();
            string password = TextBox18.Text;
            obj.Changepassword(username, password);
            Response.Write("<script>alert('password changed sucessfully');</script>");
        }

        protected void ChangePassword_onClick(object sender, EventArgs e)
        {
            Label1.Visible = true;
            Label2.Visible = true;
            string username = DropDownList1.SelectedItem.ToString();
            string password = Label1.Text;
            string acess = Label2.Text;
            SqlDataReader dr = obj.ChangePasswordSelect(username, password, acess);
            while (dr.Read())
            {

                Label1.Text = dr[0].ToString();
                Label2.Text = dr[1].ToString();
            }
        }
    }
}