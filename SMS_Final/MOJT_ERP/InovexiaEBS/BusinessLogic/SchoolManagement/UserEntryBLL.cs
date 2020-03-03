using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using InovexiaEBS.BusinessEntity.SchoolManagement;
using InovexiaEBS.DataAccess.SchoolManagement;

namespace InovexiaEBS.BusinessLogic.SchoolManagement
{
    public class UserEntryBLL
    {
        internal static long InsertUser(VmStudentRegistration _objUser)
        {

            UserEntryDLL objDA = new UserEntryDLL();
            return Convert.ToInt64(objDA.InsertUser(_objUser));
        }
    }
}