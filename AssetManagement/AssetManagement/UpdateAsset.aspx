<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="UpdateAsset.aspx.cs" Inherits="AssetManagement.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
              <div class="page-content-wrapper ">

                        <div class="container-fluid">

                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="page-title-box">
                                        <div class="btn-group float-right">
                                            <ol class="breadcrumb hide-phone p-0 m-0">
                                                <li class="breadcrumb-item"><a href="Homepage.aspx">Asset Management</a></li>
                                                <li class="breadcrumb-item">Assets</li>
                                                <li class="breadcrumb-item active">Update Asset</li>
                                            </ol>
                                        </div>                                      
                                        <h4 class="page-title">Update Asset</h4>
                                    </div>
                                </div>
                            </div>
                            

                                <div class="row" style="margin-right:25%;margin-left:25%">
                                <div class="col-12">
                                    <div class="card m-b-30">
                                        <div class="card-body"> 
                                            <div class="form-group row" >
                                                <div class="col-sm-4 col-md-4">
                                                    <asp:Label ID="UpdAssetIdLabel" runat="server" for="example-text-input" class="col-sm-2 col-form-label" Text="Asset Name" ></asp:Label>
                                                </div>
                                                <div class="col-sm-7 col-md-7" >                                                    
                                                    <asp:TextBox runat="server" ID="UpdAssetId" class="form-control" ></asp:TextBox> 
                                                </div>
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
                                                    <asp:Label ID="QtyLabel" runat="server" for="example-text-input" class="col-sm-2 col-form-label" Text="Requirement"></asp:Label>
                                                </div>
                                                <div class="col-sm-7 col-md-7">                                                    
                                                    <asp:TextBox runat="server" TextMode="Number" ID="Qty" class="form-control"></asp:TextBox> 
                                                </div>
                                            </div>                        
                                                                                  
                                            <div class="form-group row" style="margin-left:30%;margin-right:30%">                                                                                      
                                                <asp:Button ID="RequestButton" CssClass="btn btn-block btn-warning waves-light" runat="server" OnClick="updateasset" Text="Save Changes" Width="70%"  />
                                            </div>
                                        </div>
                                      
                                    </div>
                                </div> <!-- end col -->
                            </div> <!-- end row -->
                            
                        </div><!-- container -->
              
                    </div> <!-- Page content Wrapper -->
  
</asp:Content>
