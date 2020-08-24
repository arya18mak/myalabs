<?php
session_start();
if(isset($_SESSION["uid"])){
	header("location:profile.php");
}
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

		<title>MYA Diamonds</title>
		<link rel="stylesheet" href="css/bootstrap.min.css"/>
		<script src="js/jquery2.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="main.js"></script>
		<link rel="stylesheet" type="text/css" href="style.css">
		<style></style>
	</head>
    
<body>
<div class="wait overlay">
	<div class="loader"></div>
</div>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">	
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#collapse" aria-expanded="false">
					<span class="sr-only">navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a href="#" class="navbar-brand">MYA Labs</a>
			</div>
		<div class="collapse navbar-collapse" id="collapse">
			<ul class="nav navbar-nav">
				<li><a href="index.php"><span class="glyphicon glyphicon-home"></span>Home</a></li>
				<li><a href="#story"><span class="glyphicon glyphicon-book"></span>Our Story</a></li>
                <li><a href="#myCarousel"><span class="glyphicon glyphicon-question-sign"></span>Why Lab Grown Diamonds?</a></li>
                <li><a href="#shop"><span class="glyphicon glyphicon-shopping-cart"></span>Shop</a></li>
                <li><a href="#contact"><span class="glyphicon glyphicon-earphone"></span>Contact US</a></li>
            </ul>
            
			<form class="navbar-form navbar-left">
		        <div class="form-group">
		          <input type="text" class="form-control" placeholder="Search" id="search">
		        </div>
		        <button type="submit" class="btn btn-primary" id="search_btn"><span class="glyphicon glyphicon-search"></span></button>
		     </form>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-shopping-cart"></span>Cart<span class="badge">0</span></a>
					<div class="dropdown-menu" style="width:400px;">
						<div class="panel panel-success">
							<div class="panel-heading">
								<div class="row">
									<div class="col-md-3">Sl.No</div>
									<div class="col-md-3">Product Image</div>
									<div class="col-md-3">Product Name</div>
									<div class="col-md-3">Price in $.</div>
								</div>
							</div>
							<div class="panel-body">
								<div id="cart_product">
								<!--<div class="row">
									<div class="col-md-3">Sl.No</div>
									<div class="col-md-3">Product Image</div>
									<div class="col-md-3">Product Name</div>
									<div class="col-md-3">Price in $.</div>
								</div>-->
								</div>
							</div>
							<div class="panel-footer"></div>
						</div>
					</div>
				</li>
				<li><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span>SignIn</a>
					<ul class="dropdown-menu">
						<div style="width:300px;">
							<div class="panel panel-primary">
								<div class="panel-heading">Login</div>
								<div class="panel-heading">
									<form onsubmit="return false" id="login">
										<label for="email">Email</label>
										<input type="email" class="form-control" name="email" id="email" required/>
										<label for="email">Password</label>
										<input type="password" class="form-control" name="password" id="password" required/>
										<p><br/></p>
										<a href="#" style="color:white; list-style:none;">Forgotten Password</a><input type="submit" class="btn btn-success" style="float:right;">
									</form>
								</div>
								<div class="panel-footer" id="e_msg"></div>
							</div>
						</div>
					</ul>
				</li>
                <li><a href="customer_registration.php?register=1"><span class="glyphicon glyphicon-question-sign"></span>Register</a></li>
                
			</ul>
		</div>
	</div>
</div>	
    <p><br></p>
    <img src = "product_images/logo1.jpg" align="middle">
    
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-1"></div>
            
            <div class="col-md-10 col-xs-12">
                <div style="background-image: url('product_images/bg2.webp');  background-attachment: fixed;
  background-size: cover;">
				<div id="story">
                    <h1 style="color:white; font-size:300%; font-family:Times New Roman; font-weight:1000;">Our Story</h1>
                    <p style="color:beige; font-size:120%; font-family:Georgia;">
                    
