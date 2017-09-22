using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TBSProject.Customer
{
    public partial class Call : System.Web.UI.Page
    {
        BALCustomer obj = new BALCustomer();
        protected void Page_Load(object sender, EventArgs e)
        {
          
           TextBox1.Text = Session["MobileNumber"].ToString();
        }

       

        protected void Call_click(object sender, EventArgs e)
        {

            Label5.Text = Session["ConnectionID"].ToString();
            Session["MyNumber"] = TextBox1.Text;
            Session["EnterNumber"] = TextBox2.Text;
            Session["status"] = DropDownList1.SelectedItem.ToString();
          
            string status = DropDownList1.SelectedItem.ToString();
          
        
            if (status == "Local")
            {
                Response.Redirect("Call1.aspx");

            }
            else
            {
                Response.Redirect("Call2.aspx");
            }

        }

        protected void DropDownList1_CallingDataMethods(object sender, CallingDataMethodsEventArgs e)
        {
           
           
        }
    }
}