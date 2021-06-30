<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AssetManagement.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui" />
        <title>Asset Management</title>
        <meta content="Admin Dashboard" name="description" />
        <meta content="Mannatthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <link rel="shortcut icon" href="assets/images/favicon.ico" />

        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/style.css" rel="stylesheet" type="text/css" />

    </head>


    <body class="fixed-left">

        <!-- Begin page -->
        <div class="accountbg">hello</div>
        <div class="wrapper-page">

            <div class="card">
                <div class="card-body">

                    <h3 class="text-center mt-0 m-b-15">
                        <a href="Homepage.aspx" class="logo logo-admin"><i class="mdi mdi-assistant"></i>Asset Management</a>
                    </h3>

                    <div class="p-3">
                        <form class="form-horizontal m-t-20" runat="server" >      
                            <div class="form-group row">
                                <div class="col-12">
                                    <asp:TextBox ID="UserId" CssClass="form-control"  placeholder="User ID" runat="server"></asp:TextBox>                                                                                                         
                                </div>                               
                            </div>
                            
                            <div class="form-group row">
                                <div class="col-12">
                                    <asp:TextBox ID="Password" CssClass="form-control" TextMode="Password" required="" placeholder="Password" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-12">
                                    <asp:Label ID="ErrorMessageLabel" CssClass="alert alert-danger"  runat="server" Visible="false"></asp:Label>
                                </div>
                            </div>

                            <div class="form-group text-center row m-t-20">
                                <div class="col-12">
                                    
                                    <asp:Button ID="LoginButton" CssClass="btn btn-block btn-warning waves-light" runat="server" OnClick="login" Text="Login"  />
                                </div>
                            </div>

                            
                        </form>
                    </div>

                </div>
            </div>
        </div>


        <!-- jQuery  -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/modernizr.min.js"></script>
        <script src="assets/js/detect.js"></script>
        <script src="assets/js/fastclick.js"></script>
        <script src="assets/js/jquery.slimscroll.js"></script>
        <script src="assets/js/jquery.blockUI.js"></script>
        <script src="assets/js/waves.js"></script>
        <script src="assets/js/jquery.nicescroll.js"></script>
        <script src="assets/js/jquery.scrollTo.min.js"></script>

        <!-- App js -->
        <script src="assets/js/app.js"></script>

    </body>
</html>
