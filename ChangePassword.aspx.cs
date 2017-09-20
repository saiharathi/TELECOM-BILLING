using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TBSProject.Backend
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        BALBackend obj = new BALBackend();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Visible = true;
            Label5.Visible = true;
            Label9.Visible = true;

            Label3.Text = Session["Username"].ToString();


            try
            {
                string Username = Label3.Text;
                //string pass = Label5.Text;
                //string Access = Label9.Text;
                SqlDataReader dr = obj.ChangePasswordDetails(Username);
                while (dr.Read())
                {
                    Label3.Text = dr[0].ToString();
                    Label5.Text = dr[1].ToString();
                    Label9.Text = dr[2].ToString();

                }
            }
            catch (Exception e1)
            {
                Response.Write(e1.Message);
            }

        }



        protected void PasswordUpdate_onclick(object sender, EventArgs e)
        {
            string Username = Label3.Text;
            string Password = TextBox1.Text;

            obj.ChangePasswordUpdate(Username, Password);
            Response.Write("<script>alert('Password changed Successfully');</script>");

        }
    }
}
