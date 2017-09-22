using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TBSProject.Customer
{
    public partial class Call1 : System.Web.UI.Page
    {

        static int s = 0, m = 0, h = 0, a = 0;
        BALCustomer obj = new BALCustomer();
        private static DateTime startTime;
       
       
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Visible = true;
            Label1.Visible = true;
            Label4.Visible = true;
            Label5.Visible = true;

            Label2.Text = Session["ConnectionID"].ToString();
            Label4.Text = Session["MyNumber"].ToString();
            Label5.Text = Session["EnterNumber"].ToString();
            Label11.Text = Session["status"].ToString();

           

        }

        protected void Localstart_click(object sender, ImageClickEventArgs e)
        {
            a = 1;
            startTime = DateTime.Now;
            ImageButton2.Visible = true;
            ImageButton1.Visible = true;
           
        }

        protected void LocalEnd_call(object sender, ImageClickEventArgs e)
        {
            a = 0;
            s = 0;
            m = 0;
            h = 0;
            TimeSpan interval = DateTime.Now - startTime;

       
            ImageButton2.Visible = false;
            int d = Convert.ToInt32(interval.TotalSeconds);
            Label1.Visible = true;

            string simnumber = Label4.Text;
            DateTime start = Convert.ToDateTime(Label1.Text);
            DateTime end = Convert.ToDateTime(Label1.Text);
            string status = Label11.Text;
            string duration = d.ToString();
            int conid = Convert.ToInt32(Label2.Text);
            obj.insertCallmaster(simnumber, start, end, status, duration, conid);
            Response.Write("<script>alert('The call duration was:  " + duration + " seconds');</script>");
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            if (s == 59)
            {
                s= 0;
                if (m == 59)
                {
                    m = 0;
                    if (h == 23)
                        h = 0;
                    else
                        h += 1*a;
                }
                else
                    m += 1*a ;
            }
            else
                s+= 1*a;
            Label1.Text = h.ToString() + ":" + m.ToString() + ":" + s.ToString();

        }
    }
}
   