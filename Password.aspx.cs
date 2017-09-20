using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TBSProject.Finance
{
    public partial class Password : System.Web.UI.Page
    {
       
        BALFinance obj = new BALFinance();
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList1.AutoPostBack = true;
        }

        protected void Confirm_Cllick(object sender, EventArgs e)
        {
            string username = DropDownList1.SelectedItem.ToString();
            string password = TextBox3.Text;
            obj.ChangepassFinance(username, password);
            Response.Write("<script>alert('Password changed  successfully');</script>");
        }

        protected void Username_Click(object sender, EventArgs e)
        {
            Label6.Visible = true;

            string username = DropDownList1.SelectedItem.ToString();
            SqlDataReader dr = obj.Passgetdetails(username);
            while (dr.Read())
            {

                Label6.Text = dr[0].ToString();

            }
        }
    }
}