One rarely acknowledges the toils and pain associated to the mined diamonds. Vast majority of diamonds hail from war ridden conflict zones of Africa. These Diamonds are popularly known as Blood Diamonds. Blood diamonds are diamonds mined in a war zone and sold to finance an insurgency, an invading army's war efforts, or a warlord's activity. Not only these diamonds fuel violence but also employ thousands of homeless orphaned children from the conflict-ridden areas to work in life-threatening diamond mines. 
Due to inadequate planning and regulation, diamond mining has wreaked environmental havoc throughout Africa and other parts of the world. But damage to the environment is not the inevitable result of diamond mining. The mine's operations create 143 pounds of carbon dioxide emissions per carat mined—five-and-a-half times what it takes to make synthetic diamonds. 
Besides these, diamond market is highly regularized with De Beers mining controlling 85% diamond mines. This monopoly allows them to control prices by regulating supply to jack up prices. Lab Grown Diamonds are 20-30% cheaper than mined diamonds. 

                    
                    </p>
				</div>
                </div>
            </div>
            
        </div>
    </div>
    
    
    <!-- carousel-->
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-1"></div>
            
            <div class="col-md-10 col-xs-12">
                <h1 style="color:black; font-size:300%; font-family:Times New Roman; font-weight:1000;">Why Lab Grown Diamonds?</h1>
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
      <img src="product_images/c1.jpg" alt="c1">
    </div>

    <div class="item">
      <img src="product_images/c2.jpg" alt="c2">
    </div>

    <div class="item">
      <img src="product_images/c3.jpg" alt="c3">
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
        </div>
    
    
        <p><br></p>
    
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2 col-xs-12">
				<div id="get_category">
				</div>
				<!--<div class="nav nav-pills nav-stacked">
					<li class="active"><a href="#"><h4>Categories</h4></a></li>
					<li><a href="#">Categories</a></li>
					<li><a href="#">Categories</a></li>
					<li><a href="#">Categories</a></li>
					<li><a href="#">Categories</a></li>
				</div> -->
				<div id="get_brand">
				</div>
				<!--<div class="nav nav-pills nav-stacked">
					<li class="active"><a href="#"><h4>Brand</h4></a></li>
					<li><a href="#">Categories</a></li>
					<li><a href="#">Categories</a></li>
					<li><a href="#">Categories</a></li>
					<li><a href="#">Categories</a></li>
				</div> -->
			</div>
			<div class="col-md-9 col-xs-12">
				<div class="row">
					<div class="col-md-12 col-xs-12" id="product_msg">
					</div>
				</div>
				<div class="panel panel-info">
					<div class="panel-heading" style ="background-color:#fce7f2">
                        <h1 style="color:#706f6f; font-size:200%; font-family:Times New Roman; font-weight:1000;">Top Picks</h1>
                    </div>
                    <div id="shop"></div>
					<div class="panel-body">
						<div id="get_product">
							<!--Here we get product jquery Ajax Request-->
						</div>
						<!--<div class="col-md-4">
							<div class="panel panel-info">
								<div class="panel-heading">Samsung Galaxy</div>
								<div class="panel-body">
									<img src="product_images/images.JPG"/>
								</div>
								<div class="panel-heading">$.500.00
									<button style="float:right;" class="btn btn-danger btn-xs">AddToCart</button>
								</div>
							</div>
						</div> -->
					</div>
				</div>
			</div>
			<div class="col-md-1"></div>
		</div>
	</div>
    
   
    <div align ="center"> 
     <div style="background-image: url('product_images/contactbg.jpg');  background-attachment: fixed; background-size: cover; opaque: 0.2">
      <div id ="contact">
          <h1 style="color:black; font-size:300%; font-family:Times New Roman; font-weight:1000;">Want to sell your products here or drop by a cup of coffee?</h1>
    <form action="" method="POST" enctype="multipart/form-data">
    <input name="action" value="submit" type="hidden"> Your name:<br>
    <input name="name" size="30" type="text"><br> Your email:<br>
    <input name="email" size="30" type="text"><br> Your message:<br>
    <textarea name="message" rows="7" cols="30">
    </textarea><br>
    <input value="Send email" type="submit">
        <p>Address: MYA Labs, Plot 1234, Godbunder Road, Thane west</p>
        <p>Mobile: +91-9892024257</p>
        <p>e-mail:meet.kotak@somaiya.edu</p>
    </form>
    </div>
        </div>
        </div>
        					<div class="panel-footer">&copy; 2019</div>

    
</body>
</html>
















































