using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TBSProject
{
    public partial class Login : System.Web.UI.Page
    {
        public static SqlConnection con;
        public static SqlCommand cmd;
        public static SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private static SqlConnection getcon()
        {
            con = new SqlConnection("data source=(local);initial catalog=TBS1;integrated security=true");
            con.Open();
            return con;
        }

        protected void SignIn_Click(object sender, EventArgs e)
        {
            Session["Username"] = TextBox1.Text;
            try
            {
                string uid = TextBox1.Text;
                string pass = TextBox2.Text;

                con = getcon();
                string qry = "select * from UserMaster where UserName='" + uid + "' and Password='" + pass + "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    string type1 = (string)sdr["AcessType"];
                    Console.WriteLine(sdr.ToString());
                    if (type1 == "Admin")
                    {
                        Response.Redirect("~/Admin/Admin.aspx");
                    }
                    else if (type1 == "Finance")
                    {
                        Response.Redirect("~/Finance/Finance.aspx");
                    }
                    else if (type1 == "Customer")
                    {


                        Response.Redirect("~/Customer/Customer.aspx");
                    }
                    else if(type1=="BackEnd")
                    {
                        Response.Redirect("~/Backend/Backend.aspx");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Incorrect Username or Password');</script>");
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}
   
