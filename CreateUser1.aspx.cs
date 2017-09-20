using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TBSProject.Admin
{
    public partial class CreateUser1 : System.Web.UI.Page
    {
        BALAdmin obj = new BALAdmin();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label34.Visible = true;
            Label34.Text = Session["uname"].ToString();
           
         
        }

        protected void CreateConfirm_onclick(object sender, EventArgs e)
        {
           
            string username = Label34.Text;
            int connid = Convert.ToInt32(TextBox1.Text);
            obj.UpdateConid(username, connid);
            
            Response.Write("<script>alert('User Created Successfully');</script>");
           
        }
        }
    }
