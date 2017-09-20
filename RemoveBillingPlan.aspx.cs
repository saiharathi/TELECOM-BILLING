using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TBSProject.Admin
{
    public partial class RemoveBillingPlan : System.Web.UI.Page
    {
        BALAdmin obj = new BALAdmin();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DeletePlan_onclick(object sender, EventArgs e)
        {
            int planid = Convert.ToInt32(DropDownList1.SelectedItem.ToString());
            obj.deleteplandata(planid);
            Response.Write("<script>alert('The record is deleted succesfully');</script>");


        }

        protected void RemoveBillPlan_onClick(object sender, EventArgs e)
        {
            Label2.Visible = true;
            Label24.Visible = true;
            Label22.Visible = true;
            Label26.Visible = true;
            Label28.Visible = true;

            int planid = Convert.ToInt32(DropDownList1.SelectedItem.ToString());
            SqlDataReader dr = obj.Delplanselect(planid);
            while (dr.Read())
            {
                Label2.Text = dr[1].ToString();
                Label24.Text = dr[2].ToString();
                Label22.Text = dr[3].ToString();
                Label26.Text = dr[4].ToString();
                Label28.Text = dr[5].ToString();


            }
        }
    }
}