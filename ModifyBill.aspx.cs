using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TBSProject.Customer
{
    public partial class ModifyBill : System.Web.UI.Page
    {
        BALCustomer obj = new BALCustomer();
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList1.AutoPostBack = true;
        }


        protected void MOdifyPlanupdate_Click(object sender, EventArgs e)
        {
            int planid = Convert.ToInt32(DropDownList1.SelectedItem.ToString());
            int conid = Convert.ToInt32(TextBox1.Text);
            obj.ModifyPlan(planid, conid);
            Response.Write("<script>alert('Updated Your Plan Succesfully');</script>");
        }

       

        protected void ModifyPLanGET_Click(object sender, EventArgs e)
        {
            Label3.Visible = true;
            Label5.Visible = true;
            Label7.Visible = true;
            Label9.Visible = true;
            int planid = Convert.ToInt32(DropDownList1.SelectedItem.ToString());
            SqlDataReader dr = obj.Plangetdetails(planid);
            while (dr.Read())
            {
                Label3.Text = dr[0].ToString();
                Label5.Text = dr[1].ToString();
                Label7.Text = dr[2].ToString();
                Label9.Text = dr[3].ToString();
            }
        }
    }
}