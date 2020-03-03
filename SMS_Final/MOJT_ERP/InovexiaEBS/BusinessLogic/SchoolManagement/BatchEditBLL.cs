using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using InovexiaEBS.DataAccess.SchoolManagement;

namespace InovexiaEBS.BusinessLogic.SchoolManagement
{
    public class BatchEditBLL
    {
        internal static DataTable GetBatchInfo(Hashtable ht)
        {
            BatchEditDLL accessLayer = new BatchEditDLL();
            return accessLayer.GetBatchInfo(ht);
        }
    }
}