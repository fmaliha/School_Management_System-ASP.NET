using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using InovexiaEBS.BusinessEntity.SchoolManagement;
using PBSConnLib;

namespace InovexiaEBS.DataAccess.SchoolManagement
{
    public class UserEntryDLL
    {
        PBSDBUtility idbutility = new PBSDBUtility();
        public long InsertUser(VmStudentRegistration _objUser)
        {
            try
            {
                Hashtable ht = new Hashtable();
                ht.Add("name", _objUser.UserName);
                ht.Add("login_id", _objUser.LoginID);
                ht.Add("password", _objUser.Password);
                ht.Add("email", _objUser.Email);
                //ht.Add("ContactNumber", _objUser.ContactNumber);
                ht.Add("CreateBy", _objUser.CreatedBy);
                DataTable dt = idbutility.GetDataByProc(ht, "SM_InsertUser");
                if (dt.Rows.Count > 0)
                {
                    string Value = dt.Rows[0]["pin_number"].ToString();
                    // return Convert.ToInt64(idbutility.ExecuteCommand(ht, "spInsertUser"));
                    return Convert.ToInt64(Value);
                }
                else
                {
                    return 0;
                }


            }
            catch (Exception ex)
            {
                throw ex;
            }

        }


        public long UpdateUser(VmStudentRegistration _objUser)
        {
            try
            {
                Hashtable ht = new Hashtable();
                ht.Add("pin_number", _objUser.pin_number);
                ht.Add("name", _objUser.UserName);
                ht.Add("login_id", _objUser.LoginID);
                ht.Add("password", _objUser.Password);
                ht.Add("email", _objUser.Email);
                //ht.Add("ContactNumber", _objUser.ContactNumber);
                ht.Add("CreateBy", _objUser.CreatedBy);
                DataTable dt = idbutility.GetDataByProc(ht, "spUpdateUser");
                if (dt.Rows.Count > 0)
                {
                    string Value = dt.Rows[0]["pin_number"].ToString();
                    return Convert.ToInt64(Value);
                }
                else
                {
                    return 0;
                }


            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
    }
}