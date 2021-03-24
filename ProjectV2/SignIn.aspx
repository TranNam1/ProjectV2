<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="ProjectV2.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignIn</title>
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
                                <li><a href="SignUp.aspx">SignUp</a></li>
                                <li class="active"><a href="SignIn.aspx">SignIn</a></li>
                            </ul>
                        </div>


                    </div>
                </div>
            </div>
        </div>
        <!-- SignInForm--->
        <div class=" container">
            <div class=" form-horizontal">
                <h2>tatata</h2>
                <h2>Login Form</h2>
                <div class=" form-group">
                    <asp:Label ID="Label1" CssClass=" col-md-2  control-label" runat="server" Text="UserName"></asp:Label>
                    <div class=" col-md-3 ">
                        <asp:TextBox ID="txtUserName" CssClass=" form-control " runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" CssClass=" text-danger" ErrorMessage="Required Username" ControlToValidate="txtUserName" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class=" form-group">
                    <asp:Label ID="Label2" CssClass=" col-md-2  control-label" runat="server" Text="Password"></asp:Label>
                    <div class=" col-md-3">
                        <asp:TextBox ID="txtPassword" CssClass=" form-control " runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" CssClass=" text-danger" ErrorMessage="Required Password" ControlToValidate="txtPassword" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class=" form-group">
                    <div class=" col-md-2 "></div>
                    <div class=" col-md-6">
                        <asp:CheckBox ID="CheckBox1" runat="server"  />
                        <asp:Label ID="Label3" CssClass=" control-label" runat="server" Text="Remember"></asp:Label>
                    </div>
                </div>

                <div class=" form-group">
                    <div class=" col-md-2 "></div>
                    <div class=" col-md-6">
                        <asp:Button ID="btnLogin" CssClass="btn btn-success" runat="server" Text="Login&raquo;" OnClick="btnLogin_Click" />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignUp.aspx">Sign Up</asp:HyperLink>
                    </div>
                </div>

                <!--forgot password-->
                <div class=" form-group">
                    <div class=" col-md-2 "></div>
                    <div class=" col-md-6">
                        <asp:HyperLink ID="HyperLinkForgotPassWord" runat="server" NavigateUrl="~/ForgotPassword.aspx">Forgot Password</asp:HyperLink>
                    </div>
                </div>
                 <!--forgot password-->

                <div class=" form-group">
                    <div class=" col-md-2 "></div>
                    <div class=" col-md-6">
                        <asp:Label ID="lblError" CssClass=" text-danger" runat="server"></asp:Label>
                    </div>
                </div>

            </div>
        </div>



        <!-- SignInForm--->

        <!--Footer Contents start--->
        <hr />
        <footer class="footer-pos">
            <div class="container">
                <p class=" pull-right"><a href="#">Back To Top</a></p>
                <p>&copy;By Tran Phuong Nam &middot;<a href="Home.aspx">Home</a>&middot;<a href=" #">About</a>&middot;<a href="#">Contact Us</a>&middot;<a href="#">Products</a></p>
            </div>
        </footer>

        <!--Footer Contents end--->
    </form>
</body>
</html>
