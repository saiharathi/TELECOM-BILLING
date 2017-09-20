using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TBSProject.Admin
{
    public partial class ModifyBillingPlan : System.Web.UI.Page
    {
        BALAdmin obj = new BALAdmin();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Updateplan_onclick(object sender, EventArgs e)
        {
            int planid = Convert.ToInt32(DropDownList1.SelectedItem.ToString());
            string PlanName = TextBox1.Text;
            int lfm = Convert.ToInt32(TextBox5.Text);
            int std = Convert.ToInt32(TextBox6.Text);
            float clfm = float.Parse(TextBox2.Text);
            float cstd = float.Parse(TextBox3.Text);
            obj.updateplan(planid, PlanName, lfm, std, clfm, cstd);
            Response.Write("<script>alert('The record is updated succesfully');</script>");
        }

        protected void PlanDetails_onclick(object sender, EventArgs e)
        {
            Label9.Visible = true;
            Label12.Visible = true;
            Label15.Visible = true;
            Label18.Visible = true;

            int planid = Convert.ToInt32(DropDownList1.SelectedItem.ToString());
            SqlDataReader dr = obj.modifyplangetdet(planid);
            while (dr.Read())
            {
                Label9.Text = dr[2].ToString();
                Label12.Text = dr[3].ToString();
                Label15.Text = dr[4].ToString();
                Label18.Text = dr[5].ToString();
            }
        }
    }
}