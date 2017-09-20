using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TBSProject.Finance
{
    public class DALFinance
    {
        public static SqlConnection con;
        public static SqlCommand cmd;
        public static SqlDataReader dr;

        private static SqlConnection getcon()
        {
            con = new SqlConnection("data source=(local);initial catalog=TBS1;integrated security=true");
            con.Open();
            return con;
        }

      /*  public SqlDataReader getBillDetails(int conid)
        {
            SqlDataReader dr;
            con = getcon();
            //cmd = new SqlCommand("select MobileNumber,PlanID,UsedLocalMin,UsedSTDMin from CustomerMaster join CallDurationMaster on CustomerMaster.ConnectionID = CallDurationMaster.ConnectionID where CustomerMaster.ConnectionID = @conid", con);
            cmd = new SqlCommand("getdetails");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@conid", conid);
            dr = cmd.ExecuteReader();
            return dr;
        }*/
        public SqlDataReader Singleusergetdetails(int conid)
        {
            SqlDataReader dr;
            con = getcon();
          //  cmd = new SqlCommand("select   a.MobileNumber,a.Planid,c.UsedLocalMin,c.UsedSTDMin,b.CostOfLocalMinute,b.CostOfSTDMinute From CustomerMaster a, BillingPlanMaster b, CallDurationMaster c Where a.ConnectionID = c.ConnectionID And a.PlanID = b.PlanID Group By  a.MobileNumber, a.Planid, c.UsedLocalMin, c.UsedSTDMin, b.CostOfLocalMinute, b.CostOfSTDMinute, a.ConnectionID having  a.ConnectionID = @connid", con);
            cmd = new SqlCommand("singleuserbill");
           cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@connid", conid);
            dr = cmd.ExecuteReader();
            return dr;
        }
        public void updateSingleuser(int conid,float amt)
        {
            con = getcon();

           // cmd = new SqlCommand("update CallDurationMaster Set Amount=@amt,PaymentAmount=@amt where ConnectionId=@conid", con);
             cmd = new SqlCommand("UpdateSingleuserbill");
             cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@conid",conid);
            cmd.Parameters.AddWithValue("@amt",amt);
            cmd.ExecuteNonQuery();
        }


        public SqlDataReader Passgetdetails(string username)
        {
            SqlDataReader dr;
            con = getcon();
            cmd = new SqlCommand("select AcessType from UserMaster where UserName=@username", con);
            //cmd = new SqlCommand("ChangePassSelect");
            //cmd.CommandType = CommandType.StoredProcedure;
            // cmd.Connection = con;
            cmd.Parameters.AddWithValue("@username", username);

            dr = cmd.ExecuteReader();
            return dr;
        }
        public void ChangepassFinance(string username, string password)
        {
            con = getcon();

            cmd = new SqlCommand("update UserMaster set Password=@password where UserName=@username", con);
            // cmd = new SqlCommand("confirmpass");
            //cmd.CommandType = CommandType.StoredProcedure;
            // cmd.Connection = con;
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.ExecuteNonQuery();
        }
       

    }
}
