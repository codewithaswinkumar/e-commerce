<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WOMEN PAGE</title>
<link rel="stylesheet" href="women.css"></link>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css">
<link>
</head>
<body>
	<section id="header">
		<a href="#"><img src="logoimg.png" class="logo"></a>
		<div>
			<ul id="navbar">
				<li><a href="Home.jsp">Home</a></li>
				<li><a href="MEN.jsp">Men</a></li>
				<li><a href="Women.jsp">Women</a></li>
				<li><img id="search" src="search.png"></li>
				<li><a href="Login.jsp"><img id="profile"
						src="profile.png"></a></li>
				<li><a href="Cart.jsp"><img id="cart" src="cart-icon.png"></a></li>
			</ul>
		</div>
	</section>
	<section id="bar">
		<span>WOMEN</span>
	</section>
	<div class="slideshow-container">

		<div class="mySlides fade">
			<div class="numbertext">1 / 3</div>
			<img src="00.png" style="width: 100%">
		</div>

		<div class="mySlides fade">
			<div class="numbertext">2 / 3</div>
			<img src="11.png" style="width: 100%">
		</div>

		<div class="mySlides fade">
			<div class="numbertext">3 / 3</div>
			<img src="22.png" style="width: 100%">
		</div>

	</div>
	<br>

	<div style="text-align: center">
		<span class="dot"></span> <span class="dot"></span> <span class="dot"></span>
	</div>

<section id="product1">
		<h2>Featured Products</h2>
		<p>Different Collecctions Of Different Models</p>
		<div id="pro-container">
			<div class="pro">

				<img src="Products\f11.jpg">
				<div id="des">
					<span>Adidas</span>
					<h5>Printed Shirt</h5>
					<h4>Rs999/-</h4>
					<a href="#"><img src="cart-icon.png"></a>
				</div>
			</div>
			<div class="pro">
				<img src="Products\f22.jpg">
				<div id="des">
					<span>TingDong</span>
					<h5>DresBerry</h5>
					<h4>Rs1999/-</h4>
					<a href="#"><img src="cart-icon.png"></a>
				</div>
			</div>
			<div class="pro">
				<img src="Products\f33.jpg">
				<div id="des">
					<span>Timeless</span>
					<h5>Aspora Women Black&Red Floral Fit</h5>
					<h4>Rs550/-</h4>
					<a href="#"><img src="cart-icon.png"></a>
				</div>
			</div>
			<div class="pro">
				<img src="Products\f55.jpg">
				<div id="des">
					<span>Rowdy</span>
					<h5>Women Floral Printed Maxi Skirts</h5>
					<h4>Rs900/-</h4>
					<a href="#"><img src="cart-icon.png"></a>
				</div>
			</div>
			<div class="pro">
				<img src="Products\f44.jpg">
				<div id="des">
					<span>Venom</span>
					<h5>Ethnic Motif Kanjeevaram Saree</h5>
					<h4>Rs1400/-</h4>
					<a href="#"><img src="cart-icon.png"></a>
				</div>
			</div>
			<div class="pro">
				<img src="Products\f66.jpg">
				<div id="des">
					<span>Galaxy</span>
					<h5>Blue Semi-Stitched Lehenga&Blouse</h5>
					<h4>Rs2400/-</h4>
					<a href="#"><img src="cart-icon.png"></a>
				</div>
			</div>
			<div class="pro">
				<img src="Products\f77.jpg">
				<div id="des">
					<span>Fireflies</span>
					<h5>Casual T-shirt</h5>
					<h4>Rs1700/-</h4>
					<a href="#"><img src="cart-icon.png"></a>
				</div>
			</div>
			<div class="pro">
				<img src="Products\f88.jpg">
				<div id="des">
					<span>Adidas</span>
					<h5>Women Fit Jeans</h5>
					<h4>Rs400/-</h4>
					<a href="#"><img src="cart-icon.png"></a>
				</div>
			</div>
		</div>
	</section>
	<section id="banner">
		<h4>Repair Services</h4>
		<h2>
			Up to<span>70% OFF</span>-All t-shirts & Accessories
		</h2>
		<button class="normal">Explore More</button>
	</section>
	<footer class="foot">
		<div class="col">
			<img src="logoimg.png">
			<h4>Contact Us</h4>
			<p>
				<strong>Address:</strong>Plot no 188,JNTU,Hyderabad
			</p>
			<p>
				<strong>Phone:</strong>+91 919133445566
			</p>
			<p>
				<strong>Hours:</strong>10:00 - 18:00, Mon - Sat
			</p>
		</div>
		<div class="follow">
			<h4>Follow Us</h4>
			<a href=""><img src="facebook.png"></a> <a href=""><img
				src="instagram.png"></a> <a href=""><img src="snap.png"></a>
			<a href=""><img src="youtube.png"></a> <a href=""><img
				src="twitter.png"></a>
		</div>
		<div class="col2">
			<h4>My Account</h4>
			<a href="#">Sing In</a> <a href="#">View Cart</a> <a href="#">My
				Wishlist</a> <a href="#">Track My Order</a> <a href="#">Help</a>
		</div>
		<div id="col3">
			<h4>Secured Payment Gateways</h4>
			<img src="pay.png">
		</div>
	</footer>



	<script>
		let slideIndex = 0;
		showSlides();

		function showSlides() {
			let i;
			let slides = document.getElementsByClassName("mySlides");
			let dots = document.getElementsByClassName("dot");
			for (i = 0; i < slides.length; i++) {
				slides[i].style.display = "none";
			}
			slideIndex++;
			if (slideIndex > slides.length) {
				slideIndex = 1
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" active", "");
			}
			slides[slideIndex - 1].style.display = "block";
			dots[slideIndex - 1].className += " active";
			setTimeout(showSlides, 2000);
		}
	</script>
</body>
</html>