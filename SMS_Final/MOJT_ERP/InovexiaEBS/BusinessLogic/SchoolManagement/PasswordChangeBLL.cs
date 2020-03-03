using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using InovexiaEBS.DataAccess.SchoolManagement;

namespace InovexiaEBS.BusinessLogic.SchoolManagement
{
    public class PasswordChangeBLL
    {
        public static long PasswordChange(string pin_number, string login_id, string NewPasswd, string CurrentPasswd)
        {
            PasswordChangeDLL objDA = new PasswordChangeDLL();
            return Convert.ToInt64(objDA.PasswdChange(pin_number, login_id, NewPasswd, CurrentPasswd));
        }
    }
}