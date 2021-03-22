<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecoverPassword.aspx.cs" Inherits="ProjectV2.RecoverPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset your Password</title>
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


            <div class="container">
                <div class="form-horizontal">
                    <br/>
                    <br/>
                    <br/>
                    <h2>Reset Password</h2>
                    <hr />
                    <h3></h3>
                    <div class =" form-group">
                        <asp:Label ID="lblmsg" CssClass=" col-md-2 control-label" runat="server"  Visible="False" Font-Size="X-Large"></asp:Label>

                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblNewPassword" CssClass=" col-md-2 control-label" runat="server" Text="Your New Password" Visible="False"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtNewPass" CssClass="form-control" TextMode=" Password" runat="server" Visible="False"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorNewPass" runat="server" ErrorMessage="Enter Your New Pass " CssClass=" text-danger" ControlToValidate="txtNewPass" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>


                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblDonfirmPass" CssClass=" col-md-2 control-label" runat="server" Text="Confirm Password" Visible="False"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtConfirmPass" CssClass="form-control" TextMode=" Password" runat="server" Visible="False"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPass" runat="server" ErrorMessage="Confirm Your New Pass " CssClass=" text-danger" ControlToValidate="txtConfirmPass" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidatorPass" runat="server" ErrorMessage="Password not match" ControlToCompare="txtNewPass" ControlToValidate="txtConfirmPass" ForeColor="Red"></asp:CompareValidator>
                        </div>


                    </div>

                    <div class="form-group">
                        <div class="col-md-2">
                        </div>
                        <div class="col-md-6">
                            <asp:Button ID="btnResetPass"
                                CssClass="btn btn-default" runat="server" Text="Reset" Visible="False" OnClick="btnResetPass_Click"  />
                            
                        </div>
                    </div>


                </div>
            </div>
        </div>

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
