using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TBSProject.Backend
{
    public partial class CancelConnection : System.Web.UI.Page
    {
        BALBackend obj = new BALBackend();
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList1.AutoPostBack = true;
        }
       

        protected void Cancel_onclick(object sender, EventArgs e)
        {
            Label4.Visible = true;
            Label6.Visible = true;
            Label8.Visible = true;
            Label10.Visible = true;

            Label15.Visible = true;
            Label12.Visible = true;

            try
            {
                int conid = Convert.ToInt32(DropDownList1.SelectedItem.ToString());
              SqlDataReader dr = obj.DelselectConId(conid);
                while (dr.Read())
                {
                    Label4.Text = dr[0].ToString();
                    Label6.Text = dr[1].ToString();
                    Label8.Text = dr[3].ToString();
                    Label10.Text = dr[7].ToString();

                    Label15.Text = dr[4].ToString();
                    Label12.Text = dr[5].ToString();
                }
            }
            catch (Exception e1)
            {
                Response.Write(e1.Message);
            }
            Response.Write("see the details");
        }

        protected void CancelClick(object sender, EventArgs e)
        {
            int conid = Convert.ToInt32(DropDownList1.SelectedItem.Value);
            obj.deletecondata(conid);
            Response.Write("<script>alert('Recorded Deleted Successfully');</script>");

        }
    }
}



