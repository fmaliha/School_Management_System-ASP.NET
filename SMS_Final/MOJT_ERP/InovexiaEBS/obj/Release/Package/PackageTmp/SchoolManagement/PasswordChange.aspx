<%@ Page Title="" Language="C#" MasterPageFile="~/InvexiaMaster.Master" AutoEventWireup="true" CodeBehind="PasswordChange.aspx.cs" Inherits="InovexiaEBS.SchoolManagement.PasswordChange" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script>
                function Message(message) {
                    $("#msgModal").modal("show");
                    $('#msgModalBodyParagraph').html(message);
                }


                function ValidatorUpdateDisplay(val) {
                    if (typeof (val.display) == "string") {
                        if (val.display == "None") {
                            return;
                        }
                        if (val.display == "Dynamic") {
                            val.style.display = val.isvalid ? "none" : "inline";
                            return;
                        }

                    }
                    val.style.visibility = val.isvalid ? "hidden" : "visible";
                    if (val.isvalid) {
                        document.getElementById(val.controltovalidate).style.border = '1px solid #e1e5f1';
                    }
                    else {
                        document.getElementById(val.controltovalidate).style.border = '1px solid red';
                    }
                }

            </script>
     <style type="text/css">
    .Space label
{
   margin-left: 10px;
  
  color:red;
   
}

    
  </style>
   

    <script type="text/javascript">

       <%-- function Message(txt) {

            //  document.getElementById('<%=Label1.ClientID %>').innerHTML = 'You have typed ' + txt.length + 'characters';

            if (txt.length < 5 || txt.length > 30) {

                document.getElementById('<%=Label2.ClientID %>').innerHTML = 'Password must be at least 6 characters';
                document.getElementById('<%=Label2.ClientID %>').style = "color: red";
            }
            if (txt.length > 5 && txt.length < 10) {
                document.getElementById('<%=Label2.ClientID %>').innerHTML = 'Medium';
                document.getElementById('<%=Label2.ClientID %>').style = "color: gold";
            }
            if (txt.length > 10 && txt.length < 30) {
                document.getElementById('<%=Label2.ClientID %>').innerHTML = 'Strong';
                document.getElementById('<%=Label2.ClientID %>').style = "color: green";
            }

        }--%>

        function Match() {

            var firstTxt = document.getElementById('<%=txtNewPassword.ClientID %>').value;
            var secondtTxt = document.getElementById('<%=txtReTypeNewPassword.ClientID %>').value;



            if (secondtTxt == firstTxt) {

                document.getElementById('<%=Label3.ClientID %>').innerHTML = 'Matched';
                document.getElementById('<%=Label3.ClientID %>').style = "color: green";
            }

            else {
                document.getElementById('<%=Label3.ClientID %>').innerHTML = 'Did not Match';
                document.getElementById('<%=Label3.ClientID %>').style = "color: red";
            }


        }

        function isNumeric(keyCode) {


            return (keyCode != 32);
        }

    </script>

    
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>

   <div class="row">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
        <div class="card">
            
            <div class="card-body">

                <div class="form-row" >
                   
                    <div class="col-sm-12">
                        <div class="form-group row gutters">
                            
                            <div class="col-sm-12">
                                
                <h4><font color="red">Please read the following instructions before edit your Password</font></h4>

                <ul>
                    <li><b>The password is letter-case sensitive, meaning an 'A' is not the same as an 'a'.</b></li>
                    <li><b>You may use letters, numbers, and other special characters on your keyboard.</b></li>
                    <li><b>The new password must be 6 to 30 characters long.</b></li>
                </ul>


                <br />
                              
                                    
                            </div>
                        </div>
                    </div>
                </div>

                <div class="form-row">
                     <div class="col-sm-6">
                        <div class="form-group row gutters">
                            <label for="txtLoginId" class="col-sm-4 col-form-label">Login Id :<span style="color:red">*</span></label>
                            <div class="col-sm-8">
                                <asp:TextBox ID="txtLoginId" class="form-control" runat="server" AutoCompleteType="Disabled" CssClass="form-control form-control-sm"></asp:TextBox>
                                 
                            </div>
                        </div>

                    </div>                    
                </div>

                 <div class="form-row">
                     <div class="col-sm-6">
                        <div class="form-group row gutters">
                            <label for="txtCurrentPassword" class="col-sm-4 col-form-label">Current Password : <span style="color:red">*</span></label>
                            <div class="col-sm-8">
                                <asp:TextBox ID="txtCurrentPassword" class="form-control" runat="server" AutoCompleteType="Disabled" CssClass="form-control form-control-sm"></asp:TextBox>
                                 
                            </div>
                        </div>

                    </div>                    
                </div>

                 <div class="form-row">
                     <div class="col-sm-6">
                        <div class="form-group row gutters">
                            <label for="txtNewPassword" class="col-sm-4 col-form-label">Type New Password : <span style="color:red">*</span></label>
                            <div class="col-sm-8">
                                <asp:TextBox ID="txtNewPassword" class="form-control" runat="server" AutoCompleteType="Disabled" CssClass="form-control form-control-sm"></asp:TextBox>
                                 
                            </div>
                        </div>

                    </div>                    
                </div>


                <div class="form-row">
                     <div class="col-sm-6">
                        <div class="form-group row gutters">
                            <label for="txtReTypeNewPassword" class="col-sm-4 col-form-label">Re-Type New Password : <span style="color:red">*</span></label>
                            <div class="col-sm-8">
                                <asp:TextBox ID="txtReTypeNewPassword" class="form-control" runat="server" AutoCompleteType="Disabled" CssClass="form-control form-control-sm"></asp:TextBox>
                                 
                            </div>
                        </div>

                    </div>                    
                </div>

                <div class="form-row">
                     <div class="col-sm-6">
                       
                             <asp:Label ID="Label1" runat="server" Width="250px"></asp:Label>
                             <asp:Label ID="Label2" runat="server" Width="250px"></asp:Label>
                             <asp:Label ID="Label3" runat="server" Width="250px"></asp:Label>
                        

                    </div>                    
                </div>

                <div style="text-align: right">
                        
                       <asp:Button ID="Button1" runat="server" Text="Save" class="btn btn-primary" ValidationGroup="valSaveDB"
                                OnClick="btnSave_Click" />
                  
                        </div>

             
            </div>
        </div>
    </div>
            </div>

    <%--<fieldset>
        <legend>Change Password</legend>




                <h2>Please read the following instructions before edit your Password</h2>

                <ul>
                    <li><b>The password is letter-case sensitive, meaning an 'A' is not the same as an 'a'.</b></li>
                    <li><b>You may use letters, numbers, and other special characters on your keyboard.</b></li>
                    <li><b>The new password must be 6 to 30 characters long.</b></li>
                </ul>


                <br />
                <table>

                    <tr>
                        <td>Login Id : 
                        </td>
                        <td>
                            <asp:TextBox ID="txtLoginId" runat="server" Width="200px" ReadOnly="True" CssClass="textboxxReadOnly" ForeColor="red"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>

                        <td>Current Password : 
                        </td>
                        <td>
                            <asp:TextBox ID="txtCurrentPassword" CssClass="textboxx" runat="server"
                                Width="200px"></asp:TextBox>
                        </td>


                    </tr>
                    <tr>
                        <td>Type New Password : 
                        </td>
                        <td>
                            <asp:TextBox ID="txtNewPassword" runat="server" Width="200px" onkeydown="return isNumeric(event.keyCode);"
                                CssClass="textboxx" onkeyup="return Message(this.value);"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Re-Type New Password : 
                        </td>
                        <td>
                            <asp:TextBox ID="txtReTypeNewPassword" runat="server" CssClass="textboxx" onkeydown="return isNumeric(event.keyCode);"
                                Width="200px" onblur=" return Match();"></asp:TextBox>
                        </td>
                        <td></td>

                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-success" ValidationGroup="valSaveDB"
                                OnClick="btnSave_Click" />
                        </td>
                        <td></td>

                    </tr>

                    <tr>
                        <td></td>
                        <td>
                            <asp:Label ID="Label1" runat="server" Width="250px"></asp:Label>
                        </td>

                    </tr>

                    <tr>
                        <td></td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Width="250px"></asp:Label>
                        </td>

                    </tr>

                    <tr>
                        <td></td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Width="250px"></asp:Label>
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </asp:UpdatePanel>
    </fieldset>--%>

     <div class="container" runat="server">
                <div id="msgModal" class="modal fade" role="dialog">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <p class="modal-title" style="font-weight: 600">System FeedBack</p>
                            </div>
                            <div class="modal-body">
                                <p id="msgModalBodyParagraph" style="text-align: center"></p>
                            </div>
                            <div class="modal-footer">
                                <asp:Button ID="btnClose" runat="server" Text="Close" class="btn btn-danger" data-dismiss="modal" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

                  </ContentTemplate>
        </asp:UpdatePanel>
</asp:Content>
