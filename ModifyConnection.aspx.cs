using System;
using System.Collections.Generic;
using System.Data.SqlClient;

using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TBSProject.Backend
{
    public partial class ModifyConnection : System.Web.UI.Page
    {
        BALBackend obj = new BALBackend();
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList1.AutoPostBack = true;
        }

        protected void ModifyClick(object sender, EventArgs e)
        {
            int conid = Convert.ToInt32(DropDownList1.SelectedItem.Value);
            int PlanID = Convert.ToInt32(DropDownList2.SelectedItem.Value);
            string Address = TextBox1.Text;
            string Contactnum = TextBox2.Text;
            obj.Modifycondata(conid, PlanID, Address, Contactnum);
            Response.Write("<script>alert('record updated Successfully');</script>");


        }

        protected void ModifySelect_onclick(object sender, EventArgs e)
        {
            Label4.Visible = true;
            Label6.Visible = true;
            Label8.Visible = true;
            Label10.Visible = true;
            Label13.Visible = true;
            Label15.Visible = true;
            Label18.Visible = true;

            try
            {
                
                int conid = Convert.ToInt32(DropDownList1.SelectedItem.ToString());
                SqlDataReader dr = obj.SelectConIdpar(conid);

                while (dr.Read())
                {
                    Label4.Text = dr[1].ToString();
                    Label6.Text = dr[2].ToString();
                    Label8.Text = dr[3].ToString();
                    Label10.Text = dr[7].ToString();
                    Label13.Text = dr[6].ToString();
                    Label15.Text = dr[4].ToString();
                    Label18.Text = dr[5].ToString();
                }
            }
            catch (Exception e1)
            {
                Response.Write(e1.Message);
            }
            Response.Write("see the details");
        }

    
}
}
