using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using InovexiaEBS.BusinessEntity.SchoolManagement;
using InovexiaEBS.BusinessLogic.SchoolManagement;
using PBSConnLib;

namespace InovexiaEBS.SchoolManagement
{
    public partial class PasswordChange : System.Web.UI.Page
    {
        PBSDBUtility objDBUtility = new PBSDBUtility();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtLoginId.Text = Session[SessionInfo.loginid].ToString();
            }

            Literal pageLtl = ((Literal)PageUtility.FindControlIterative(this.Master, "ltlPageName"));
            if (pageLtl != null)
            {
                pageLtl.Text = "Change Password";
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                long result = 0;
                VmStudentRegistration objDA = new VmStudentRegistration();

                string login_id = Session[SessionInfo.loginid].ToString();
                string pin_number = Session[SessionInfo.pin_number].ToString();
                string CurrentPasswd = txtCurrentPassword.Text.Trim();
                //string cmd = "SELECT [password]  FROM dbo.user_t WHERE login_id='" + loginId + "' AND pin_number='" + PinNo + "'";
                string RealCurrentPawwsd = objDBUtility.AggRetrive("SELECT [password]  FROM dbo.user_t WHERE login_id='" + login_id + "' AND pin_number='" + pin_number + "'").ToString();
                string NewPasswd = txtNewPassword.Text.Trim();
                string ReTypeNewPasswd = txtReTypeNewPassword.Text.Trim();

                if (CurrentPasswd == RealCurrentPawwsd)
                {
                    if (NewPasswd == ReTypeNewPasswd)
                    {
                        if (NewPasswd.Length > 5 && NewPasswd.Length < 30)
                        {

                            result = PasswordChangeBLL.PasswordChange(pin_number, login_id, NewPasswd, CurrentPasswd);


                            txtCurrentPassword.Text = String.Empty;
                            txtNewPassword.Text = String.Empty;
                            txtReTypeNewPassword.Text = String.Empty;

                        }
                        else
                        {
                            Alert.Show("Password length must be minimum 6 and maximun 30");
                        }

                    }
                    else
                    {
                        Alert.Show("New Password does not match");
                    }
                }
                else
                {
                    Alert.Show("Wrong Current Password");
                }

            }

            catch (Exception ex)
            {
                Alert.Show(ex.Message);
            }
        }
    }
}