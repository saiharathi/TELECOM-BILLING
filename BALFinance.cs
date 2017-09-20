using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TBSProject.Finance
{
    public class BALFinance
    {
        DALFinance obj = new DALFinance();

       /* public SqlDataReader getBillDetails(int conid)
        {
            SqlDataReader dr = obj.getBillDetails(conid);
            return dr;
        }*/
        public SqlDataReader Passgetdetails(string username)
        {
            SqlDataReader dr = obj.Passgetdetails(username);
            return dr;
        }
        public void ChangepassFinance(string username, string password)
        {
            obj.ChangepassFinance(username, password);
        }
        public SqlDataReader Singleusergetdetails(int conid)
        {
            SqlDataReader dr = obj.Singleusergetdetails(conid);
            return dr;
        }
        public void updateSingleuser(int conid, float amt)
        {
            obj.updateSingleuser(conid, amt);
        }

    }
}