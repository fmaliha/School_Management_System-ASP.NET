using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using PBSConnLib;

namespace InovexiaEBS.DataAccess.SchoolManagement
{
    public class BatchEditDLL
    {
        PBSDBUtility pbsUtility = new PBSDBUtility();
        internal DataTable GetBatchInfo(Hashtable ht)
        {
            try
            {
                DataTable dataTable = pbsUtility.GetDataByProc(ht, "SM_GetBatchByBatchID");
                return dataTable;
            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message.ToString());
            }
        }
    }
}