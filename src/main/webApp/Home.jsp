<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
	integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<style>
* {
	box-sizing: border-box;
	padding: 0px;
	margin: 0px;
}

.a {
	font-size: 20px;
	height: 80px;
	width: 100%;
	display: flex;
	flex-direction: row;
	justify-content: space-around;
	gap: 20px;
	align-items: center;
	position: sticky;
	top: 0px;
	background-color: rgb(248, 231, 231);
	z-index: 10;
}

.b {
	display: flex;
	flex-direction: row;
	justify-content: space-evenly;
	gap: 30px;
	align-items: center;
	color: black;
}

.c {
	border: 2px solid black;
	border-radius: 10px;
	width: 200px;
	height: 25px;
	display: flex;
	padding: 5px;
	align-items: center;
}

a {
	text-decoration: none;
	color: black;
}

#img1 {
	width: 50px;
	height: 40px;
}

input {
	border: none;
	outline: none;
	background-color: rgb(248, 231, 231);
}

body {
	background-size: 100% 1000px;
}

.d {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	font-size: 20px;
}

.v:hover {
	color:red;
}

#y {
	width: 100%;
	height: 200px;
	display: flex;
	align-items: center;
	font-size: 25px;
}

.maincontainer {
	display: flex;
	flex-direction: row;
	flex-wrap: wrap;
	justify-content: space-around;
	gap: 1px;
	border: 10px black;
	position: relative;
	
    
}

.maincard {
	/* border:2px solid black; */
	width: 200px;
	height: 340px;
}

.cd1 {
	width: 180px;
	height: 290px;
}

#last {
	width: 100%;
	height: 200px;
	margin-top: 20px;
	display: flex;
	align-items: center;
	font-size: 30px;
}
button {
	background-color: rgb(248, 231, 231);
	border: hidden;
	font-size: 20px;
	font-family: serif;
}
</style>
<body>

	<div class=a>
		<div class=b>
			<a><img alt="" src="/Home/AppIcon.png" id="img1"></a> 
			<a href="/MensPageLoad"><h3 class="v">Men</h3></a> 
			  
			<a href="/womenPageLoad"><h3 class="v">Women</h3></a>
			  
			  
			<a href="/Kids.jsp"><h3 class="v">Kids</h3></a>
			
			<a href=""><h3 class="v">Home&Living</h3></a>
		</div>
		
		<div class=b>
			<div class=c>
				<input type="search" placeholder="search here"><i
					class="fa-solid fa-magnifying-glass"></i>
			</div>
			
			<a href="/loginPage"><div class=d>
					<i class="fa-solid fa-user"></i>account
				</div></a> 
				
				<a href=""><div class=d>
					<i class="fa-regular fa-heart"></i>whislist
				</div></a>
				
				   <form action="/displayCarts">
				<button><div class=d><i class="fa-solid fa-bag-shopping"></i>bag
				</div></button></form>
				
		</div>
	</div>
	
	<% HttpSession s1 = request.getSession();
			if(s1.getAttribute("login")==null)
			{
				s1.setAttribute("login","false");
			}
			%>


	<img alt="image" src="/Home/Home page men2.jpg" style="width: 100%; height: 470px">

	<div id="y">NOW OR NEVER DEALS</div>


	<img alt="image" src="/Home/Home1.png"
		style="width: 100%; height: 320px">

	<div id="y">FESTIV CRAZY OFFERS</div>

	<img alt="image" src="/Home/Home2.png"
		style="width: 100%; height: 300px">

	<img alt="image" src="/Home/Home3.png"
		style="width: 100%; height: 300px">

	<div id="last">SHOP BY CATEGORY</div>

	<div class="maincontainer">

		<div class=maincard>
			<a href=""> <img alt="" src="/Home/Home4.png" class=cd1>
		</div>
		</a>

		<div class=maincard>
			<a href=""> <img alt="" src="/Home/Home5.png" class=cd1>
		</div>
		</a>

		<div class=maincard>
			<a href=""> <img alt="" src="/Home/Home6.png" class=cd1>
		</div>
		</a>

		<div class=maincard>
			<a href=""> <img alt="" src="/Home/Home7.png" class=cd1>
		</div>
		</a>

		<div class=maincard>
			<a href=""> <img alt="" src="/Home/Home8.png" class=cd1>
		</div>
		</a>

		<div class=maincard>
			<a href=""> <img alt="" src="/Home/Home9.png" class=cd1>
		</div>
		</a>

		<div class=maincard>
			<a href=""> <img alt="" src="/Home/Home10.png" class=cd1>
		</div>
		</a>

		<div class=maincard>
			<a href=""> <img alt="" src="/Home/Home11.png" class=cd1>
		</div>
		</a>

		<div class=maincard>
			<a href=""> <img alt="" src="/Home/Home12.png" class=cd1>
		</div>
		</a>

		<div class=maincard>
			<a href=""> <img alt="" src="/Home/Home13.png" class=cd1>
		</div>
		</a>

		<div class=maincard>
			<a href=""> <img alt="" src="/Home/Home14.png" class=cd1>
		</div>
		</a>

		<div class=maincard>
			<a href=""> <img alt="" src="/Home/Home15.png" class=cd1>
		</div>
		</a>

		<div class=maincard>
			<a href=""> <img alt="" src="/Home/Home16.png" class=cd1>
		</div>
		</a>

		<div class=maincard>
			<a href=""> <img alt="" src="/Home/Home17.png" class=cd1>
		</div>
		</a>

		<div class=maincard>
			<a href=""> <img alt="" src="/Home/Home18.png" class=cd1>
		</div>
		</a>

		<div class=maincard>
			<a href=""> <img alt="" src="/Home/Home19.png" class=cd1>
		</div>
		</a>

		<div class=maincard>
			<a href=""> <img alt="" src="/Home/Hom20.png" class=cd1>
		</div>
		</a>

		<div class=maincard>
			<a href=""> <img alt="" src="/Home/Home21.png" class=cd1>
		</div>
		</a>

		<div class=maincard>
			<a href=""> <img alt="" src="/Home/Home22.png" class=cd1>
		</div>
		</a>

		<div class=maincard>
			<a href=""> <img alt="" src="/Home/Home23.png" class=cd1>
		</div>
		</a>

		<div class=maincard>
			<a href=""> <img alt="" src="/Home/Home24.png" class=cd1>
		</div>
		</a>


	</div>

</body>
</html>