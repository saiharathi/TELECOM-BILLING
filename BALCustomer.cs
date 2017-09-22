using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TBSProject.Customer
{
    public class BALCustomer
    {
        DALCustomer obj = new DALCustomer();
        public SqlDataReader CustomerViewProfile(string username)
        {
            SqlDataReader dr = obj.CustomerViewProfile(username);
            return dr;
        }
        public void ChangepassCustomer(string username, string password)
        {
            obj.ChangepassCustomer(username, password);
        }
        public SqlDataReader CustomerMyBill(int connid)
        {
            SqlDataReader dr = obj.CustomerMyBill(connid);
            return dr;
        }
        public SqlDataReader CusBillPayment(string mobile)
        {
            SqlDataReader dr = obj.CusBillPayment(mobile);
            return dr;
        }
        public SqlDataReader Plangetdetails(int planid)
        {
            SqlDataReader dr = obj.Plangetdetails(planid);
            return dr;
        }

        public void ModifyPlan(int planid, int conid)
        {
            obj.ModifyPlan(planid, conid);
        }
        public SqlDataReader Unbilled(string mobile)
        {
            SqlDataReader dr = obj.Unbilled(mobile);
            return dr;
        }
        public void insertcalldetails(string local, int conid)
        {
            obj.insertcalldetails(local, conid);
        }
        public void insertCallmaster(string simnum, DateTime start, DateTime stop, string status, string duration, int conid)
        {
            obj.insertCallmaster(simnum, start, stop, status, duration, conid);
        }


    }
}
