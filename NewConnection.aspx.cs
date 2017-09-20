using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TBSProject.Backend
{
    public partial class NewConnection : System.Web.UI.Page
    {
        BALBackend obj = new BALBackend();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Confirm_Click(object sender, EventArgs e)
        {
          
            string simnum = TextBox2.Text;
            string Name = TextBox3.Text;
            DateTime DOB = Convert.ToDateTime(TextBox4.Text);
            int PlanID = Convert.ToInt32(DropDownList1.SelectedItem.Value);
            String Address = TextBox5.Text;
            string ContactNumber = TextBox1.Text;
            string mobileno = TextBox7.Text;
            string idproof = TextBox6.Text;
            obj.NewConnection(simnum, Name, DOB, PlanID, Address, ContactNumber, mobileno, idproof);


            Response.Write("<script>alert('Created Connection for User Successfully');</script>");


        }
    }
}