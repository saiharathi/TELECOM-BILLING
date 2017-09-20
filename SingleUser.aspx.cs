using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TBSProject.Finance
{
    public partial class SingleUser : System.Web.UI.Page
    {
        BALFinance obj = new BALFinance();
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList1.AutoPostBack = true;
        }

        protected void GetDetails_Click(object sender, EventArgs e)
        {
            Label4.Visible = true;
            Label6.Visible = true;
            Label8.Visible = true;
            Label10.Visible = true;
            Label14.Visible = true;
            Label16.Visible = true;

            int conid = Convert.ToInt32(DropDownList1.SelectedItem.ToString());
            SqlDataReader dr = obj.Singleusergetdetails(conid);
            while (dr.Read())
            {
                Label4.Text = dr[0].ToString();
                Label6.Text = dr[1].ToString();
                Label8.Text = dr[2].ToString();
                Label10.Text = dr[3].ToString();
                Label14.Text = dr[4].ToString();
                Label16.Text = dr[5].ToString();


            }
        }

        protected void GenerateBill_OnClick(object sender, EventArgs e)
        {
            int conid =Convert.ToInt32( DropDownList1.SelectedItem.ToString());
            float amt = float.Parse(Label12.Text);
            obj.updateSingleuser(conid, amt);

           Response.Write("<script>alert('Generated Bill  Successfully');</script>");
        }
    
        protected void GetAmount_Click(object sender, EventArgs e)
        {

            Label4.Visible = false;
            Label6.Visible = false;
            Label8.Visible = false;
            Label10.Visible = false;
            Label14.Visible = false;
            Label16.Visible = false;

            Label11.Visible = true;
            Label12.Visible = true;

            int local = Convert.ToInt32(Label8.Text);
            int std = Convert.ToInt32(Label10.Text);
            int costlocal = Convert.ToInt32(Label14.Text);
            int coststd = Convert.ToInt32(Label16.Text);

            double localbill = local * costlocal;
            double stdbill = std * coststd;
            double Amount = localbill + stdbill;
            Label12.Text = Amount.ToString();

        }
    }
}