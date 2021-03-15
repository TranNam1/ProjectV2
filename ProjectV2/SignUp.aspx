<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="ProjectV2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <meta charset ="utf-8" >
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE-edge" >
    <link href="css/Customer.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class ="container ">
                    <div class ="navbar-header">
                        <button type="button" class="navbar-toggle"data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle Navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="Home.aspx"><span ><img src="icons/tải xuống.jfif" alt="My E-Shop" height="30" /></span>My E-Shop </a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class ="nav navbar-nav navbar-right">
                            <li ><a href="Home.aspx">Home</a></li>
                            <li ><a href="#">About</a></li>
                            <li ><a href="#">Contact Us</a></li>                           
                            <li class ="drodown">
                                <a href ="#" class="dropdown-toggle" data-toggle="dropdown">Product<b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li class="dropdown-header">Cat</li>
                                    <li role="separator" class ="divider"></li>
                                    <li> <a href="#">Cat Food</a></li>
                                    <li> <a href="#">Cat jewelry</a></li>
                                    <li> <a href="#">Clothes</a></li>

                                    <li role="separator" class ="divider"></li>
                                    <li class="dropdown-header">Dog</li>
                                    <li role="separator" class ="divider"></li>
                                    <li> <a href="#">Dog Food</a></li>
                                    <li> <a href="#">Dog jewelry</a></li>
                                    <li> <a href="#">Clothes</a></li>

                                    
                                </ul>
                            </li>
                            <li ><a href="SignUp.aspx">Registration</a></li>
                        </ul>
                    </div>


                </div>
            </div>

        </div>

        <!----sign up page---->
        <div class ="center-page">
            <label class="col-xs-11">UserName:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtUsername" runat="server" Class="form-control" placeholder="Enter Your Username"></asp:TextBox>
            </div>

            <label class="col-xs-11">Password:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtPassword" runat="server" Class="form-control" placeholder="Enter Your Password"></asp:TextBox>
            </div>

            <label class="col-xs-11">Confirm Password:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtConfirmPassword" runat="server" Class="form-control" placeholder="Enter password again"></asp:TextBox>
            </div>

            <label class="col-xs-11">Your Full name:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtFullName" runat="server" Class="form-control" placeholder="Enter Your Full Name"></asp:TextBox>
            </div>

            <label class="col-xs-11">Your Email name:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtEmail" runat="server" Class="form-control" placeholder="Enter Your Email"></asp:TextBox>
            </div>
        </div>
        <!----sign up page---->
    </form>
</body>
</html>
