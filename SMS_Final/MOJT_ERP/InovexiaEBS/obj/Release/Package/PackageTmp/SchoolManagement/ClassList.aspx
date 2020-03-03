<%@ Page Title="" Language="C#" MasterPageFile="~/InvexiaMaster.Master" AutoEventWireup="true" CodeBehind="ClassList.aspx.cs" Inherits="InovexiaEBS.StudentRegistrationView.ClassList" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .widthClass {
            width: 100%;
        }

                        table {
                  font-family: arial, sans-serif;
                  border-collapse: collapse;
                  width: 100%;
                }

                td, th {
                  border: 1px solid #dddddd;
                  text-align: center;
                  padding: 8px;
                }

                tr:nth-child(even) {
                  background-color: white;
                }

                 th {
                     background-color: #ff3333;
                      color: white;
                    }

                 float-right {
                     text-align: right;
                 }
    </style>
    <div  id="ClassListGrid" runat="server" style="font-family: serif">
                                     
                   
          <div id="MasterPanelGridClassList" runat="server">
                   
        <div class="col-lg-12">
            <div class="breadcrumb fontcolordiv" style="background-color: #b3b3b3"  >
                                                    <li class="breadcrumb-item" ><a href="#">Home</a></li>
                                                    <li class="breadcrumb-item"><a href="#">Course</a></li>
                                                    <li class="breadcrumb-item"><a href="#">Class List</a></li>
                                                 
                                                    <%--<li class="breadcrumb-item active">Student Details</li>--%>
                   </div>
            <div class="card">
                
              
                <div class="card-body">
                    
                    <h3 style="font-family: fantasy">Class List</h3>
                    
                    <br/>

                           <asp:GridView ID="GrdClassList" runat="server" AutoGenerateColumns="False"
                        CssClass="table table-striped table-bordered dataTable table-hover" Width="100%"
                               AllowPaging="true"
                                        PageSize="30" >
                        <HeaderStyle CssClass="gridViewHeader" />
                        <RowStyle HorizontalAlign="Center"></RowStyle>
                        <AlternatingRowStyle CssClass="Secondary" />

                        <Columns>
                
                            <asp:BoundField DataField="ClassID" HeaderText="SL NO" ItemStyle-Width="60" >
                            <ItemStyle Width="60px"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="ClassName" HeaderText="Class Name" ItemStyle-Width="60" >
                            <ItemStyle Width="60px"></ItemStyle>
                            </asp:BoundField>
                           
                       <asp:TemplateField HeaderText="Action">
                            <ItemTemplate>
                               <%--<asp:LinkButton CssClass="btn btn-primary" CommandArgument= '<%# Eval("ClassID") %>' ItemStyle-Width="55" OnClick="Btn_EditClass" runat="server" Text="Edit"> Edit </asp:LinkButton>--%>
                               <asp:LinkButton CssClass="btn btn-danger" CommandArgument= '<%# Eval("ClassID") %>' ItemStyle-Width="55" OnClick="Btn_AddSubject" runat="server" Text="Add Subject"> Add Subject </asp:LinkButton>

                            </ItemTemplate>
                        </asp:TemplateField>

                        </Columns>
                    </asp:GridView>
                                                
                </div> 
            </div>
        </div>
          </div>
               </div>
    
    
    <div  id="divAddSubject" runat="server" style="font-family: serif">
                                     
                   
          <div id="MasterPanelAddSubject" runat="server">
          
              <div class="col-lg-12">
                  <div class="alert alert-dark"  id="alertbatch2" runat="server" role="alert" style="font-family: cursive">
                 A new Subject has been added successfully!
            </div>   
                
            <div class="alert alert-danger" id="alertbatch1" runat="server" role="alert">
                This subject already exists!
              </div>
                  
                  <div class="breadcrumb fontcolordiv" style="background-color: #b3b3b3"  >
                                                    <li class="breadcrumb-item" ><a href="#">Home</a></li>
                                                    <li class="breadcrumb-item"><a href="#">Course</a></li>
                                                    <li class="breadcrumb-item"><a href="#">Add Subject</a></li>
                                                 
                                                    <%--<li class="breadcrumb-item active">Student Details</li>--%>
                   </div>
                 
                <div class="card">
                    
                
                    <div class="card-body">
                        
                        <h3 style="font-family: fantasy">Add Subject</h3>
                           <br/>

                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <%--<label Font-Bold="true">Class</label>--%>
                                    <asp:Label ID="Label2" runat="server" Text="Class"  Font-Bold="true" ></asp:Label>
                                    <span style="color: red;">*</span>
                                     <asp:HiddenField ID="hfClassID" runat="server"></asp:HiddenField>
                                    <asp:RequiredFieldValidator ID="rfvClass" ControlToValidate="txtClass" ValidationGroup="MasterValidation" runat="server" ForeColor="Red" ErrorMessage="(Required)"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtClass" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <div class="form-group">
                                    <%--<label class="control-label">Select Subject</label>--%>
                                    <asp:Label ID="Label1" runat="server" Text="Select Subject"  Font-Bold="true" ></asp:Label>
                                    <span style="color: red;">*</span>
                                    <asp:RequiredFieldValidator ID="rfvddlSelectSubject" ControlToValidate="ddlSelectSubject" ValidationGroup="MasterValidation" runat="server" ForeColor="Red" ErrorMessage="(Required)"></asp:RequiredFieldValidator>
                                    <telerik:RadComboBox ID="ddlSelectSubject"  runat="server" DropDownCssClass="widthClass"  EmptyMessage="Select Subject" EnableLoadOnDemand="True" Filter="Contains" Height="200px" HighlightTemplatedItems="True" Width="100%" OnItemsRequested="ddlSelectSubject_ItemsRequested" Skin="Silk" Style="background-color: #339966;" AutoPostBack="False">
                                        <HeaderTemplate>
                                            <table cellpadding="0" cellspacing="0">
                                                <tr>

                                                    <td>Subject</td>

                                                </tr>
                                            </table>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <table cellpadding="0" cellspacing="0">
                                                <tr>

                                                    <td><%# DataBinder.Eval(Container, "Attributes['SubjectName']")%></td>

                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                    </telerik:RadComboBox>
                                </div>
                            </div>

                            
                        </div>

                        
                        <div class="card-control">
               <div style="padding: 5px; float: right">

                   <asp:Button ID="BtnAddSubGrd" CssClass="btn btn-primary margin-right-btn pull-right" runat="server" Text="Save" OnClick="Btn_SaveSelectedSub"/>    <%----%>               
                </div>
            </div>
                    </div>

                </div>
            </div>
              
              
              <div class="col-lg-12">
            <div class="card">
                
              
                <div class="card-body">
                    
                   <h3 style="font-family: fantasy">Subject List</h3>
                           <br/>

                           <asp:GridView ID="grdSelectSubject" runat="server" AutoGenerateColumns="False"
                        CssClass="table table-borered table-hover" Width="100%">
                        <HeaderStyle CssClass="gridViewHeader" />

                               <AlternatingRowStyle CssClass="Secondary" />

                        <Columns>
                
                            <asp:BoundField DataField="ID" HeaderText="ID" ItemStyle-Width="60" >
                            <ItemStyle Width="60px"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="ClassName" HeaderText="Class Name" ItemStyle-Width="60" >
                            <ItemStyle Width="60px"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="SubjectName" HeaderText="Subject Name" ItemStyle-Width="60" >
                            <ItemStyle Width="60px"></ItemStyle>
                            </asp:BoundField>
                            <%--<asp:TemplateField>
                            <ItemTemplate>
                               <asp:LinkButton CssClass="btn btn-primary" CommandArgument= '<%# Eval("ID") %>' ItemStyle-Width="55" OnClick="Btn_DeleteSub" runat="server" Text="Delete"> Delete </asp:LinkButton>

                            </ItemTemplate>
                        </asp:TemplateField>--%>

                        </Columns>
                    </asp:GridView>
                                                
                </div> 
            </div>
        </div>

              
        </div>
               </div>
    

</asp:Content>
