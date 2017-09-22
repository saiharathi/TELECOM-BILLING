using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TBSProject.Customer
{
    public partial class ViewProfile : System.Web.UI.Page
    {
        BALCustomer obj = new BALCustomer();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label16.Visible = true;
            Label16.Text = Session["Username"].ToString();

            Label16.Visible = true;
            Label10.Visible = true;
            Label11.Visible = true;
            Label12.Visible = true;
            Label13.Visible = true;
            Label14.Visible = true;
            Label17.Visible = true;
            Label9.Visible = true;

            string username = Label16.Text;
            SqlDataReader dr = obj.CustomerViewProfile(username);
            while (dr.Read())
            {
                Label9.Text = dr[0].ToString();
                Label16.Text = dr[1].ToString();
                Label10.Text = dr[2].ToString();
                Label11.Text = dr[3].ToString();
                Label12.Text = dr[4].ToString();
                Label17.Text = dr[5].ToString();
                Label13.Text = dr[6].ToString();
                Label14.Text = dr[7].ToString();

            }
            Session["ConnectionID"] = Label9.Text;
            Session["MobileNumber"] = Label10.Text;
        }
    }
}