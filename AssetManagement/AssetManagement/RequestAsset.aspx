<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="RequestAsset.aspx.cs" Inherits="AssetManagement.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                  <div class="page-content-wrapper ">
                        <div class="container-fluid">

                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="page-title-box">
                                        <div class="btn-group float-right">
                                            <ol class="breadcrumb hide-phone p-0 m-0">
                                                <li class="breadcrumb-item"><a href="Homepage.aspx">Asset Management</a></li>
                                                <li class="breadcrumb-item active">Request Asset</li>
                                            </ol>
                                        </div>                                      
                                        <h4 class="page-title">Request Asset</h4>
                                    </div>
                                </div>
                            </div>
                            

                            <div class="row" style="margin-right:25%;margin-left:25%">
                                <div class="col-12">
                                    <div class="card m-b-30">
                                        <div class="card-body"> 
                                            <div class="form-group row" >
                                                <div class="col-sm-4 col-md-4">
                                                    <asp:Label ID="AssetIdLabel" runat="server" for="example-text-input" class="col-sm-2 col-form-label" Text="Asset Name" ></asp:Label>
                                                </div>
                                                <div class="col-sm-7 col-md-7" >                                                  
                                                    <asp:DropDownList CssClass="btn btn-secondary dropdown-toggle form-control" runat="server" ID="AssetList">                   
                                                        <asp:ListItem></asp:ListItem>
                                                    </asp:DropDownList>                                                
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <div class="col-sm-4 col-md-4">
                                                    <asp:Label ID="QtyLabel" runat="server" for="example-text-input" class="col-sm-2 col-form-label" Text="Requirement"></asp:Label>
                                                </div>
                                                <div class="col-sm-7 col-md-7">                                                    
                                                    <asp:TextBox runat="server" TextMode="Number" ID="Qty" class="form-control" min="0"></asp:TextBox> 
                                                </div>
                                                <!--<asp:RangeValidator runat="server" ControlToValidate="QTY" MinimumValue="0" MaximumValue="100000"></asp:RangeValidator>-->
                                            </div>

                                            <div class="form-group row">
                                                <div class="col-sm-4 col-md-4">
                                                    <asp:Label ID="DeptLabel" runat="server" for="example-text-input" class="col-sm-2 col-form-label" Text="Department"></asp:Label>
                                                </div>
                                                <div class="col-sm-7 col-md-7">                                                    
                                                    <asp:TextBox runat="server" ID="Dept" class="form-control"></asp:TextBox> 
                                                </div>
                                            </div>
                                                                                    
                                            <div class="form-group row">
                                                <div class="col-sm-4 col-md-4">
                                                    <asp:Label ID="DurLabel" runat="server" for="example-text-input" class="col-sm-2 col-form-label" Text="Duration"></asp:Label>
                                                </div>
                                                <div class="col-sm-7 col-md-7">                                                    
                                                    <asp:TextBox runat="server" ID="Dur1" class="form-control" TextMode="Date"></asp:TextBox> <br />
                                                    <asp:Label ID="TO" runat="server" Text="To" class="col-sm-2 col-form-label"></asp:Label>
                                                    <asp:TextBox runat="server" ID="Dur2" class="form-control" TextMode="Date"></asp:TextBox>
                                                </div>
                                            </div> 
                                         
                                            <div class="form-group row" style="margin-left:30%;margin-right:30%">                                                                                      
                                                <asp:Button ID="SubmitButton" CssClass="btn btn-block btn-warning waves-light" runat="server" OnClick="request" Text="Save Changes" Width="70%"  />
                                            </div>
                                        </div>
                                      
                                    </div>
                                </div> <!-- end col -->
                            </div> <!-- end row -->
                            
                        </div><!-- container -->

                    </div> <!-- Page content Wrapper -->

</asp:Content>
