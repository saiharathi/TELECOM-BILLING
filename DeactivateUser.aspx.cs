using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TBSProject.Admin
{
    public partial class DeactivateUser : System.Web.UI.Page
    {
        BALAdmin obj = new BALAdmin();
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList1.AutoPostBack = true;
          
        }

        protected void Deactivateuser_onclick(object sender, EventArgs e)
        {
            string username = DropDownList1.SelectedItem.ToString();
            obj.DeleteUser(username);
            Response.Write("<script>alert('Deactivated User Success');</script>");
        }

        protected void GetAcessType_onclick(object sender, EventArgs e)
        {
            Label46.Visible = true;
            string username = DropDownList1.SelectedItem.ToString();
            SqlDataReader dr = obj.selectUser(username);
            while (dr.Read())
            {

                Label46.Text = dr[0].ToString();
            }
        }
    }
}