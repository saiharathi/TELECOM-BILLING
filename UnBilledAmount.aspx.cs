using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TBSProject.Customer
{
    public partial class UnBilledAmount : System.Web.UI.Page
    {
        BALCustomer obj = new BALCustomer();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label5.Text = Session["MobileNumber"].ToString();
            Label3.Visible = true;
            Label7.Visible = true;
            Label9.Visible = true;
            Label11.Visible = true;
            Label13.Visible = true;
            Label5.Visible = true;


            string mobile = Label5.Text;
            SqlDataReader dr = obj.Unbilled(mobile);
            while (dr.Read())
            {

                Label3.Text = dr[0].ToString();
                Label7.Text = dr[1].ToString();
                Label9.Text = dr[2].ToString();
                Label11.Text = dr[3].ToString();
                Label13.Text = dr[4].ToString();

            }
        }
    }
}