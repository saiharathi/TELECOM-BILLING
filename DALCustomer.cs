using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TBSProject.Customer
{
    public class DALCustomer
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
        public SqlDataReader CustomerViewProfile(string username)
        {
            SqlDataReader dr;
            con = getcon();
            cmd = new SqlCommand("select UserMaster.ConnectionID,UserName,MobileNumber,SIMNumber,Name,Address,ContactNumber,PlanID from CustomerMaster join UserMaster on CustomerMaster.ConnectionID = UserMaster.ConnectionID where  UserName=@username", con);
            // cmd = new SqlCommand("CustomerDetails");
            // cmd.CommandType = CommandType.StoredProcedure;
            // cmd.Connection = con;
            cmd.Parameters.AddWithValue("@username", username);
            dr = cmd.ExecuteReader();
            return dr;
        }
        public void ChangepassCustomer(string username, string password)
        {
            con = getcon();

            // cmd = new SqlCommand("update UserMaster set Password=@password where UserName=@username",con);
            cmd = new SqlCommand("CustChangepass");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.ExecuteNonQuery();
        }
        public SqlDataReader CustomerMyBill(int connid)
        {
            SqlDataReader dr;
            con = getcon();
            cmd = new SqlCommand("select MobileNumber,UsedLocalMin,UsedSTDMin,Amount from CustomerMaster join CallDurationMaster on CustomerMaster.ConnectionID = CallDurationMaster.ConnectionID where CustomerMaster.ConnectionID = @connid", con);
            // cmd = new SqlCommand("customermybill");
            //  cmd.CommandType = CommandType.StoredProcedure;
            //  cmd.Connection = con;
            cmd.Parameters.AddWithValue("@connid", connid);
            dr = cmd.ExecuteReader();
            return dr;
        }
        public SqlDataReader CusBillPayment(string mobile)
        {
            SqlDataReader dr;
            con = getcon();
            //cmd = new SqlCommand("select CustomerMaster.ConnectionID,MobileNumber,UsedLocalMin,UsedSTDMin,Amount,AccountNumber,PaymentAmount,LastDateOfBillPayment from CustomerMaster join CallDurationMaster on CustomerMaster.ConnectionID = CallDurationMaster.ConnectionID where MobileNumber = @mobile", con);
            cmd = new SqlCommand("CustomerBillPayment");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@mobile", mobile);
            dr = cmd.ExecuteReader();
            return dr;
        }

        public SqlDataReader Plangetdetails(int planid)
        {
            SqlDataReader dr;
            con = getcon();
            // cmd = new SqlCommand("select LocalFreeMinutes,STDFreeMinutes,CostOfLocalMinute,CostOfSTDMinute from BillingPlanMaster where PlanID=@planid", con);
            cmd = new SqlCommand("SelectBillingPlan");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@planid", planid);
            dr = cmd.ExecuteReader();
            return dr;
        }
        public void ModifyPlan(int planid, int conid)
        {
            con = getcon();

            // cmd = new SqlCommand("update CustomerMaster set PlanID=@Planid where PlanID in(Select PlanID from CustomerMaster where ConnectionID=@conid",con);
            cmd = new SqlCommand("ModifyBillingPlan");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@planid", planid);
            cmd.Parameters.AddWithValue("@conid", conid);
            cmd.ExecuteNonQuery();
        }
        public SqlDataReader Unbilled(string mobile)
        {
            SqlDataReader dr;
            con = getcon();
            // cmd = new SqlCommand("select CustomerMaster.ConnectionID,UsedLocalMin,UsedSTDMin,LastDateOfBillPayment,Amount from CustomerMaster join CallDurationMaster on CustomerMaster.ConnectionID = CallDurationMaster.ConnectionID where MobileNumber = @mobile", con);
            cmd = new SqlCommand("CustomerUnbill");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@mobile", mobile);
            dr = cmd.ExecuteReader();
            return dr;
        }

        public void insertcalldetails(string local, int conid)
        {
            con = getcon();
            cmd = new SqlCommand("  update CallMaster set CallDuration=@local where ConnectionID=@conid", con);
            cmd.Parameters.AddWithValue("@local", local);
            cmd.Parameters.AddWithValue("@conid", conid);
            cmd.ExecuteNonQuery();
        }
        public void insertCallmaster(string simnum,DateTime start,DateTime stop,string status,string duration,int conid)
        {
            con = getcon();
            cmd = new SqlCommand(" insert into CallMaster(ToSIMNumber,StartTime,EndTime,CallStatus,CallDuration,ConnectionID) values(@simnum,@start,@Stop,@status,@calldu,@conid)", con);
            cmd.Parameters.AddWithValue("@simnum",simnum);
            cmd.Parameters.AddWithValue("@start", start);
            cmd.Parameters.AddWithValue("@stop",stop);
            cmd.Parameters.AddWithValue("@status",status);
            cmd.Parameters.AddWithValue("@calldu",duration);
            cmd.Parameters.AddWithValue("@conid", conid);
            cmd.ExecuteNonQuery();
        }


    }

}
