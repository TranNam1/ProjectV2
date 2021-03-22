﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="ProjectV2.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Home Page</title>
    <meta charset ="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <link href="css/Customer.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
                            <li >
                                <asp:Button ID="btnLogout" CssClass="btn btn-default navbar" runat="server" Text="Sign Out" OnClick="btnLogout_Click" />
                            </li>
                            
                        </ul>
                    </div>


                </div>
            </div>
         </div>
      </div>
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="lblSuccess" runat="server" CssClass="text-success"></asp:Label>


        <!--Footer Contents start--->
        <hr />
        <footer class="footer-pos">
            <div class="container">
                <p class =" pull-right"><a href="#">Back To Top</a></p>
                <p>&copy;By Tran Phuong Nam &middot;<a href ="Home.aspx">Home</a>&middot;<a href =" #">About</a>&middot;<a href="#">Contact Us</a>&middot;<a href="#">Products</a></p>
            </div>
        </footer>

              <!--Footer Contents end--->
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
