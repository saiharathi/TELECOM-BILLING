using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TBSProject.Admin
{
    public class DALAdmin
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
        //create billing plan
        public void createplan(string planname, int lfm, int std, float clfm, float cstd, string planstatus)
        {
            con = getcon();
            //  cmd = new SqlCommand("insert into BillingPlanMaster(PlanName,LocalFreeMinutes,STDFreeMinutes,CostOfLocalMinute,CostOfSTDMinute,PlanStatus) values  (@planname,@lfm,@std,@clfm,@cstd,@planstatus))",con);
            cmd = new SqlCommand("createplan");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            // cmd.Parameters.AddWithValue("@conid",ConnectionID);
            cmd.Parameters.AddWithValue("@planname", planname);
            cmd.Parameters.AddWithValue("@lfm", lfm);
            cmd.Parameters.AddWithValue("@std", std);
            cmd.Parameters.AddWithValue("@clfm", clfm);
            cmd.Parameters.AddWithValue("@cstd", cstd);
            cmd.Parameters.AddWithValue("@planstatus", planstatus);
            cmd.ExecuteNonQuery();
        }
        //modify billing plan get details
        public SqlDataReader modifyplangetdet(int planid)
        {
            SqlDataReader dr;
            con = getcon();
            cmd = new SqlCommand("select * from BillingPlanMaster where PlanID=@planid", con);
            //cmd = new SqlCommand("spmodifygetdet");
            //cmd.CommandType = CommandType.StoredProcedure;
            // cmd.Connection = con;
            cmd.Parameters.AddWithValue("@planid", planid);
            dr = cmd.ExecuteReader();
            return dr;
        }
        //modify billing plan update
        public void updateplan(int planid, string planname, int lfm, int std, float clfm, float cstd)
        {
            con = getcon();

            // cmd = new SqlCommand("update BillingPlanMaster set PlanName=@planname,LocalFreeMinutes=@lfm,STDFreeMinutes=@std,CostOfLocalMinute=@clfm,CostOfSTDMinute=@cstd where PlanID=@planid",con);
            cmd = new SqlCommand("spmodifyplan");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@planid", planid);
            cmd.Parameters.AddWithValue("@planname", planname);
            cmd.Parameters.AddWithValue("@lfm", lfm);
            cmd.Parameters.AddWithValue("@std", std);
            cmd.Parameters.AddWithValue("@clfm", clfm);
            cmd.Parameters.AddWithValue("@cstd", cstd);

            cmd.ExecuteNonQuery();
        }
        //remove billing plan get details
        public SqlDataReader Delplanselect(int planid)
        {
            SqlDataReader dr;
            con = getcon();
            cmd = new SqlCommand("select * from BillingPlanMaster where PlanID=@planid", con);
            // cmd = new SqlCommand("spremovegetdet");
            // cmd.CommandType = CommandType.StoredProcedure;
            // cmd.Connection = con;
            cmd.Parameters.AddWithValue("@planid", planid);
            dr = cmd.ExecuteReader();
            return dr;
        }
        //remove billing plan
        public void deleteplandata(int planid)
        {
            con = getcon();
            //  cmd = new SqlCommand("delete from BillingPlanMaster where PlanID=@planid", con);
            cmd = new SqlCommand("spremoveplan");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@planid", planid);
            cmd.ExecuteNonQuery();
        }
        //create user
        public void InsertUser(string username, string password, string access, string status)
        {
            con = getcon();
            //  cmd = new SqlCommand("insert into UserMaster(UserName,Password,AcessType,Status) values (@username,@password,@acess,@status)",con);
            cmd = new SqlCommand("spinsertuser");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.Parameters.AddWithValue("@acess", access);
            cmd.Parameters.AddWithValue("@status", status);
           
            cmd.ExecuteNonQuery();
        }
        //create user update
        public void UpdateConid(string username,int connid)
        {
            con = getcon();
           // cmd = new SqlCommand("update  UserMaster set ConnectionID=@connid where UserName=@username",con);
            cmd = new SqlCommand("spinsertconnid");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@connid", connid);
        }
        //modify user
        public void ModifyUser(string username, string password, string acess, string status)
        {
            con = getcon();

            // cmd = new SqlCommand("update UserMaster set Password=@password,AcessType=@acess,Status=@status where UserName=@username",con);
            cmd = new SqlCommand("spupdateuser");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.Parameters.AddWithValue("@acess", acess);
            cmd.Parameters.AddWithValue("@status", status);
         
            cmd.ExecuteNonQuery();
        }
        public SqlDataReader selectUser(string username)
        {
            SqlDataReader dr;
            con = getcon();
            cmd = new SqlCommand("select AcessType from UserMaster where UserName=@username", con);
            // cmd = new SqlCommand("spdeleteuserselect");
            //  cmd.CommandType = CommandType.StoredProcedure;
            // cmd.Connection = con;
            cmd.Parameters.AddWithValue("@username", username);
            dr = cmd.ExecuteReader();
            return dr;
        }
        public void DeleteUser(string username)
        {
            con = getcon();
            //  cmd = new SqlCommand("delete from UserMaster  where UserName=@username", con);
            cmd = new SqlCommand("spdeleteuser");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@username", username);
            cmd.ExecuteNonQuery();
        }
        public SqlDataReader ChangePasswordSelect(string username, string password, string acess)
        {
            SqlDataReader dr;
            con = getcon();
            cmd = new SqlCommand("select Password,AcessType from UserMaster where UserName=@username", con);
            //cmd = new SqlCommand("spchangepassselect");
            //cmd.CommandType = CommandType.StoredProcedure;
            // cmd.Connection = con;
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.Parameters.AddWithValue("@acess", acess);
            dr = cmd.ExecuteReader();
            return dr;
        }
        public void Changepassword(string username, string password)
        {
            con = getcon();

            // cmd = new SqlCommand("update UserMaster set Password=@password where UserName=@username",con);
            cmd = new SqlCommand("spchangepass");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.ExecuteNonQuery();
        }



    }
}
    
