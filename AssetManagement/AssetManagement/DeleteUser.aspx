<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="DeleteUser.aspx.cs" Inherits="AssetManagement.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="page-content-wrapper ">
                
                        <div class="container-fluid">

                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="page-title-box">
                                        <div class="btn-group float-right">
                                            <ol class="breadcrumb hide-phone p-0 m-0">
                                                <li class="breadcrumb-item"><a href="Homepage.aspx">Asset Management</a></li>
                                                <li class="breadcrumb-item">User Management</li>
                                                <li class="breadcrumb-item active">Delete User</li>
                                            </ol>
                                        </div>                                      
                                        <h4 class="page-title">Delete User</h4>
                                    </div>
                                </div>
                            </div>
                            
                            
                            <div class="row" style="margin-right:25%;margin-left:25%">
                                <div class="col-12">
                                    <div class="card m-b-30">
                                        <div class="card-body"> 
                                            <div class="form-group row" >
                                                <div class="col-sm-4 col-md-4">
                                                    <asp:Label ID="UserIdLabel" runat="server" for="example-text-input" class="col-sm-2 col-form-label" Text="User Id" ></asp:Label>
                                                </div>
                                                <div class="col-sm-7 col-md-7" >                                                    
                                                    <asp:TextBox runat="server" ID="UserId" class="form-control" ></asp:TextBox> 
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <div class="col-sm-4 col-md-4">
                                                    <asp:Label ID="PasswordLabel" runat="server" for="example-text-input" class="col-sm-2 col-form-label" Text="Password"></asp:Label>
                                                </div>
                                                <div class="col-sm-7 col-md-7">                                                    
                                                    <asp:TextBox runat="server" ID="Password" class="form-control"  TextMode="Password"></asp:TextBox> 
                                                </div>
                                            </div>    
                                            <div class="form-group row" style="margin-left:30%;margin-right:30%">                                                                                      
                                                <asp:Button ID="SubmitButton" CssClass="btn btn-block btn-warning waves-light" runat="server" OnClick="deleteuser" Text="Submit" Width="70%"  />
                                            </div>
                                        </div>
                                      
                                    </div>
                                </div> <!-- end col -->
                            </div> <!-- end row -->
                            
                        </div><!-- container -->
              
                    </div> <!-- Page content Wrapper -->
</asp:Content>
