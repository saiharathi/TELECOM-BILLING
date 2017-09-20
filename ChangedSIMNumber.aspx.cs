using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TBSProject.Backend
{
    public partial class ChangedSIMNumber : System.Web.UI.Page
    {
        DALBackend obj = new DALBackend();
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList1.AutoPostBack = true;

        }

        protected void ChangeSIMNo_onclick(object sender, EventArgs e)
        {
            Label4.Visible = true;
            Label6.Visible = true;
            Label8.Visible = true;
            Label10.Visible = true;


            try
            {
                int conid = Convert.ToInt32(DropDownList1.SelectedItem.ToString());
                SqlDataReader dr = obj.SimGetDetails(conid);

                while (dr.Read())
                {
                    Label4.Text = dr[0].ToString();
                    Label6.Text = dr[1].ToString();
                    Label8.Text = dr[2].ToString();
                    Label10.Text = dr[3].ToString();

                }
            }
            catch (Exception e1)
            {
                Response.Write(e1.Message);
            }
            Response.Write("see the details");

        }

        protected void ChangeSim(object sender, EventArgs e)
        {
            int conid = Convert.ToInt32(DropDownList1.SelectedItem.Value);
            string Simno = TextBox1.Text;
            obj.ChangeSimno(conid, Simno);
            Response.Write("<script>alert('Simnumber Updated Successfully');</script>");
          

        }
    }
    }
