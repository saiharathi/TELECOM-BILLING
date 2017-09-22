using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TBSProject.Customer
{
    public partial class BillPayment : System.Web.UI.Page
    {
        BALCustomer obj = new BALCustomer();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label4.Text = Session["MobileNumber"].ToString();

            Label4.Visible = true;
            Label2.Visible = true;
            Label6.Visible = true;
            Label8.Visible = true;
            Label10.Visible = true;
            Label12.Visible = true;
            Label14.Visible = true;
            Label16.Visible = true;
            string mobilenumber = Label4.Text;
            SqlDataReader dr = obj.CusBillPayment(mobilenumber);
            while (dr.Read())
            {
                Label2.Text = dr[0].ToString();
                Label6.Text = dr[1].ToString();
                Label8.Text = dr[2].ToString();
                Label10.Text = dr[3].ToString();
                Label12.Text = dr[4].ToString();
                Label14.Text = dr[5].ToString();
                Label16.Text = dr[6].ToString();
            }
        }

        protected void Payment_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Payment Success');</script>");
        }
    }
}