<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="ProjectV2.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <link href="css/Customer.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                    <div class="container ">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only">Toggle Navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="Home.aspx"><span>
                                <img src="icons/tải xuống.jfif" alt="My E-Shop" height="30" /></span>My E-Shop </a>
                        </div>
                        <div class="navbar-collapse collapse">
                            <ul class="nav navbar-nav navbar-right">
                                <li><a href="Home.aspx">Home</a></li>
                                <li><a href="#">About</a></li>
                                <li><a href="#">Contact Us</a></li>
                                <li class="drodown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Product<b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li class="dropdown-header">Cat</li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="#">Cat Food</a></li>
                                        <li><a href="#">Cat jewelry</a></li>
                                        <li><a href="#">Clothes</a></li>

                                        <li role="separator" class="divider"></li>
                                        <li class="dropdown-header">Dog</li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="#">Dog Food</a></li>
                                        <li><a href="#">Dog jewelry</a></li>
                                        <li><a href="#">Clothes</a></li>


                                    </ul>
                                </li>

                                <li><a href="SignIn.aspx">SignIn</a></li>
                            </ul>
                        </div>


                    </div>
                </div>
            </div>



        </div>
        <div class="container">
            <div class="form-horizontal">
                <h2>Recover Password</h2>
                <hr />
                <h3>Please Enter Your Email Address,We will send recovery link!</h3>
                <div class="form-group">
                    <asp:Label ID="lblEmail" CssClass=" col-md-2 control-label" runat="server" Text="Your Email Address"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtEmailID" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="Enter Your Email" CssClass=" text-danger" ControlToValidate="txtEmailID" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>


                </div>

                <div class="form-group">
                    <div class="col-md-2">

                    </div>
                    <div class="col-md-6">
                        <asp:Button ID="btnResetPass"
                           CssClass="btn btn-default" runat="server" Text="Send" OnClick="btnResetPass_Click" />
                        <asp:Label ID="lblResetPassMsg" CssClass="  text-success" runat="server"></asp:Label>
                    </div>
                </div>


            </div>
        </div>
    </form>
    <!--Footer Contents start--->
    <hr />
    <footer class="footer-pos">
        <div class="container">
            <p class=" pull-right"><a href="#">Back To Top</a></p>
            <p>&copy;By Tran Phuong Nam &middot;<a href="Home.aspx">Home</a>&middot;<a href=" #">About</a>&middot;<a href="#">Contact Us</a>&middot;<a href="#">Products</a></p>
        </div>
    </footer>

    <!--Footer Contents end--->
</body>
</html>
