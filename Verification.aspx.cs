using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TBSProject.Backend
{
    public partial class Verification : System.Web.UI.Page
    {
        BALBackend obj = new BALBackend();
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList1.AutoPostBack = true;

        }

        protected void Status_Click(object sender, EventArgs e)
        {
            int conid = Convert.ToInt32(DropDownList1.SelectedItem.Value);
            string status = DropDownList2.SelectedItem.Value;
            obj.verificationmodify(conid, status);
            Response.Write("<script>alert('Status Changed Successfully');</script>");


        }

        protected void Verification__onclick(object sender, EventArgs e)
        {
            Label4.Visible = true;
            Label6.Visible = true;
            Label9.Visible = true;

            try
            {
                int conid = Convert.ToInt32(DropDownList1.SelectedItem.ToString());
                SqlDataReader dr = obj.verfication(conid);

                while (dr.Read())
                {

                    Label4.Text = dr[0].ToString();
                    Label6.Text = dr[1].ToString();
                    Label9.Text = dr[2].ToString();
                    DropDownList2.Text = dr[3].ToString();


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
