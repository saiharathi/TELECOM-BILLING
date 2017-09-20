using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TBSProject.Admin
{
    public class BALAdmin
    {

        DALAdmin obj = new DALAdmin();
        public void createplan(string planname, int lfm, int std, float clfm, float cstd, string planstatus)
        {
            obj.createplan(planname, lfm, std, clfm, cstd, planstatus);
        }
        public SqlDataReader modifyplangetdet(int planid)
        {
            SqlDataReader dr = obj.modifyplangetdet(planid);
            return dr;

        }
        public void updateplan(int planid, string planname, int lfm, int std, float clfm, float cstd)
        {
            obj.updateplan(planid, planname, lfm, std, clfm, cstd);
        }
        public SqlDataReader Delplanselect(int planid)
        {
            SqlDataReader dr = obj.Delplanselect(planid);
            return dr;
        }
        public void deleteplandata(int planid)
        {
            obj.deleteplandata(planid);
        }
        public void InsertUser(string username, string password, string access, string status)
        {
            obj.InsertUser(username, password, access, status);
        }
        public void UpdateConid(string username, int connid)
        {
            obj.UpdateConid(username, connid);

        }

        public void ModifyUser(string username, string password, string acess, string status)
        {
            obj.ModifyUser(username, password, acess, status);
        }
        public SqlDataReader selectUser(string username)
        {
            SqlDataReader dr = obj.selectUser(username);
            return dr;
        }
        public void DeleteUser(string username)
        {
            obj.DeleteUser(username);
        }
        public SqlDataReader ChangePasswordSelect(string username, string password, string acess)
        {
            SqlDataReader dr = obj.ChangePasswordSelect(username, password, acess);
            return dr;
        }
        public void Changepassword(string username, string password)
        {
            obj.Changepassword(username, password);
        }
    }
}