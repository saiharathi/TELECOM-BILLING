using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TBSProject.Backend
{
    public class DALBackend
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
        public void NewConnection(string SIMNumber, string Name, DateTime DOB, int PlanID, string Address, string ContactNumber, string Mobileno, string idproof)
        {
            con = getcon();
            //  cmd = new SqlCommand("insert into CustomerMaster(SIMNumber,Name,DateOfBirth,Address,ContactNumber,PlanID,MobileNumber,IDProof) values (@simnum,@Name,@Dob,@Address,@ContactNum,@PlanID,@mobileno,@idproof) ",con);
            cmd = new SqlCommand("newconcust");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            // cmd.Parameters.AddWithValue("@conid",ConnectionID);
            cmd.Parameters.AddWithValue("@simnum", SIMNumber);
            cmd.Parameters.AddWithValue("@name", Name);
            cmd.Parameters.AddWithValue("@dob", DOB);
            cmd.Parameters.AddWithValue("@planid", PlanID);
            cmd.Parameters.AddWithValue("@address", Address);
            cmd.Parameters.AddWithValue("@contactnum", ContactNumber);
            cmd.Parameters.AddWithValue("@mobileno", Mobileno);
            cmd.Parameters.AddWithValue("@idproof", idproof);
            cmd.ExecuteNonQuery();
        }

        public SqlDataReader SelectConIdpar(int conid)
        {
            SqlDataReader dr;
            con = getcon();
            cmd = new SqlCommand("select * from CustomerMaster where ConnectionID=@conid", con);
            // cmd = new SqlCommand("modifyConSelect");
            // cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@conid", conid);
            dr = cmd.ExecuteReader();
            return dr;
        }
        public void Modifycondata(int conid, int Planid, string Address, string Contactnum)
        {
            con = getcon();

            cmd = new SqlCommand("update CustomerMaster set PlanID=@planid,Address=@Address,ContactNumber=@contactnum where ConnectionID=@conid");
            // cmd = new SqlCommand("modifyconcust");
            // cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@conid", conid);
            cmd.Parameters.AddWithValue("@planid", Planid);
            cmd.Parameters.AddWithValue("@Address", Address);
            cmd.Parameters.AddWithValue("@contactnum", Contactnum);

            cmd.ExecuteNonQuery();



        }
        public SqlDataReader DelselectConId(int conid)
        {
            SqlDataReader dr;
            con = getcon();
            cmd = new SqlCommand("select * from CustomerMaster where ConnectionID=@conid", con);
            //cmd = new SqlCommand("delConSelect",con);
            //cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@conid", conid);
            dr = cmd.ExecuteReader();
            return dr;
        }
        public void deletecondata(int conid)
        {
            con = getcon();
            cmd = new SqlCommand("delete from CustomerMaster where ConnectionID=@conid", con);
            //cmd = new SqlCommand("delconcust",con);
            //cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@conid", conid);
            cmd.ExecuteNonQuery();
        }
        public SqlDataReader SearchConId(int conid)
        {
            SqlDataReader dr;
            con = getcon();
            cmd = new SqlCommand("select * from CustomerMaster where ConnectionID=@conid", con);
            // cmd = new SqlCommand("searchconcust", con);
            // cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@conid", conid);
            dr = cmd.ExecuteReader();
            return dr;
        }

        public SqlDataReader verfication(int conid)
        {
            SqlDataReader dr;
            con = getcon();
            cmd = new SqlCommand("Select MobileNumber,Name,IDProof,AccountStatus from CustomerMaster where ConnectionID=@conid ", con);
            cmd.Parameters.AddWithValue("@conid", conid);

            dr = cmd.ExecuteReader();
            return dr;
        }

        public void verificationmodify(int conid, string status)
        {
            con = getcon();

            cmd = new SqlCommand("update CustomerMaster set Accountstatus=@accsta where ConnectionID=@conid");
            // cmd = new SqlCommand("modifyconcust");
            //  cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@conid", conid);
            cmd.Parameters.AddWithValue("@accsta", status);

            cmd.ExecuteNonQuery();

        }

        public SqlDataReader SimGetDetails(int conid)
        {
            SqlDataReader dr;
            con = getcon();
            cmd = new SqlCommand("Select SIMNumber,Name,DateOfBirth,PlanID from CustomerMaster where ConnectionID=@conid ", con);
            cmd.Parameters.AddWithValue("@conid", conid);

            dr = cmd.ExecuteReader();
            return dr;
        }
        public void ChangeSimno(int conid, string Simnum)
        {
            con = getcon();

            cmd = new SqlCommand("update CustomerMaster set SIMNumber=@simnum where ConnectionID=@conid");
            // cmd = new SqlCommand("modifyconcust");
            //  cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@conid", conid);
            cmd.Parameters.AddWithValue("@simnum", Simnum);

            cmd.ExecuteNonQuery();

        }
        public SqlDataReader ChangePasswordDetails(string Username)
        {
            SqlDataReader dr;
            con = getcon();
            cmd = new SqlCommand("select UserName,Password, AcessType from UserMaster where UserName = @Username", con);
            //cmd = new SqlCommand("PasswordSelect");
            //  cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@UserName", Username);

            dr = cmd.ExecuteReader();
            return dr;
        }

        public void ChangePasswordUpdate(string Username, string password)
        {
            con = getcon();

            cmd = new SqlCommand("update UserMaster set Password=@Password where Username=@Username");
            // cmd = new SqlCommand("changepass");
            //  cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@Username", Username);
            cmd.Parameters.AddWithValue("@Password", password);


            cmd.ExecuteNonQuery();

        }



    }
}
    

