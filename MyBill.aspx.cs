using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TBSProject.Customer
{
    public partial class MyBill : System.Web.UI.Page
    {
        BALCustomer obj = new BALCustomer();
        protected void Page_Load(object sender, EventArgs e)
        {

            Label2.Visible = true;
            Label2.Text = Session["ConnectionId"].ToString();

       
            Label6.Visible = true;
            Label8.Visible = true;
            Label10.Visible = true;
            Label4.Visible = true;


            int connid = Convert.ToInt32(Label2.Text);


            SqlDataReader dr = obj.CustomerMyBill(connid);
            while (dr.Read())
            {


                Label4.Text = dr[0].ToString();
                Label6.Text = dr[1].ToString();
                Label8.Text = dr[2].ToString();
                Label10.Text = dr[3].ToString();



            }
        }
    }
}