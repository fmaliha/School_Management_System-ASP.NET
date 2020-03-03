using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PBSConnLib;

namespace InovexiaEBS.DataAccess.SchoolManagement
{
    public class PasswordChangeDLL
    {
        PBSDBUtility AppDbU = new PBSDBUtility();
        public long PasswdChange(string pin_number, string login_id, string NewPasswd, string CurrentPasswd)
        {



            try
            {
                Hashtable ht = new Hashtable();
                ht.Add("pin_number", pin_number);
                ht.Add("login_id", login_id);
                ht.Add("NewPasswd", NewPasswd);
                ht.Add("OldPass", CurrentPasswd);

                return Convert.ToInt64(AppDbU.InsertData(ht, "PasswdChange"));
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}