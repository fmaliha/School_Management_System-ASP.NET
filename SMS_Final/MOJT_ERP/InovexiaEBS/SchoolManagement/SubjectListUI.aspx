<%@ Page Title="" Language="C#" MasterPageFile="~/InvexiaMaster.Master" AutoEventWireup="true" CodeBehind="SubjectListUI.aspx.cs" Inherits="InovexiaEBS.StudentRegistrationView.SubjectListUI" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <style>
        
        th {
                 
                  text-align: center;
            background-color: #ccccff;
                }        
              
    </style>

    <div  id="SubjectListGrid" runat="server">
                                     
                   
          <div id="MasterPanelGridSubjectList" runat="server">
                   
        <div class="col-lg-12">
            <div class="breadcrumb fontcolordiv" style="background-color: #b3b3b3"  >
                                                    <li class="breadcrumb-item" ><a href="#">Home</a></li>
                                                    <li class="breadcrumb-item"><a href="#">Course</a></li>
                                                    <li class="breadcrumb-item"><a href="#">Subject List</a></li>
                                                 
                                                    <%--<li class="breadcrumb-item active">Student Details</li>--%>
                   </div>
            <div class="card">
                
                   
                    
              
              
                <div class="card-body">
                    
                    <h3 style="font-family: fantasy">Subject List</h3>

                    <br/>
                    <br/>

                           <asp:GridView ID="GrdSubjectList" runat="server" AutoGenerateColumns="False"
                        CssClass="table  table-hover" Width="100%" GridLines="None"  >
                       
                               <HeaderStyle CssClass="gridheader" />
                               <HeaderStyle HorizontalAlign="Center" ></HeaderStyle>
                        <RowStyle HorizontalAlign="Center"></RowStyle>
                        <AlternatingRowStyle CssClass="Secondary" />
                              

                        <Columns>
                
                            <asp:BoundField DataField="SubjectID" HeaderText="SL NO" ItemStyle-Width="100" >
                            <ItemStyle Width="100px"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="SubjectName" HeaderText="Subjects" ItemStyle-Width="60" >
                            <ItemStyle Width="700px"></ItemStyle>
                            </asp:BoundField>
                           
                       <asp:TemplateField  HeaderText="Actions">
                            <ItemTemplate>
                               <asp:LinkButton CssClass="btn btn-danger pull-right" CommandArgument= '<%# Eval("SubjectID") %>' ItemStyle-Width="55" OnClick="Btn_DeleteSub" runat="server" Text="Delete"> Delete </asp:LinkButton>

                            </ItemTemplate>
                        </asp:TemplateField>

                        </Columns>
                    </asp:GridView>
                                                
                </div> 
            </div>
        </div>
          </div>
               </div>

</asp:Content>
