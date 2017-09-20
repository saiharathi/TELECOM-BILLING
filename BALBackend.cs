using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TBSProject.Backend
{
    public class BALBackend
    {
        DALBackend obj = new DALBackend();
        public void NewConnection(string SIMNumber, string Name, DateTime DOB, int PlanID, string Address, string ContactNumber, string Mobileno, string idProof)
        {
            obj.NewConnection(SIMNumber, Name, DOB, PlanID, Address, ContactNumber, Mobileno, idProof);
        }

        public SqlDataReader SelectConIdpar(int conid)
        {
            SqlDataReader dr = obj.SelectConIdpar(conid);
            return dr;
        }
        public SqlDataReader DelselectConId(int conid)
        {

            SqlDataReader dr = obj.DelselectConId(conid);
            return dr;
        }


        public void Modifycondata(int conid, int Planid, string Address, string Contactnum)
        {
            obj.Modifycondata(conid, Planid, Address, Contactnum);
        }

        public void deletecondata(int conid)
        {
            obj.deletecondata(conid);

        }
        public SqlDataReader SearchConId(int conid)
        {
            SqlDataReader dr = obj.SearchConId(conid);
            return dr;
        }
        public SqlDataReader verfication(int conid)
        {
            SqlDataReader dr = obj.verfication(conid);
            return dr;
        }
        public void verificationmodify(int conid, string status)
        {
            obj.verificationmodify(conid, status);
        }
        public SqlDataReader SimGetDetails(int conid)
        {
            SqlDataReader dr = obj.SimGetDetails(conid);
            return dr;
        }
        public void ChangeSimno(int conid, string Simno)
        {
            obj.ChangeSimno(conid, Simno);
        }
        public SqlDataReader ChangePasswordDetails(string Username)
        {
            SqlDataReader dr = obj.ChangePasswordDetails(Username);
            return dr;
        }
        public void ChangePasswordUpdate(string Username, string password)
        {
            obj.ChangePasswordUpdate(Username, password);
        }
    }
}
