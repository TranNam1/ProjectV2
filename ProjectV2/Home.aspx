<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ProjectV2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pet E-Shop</title>

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
                            <li class="active"><a href="Home.aspx">Home</a></li>
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
            <!--image slide--->
                <div class="container">
  <h2>Carousel Example</h2>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="ImageSlide/Cho.jpg" alt="Slime" style="width:100%; height:300px;">

          <div class="carousel-caption">
          <h3>Pet Shopping</h3>
          <p>15% SellOff</p>
          <p><a class="btn btn-lg btn-primary" href="#" role="button"> By Now</a></p>
        </div>
      </div>

      <div class="item">
        <img src="ImageSlide/Meo.jpg" alt="Nomal" style="width:100%;height:300px;">

          <div class="carousel-caption">
          <h3>Pet Shopping</h3>
          <p>15% SellOff</p>
        </div>
      </div>
    
      <div class="item">
        <img src="ImageSlide/Foods.jfif" alt="Cry" style="width:100%;height:300px;">

          <div class="carousel-caption">
          <h3>Pet Shopping</h3>
          <p>20% SellOff For The First Buy</p>
        </div>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
            <!--image slide--->
        </div>


            <!--Middle Contents start--->
        <hr />
        <div class ="container center">
            <div class="row">
                <div class="col-lg-4">
                    <img class="img-circle " src="Foods/Dog food.jpg" alt="thumb" width="140" height="140" />
                    <h2>Foods</h2>
                    <p>High quality cuisine for your pet</p>
                    <p> <a class="btn btn-default" href ="#" role="button">View More &raquo;</a></p>
                </div>

                <div class="col-lg-4">
                    <img class="img-circle " src="Foods/Dog food.jpg" alt="thumb" width="140" height="140" />
                    <h2>Foods</h2>
                    <p>High quality cuisine for your pet</p>
                    <p> <a class="btn btn-default" href ="#" role="button">View More &raquo;</a></p>
                </div>

                <div class="col-lg-4">
                    <img class="img-circle " src="Foods/Dog food.jpg" alt="thumb" width="140" height="140" />
                    <h2>Foods</h2>
                    <p>High quality cuisine for your pet</p>
                    <p> <a class="btn btn-default" href ="#" role="button">View More &raquo;</a></p>
                </div>

            </div>
        </div>
             <!--Middle Contents end--->
             <!--Footer Contents start--->
        <footer>
            <div class="container">
                <p class =" pull-right"><a href="#">Back To Top</a></p>
                <p>&copy;By Tran Phuong Nam &middot;<a href ="Home.aspx">Home</a>&middot;<a href =" #">About</a>&middot;<a href="#">Contact Us</a>&middot;<a href="#">Products</a></p>
            </div>
        </footer>

              <!--Footer Contents end--->

    </form>

 
</body>
</html>
