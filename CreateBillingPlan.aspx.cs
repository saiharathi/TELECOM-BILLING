using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TBSProject.Admin
{
    public partial class CreateBillingPlan : System.Web.UI.Page
    {
        BALAdmin obj = new BALAdmin();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void createplan_onclick(object sender, EventArgs e)
        {
            string planname = TextBox5.Text;
            int localmin = Convert.ToInt32(TextBox2.Text);
            int stdmin = Convert.ToInt32(TextBox1.Text);
            float costlocal = float.Parse(TextBox3.Text);
            float costStd = float.Parse(TextBox4.Text);
            string planstatus = DropDownList1.SelectedItem.ToString();
            obj.createplan(planname, localmin, stdmin, costlocal, costStd, planstatus);
            Response.Write("<script>alert('Plan created Sucessfully');</script>");
        }
    }
}