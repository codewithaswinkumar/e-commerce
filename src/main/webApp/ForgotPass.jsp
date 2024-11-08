<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot Password</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<style>
 *
{
 box-sizing: border-box;
  margin: 0px;
  padding: 0px;
   
}


.a{
  font-size:20px;
  height:80px;
  width:100%;
  display:flex;
  flex-direction:row;
  justify-content:space-around;
  gap:20px;
  align-items:center;
   position: sticky;
   top:0px;
    background-color: rgb(248, 231, 231);
 
   
  }
  .b{
  display:flex;
  flex-direction:row;
  justify-content:space-evenly;
  gap:30px;
  align-items:center;
  color:black;
  }
  
  .c{
  border:2px solid black;
  border-radius: 10px;
  width:200px;
  height:25px;
   display:flex;
   padding:5px;
    align-items:center;
   
 
  }
  a{
   text-decoration: none;
   color: black;
  }
  #img1{
    width: 50px;
    height:40px;
  }
  input{
  border: none;
  outline: none;
  background-color:  rgb(248, 231, 231);
  }
  body{
  background-size: 100% 1000px;
  }
  .d{
    display: flex;
    flex-direction: column;
    justify-content:center;
     align-items: center;
    font-size: 20px;
  }
  .v:hover {
	color:red;
	
}
 
.container {
   width:400px;
   height:240px; 
	display: flex;
	justify-content: center;
	align-items: center;
	background-color: whitesmoke; 
	margin-left: 400px;
 margin-top: 150px;
 border-radius: 50px;
 box-shadow: 5px 5px 8px black;
}
#Reset{
  background-color: rgb(213, 35, 139);
  color: white;
  border-radius: 15px;
}
.login-input{
 width: 100%;
 padding: 5px;
  box-shadow: 2px 2px 2px black;
}
h2{
margin-bottom: 30px;
}

p,a{
display: inline;
text-decoration: none;
}
.back{
    height:40px;
     display:flex;
     flex-direction: row;
     gap:8px;
     justify-content: center;
     align-items:center;
     position:sticky;
     top:80px;
     z-index: 9;
     background-color: white;
     margin-top: 0px;
     
     
    }
    .current{
    color: red;
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
<div class=b >
     <a><img alt="" src="/favicon-32x32.png" id="img1"></a>
       <a href="/MensPageLoad" ><h3 class="v">Men</h3></a>
        <form action="/womenPageLoad">
			<a href="/Women.jsp"><button><h3 class="v">Women</h3></button></a> 
			   </form>
        <a href="/Kids.jsp"><h3 class="v">Kids</h3></a>
      <a href=""><h3 class="v"> Home&Living</h3></a>
           </div>
         <div class=b>
          <div class=c ><input type="search" placeholder="search here"><i class="fa-solid fa-magnifying-glass"></i></div>
           <a href="/Login.jsp"><div class=d><i class="fa-solid fa-user"></i>account</div></a>
           <a href=""><div class=d><i class="fa-regular fa-heart"></i>whislist</div></a>
          
           <form action="addc">
				 <a href="/cart.jsp"><button><div class=d><i class="fa-solid fa-bag-shopping"></i>bag
				</div></button></a></form>
          
         </div>
    </div>
    
    
<div class="back"><a href="Home.jsp">Home</a><h3>/</h3><a href="/Login.jsp">Login</a><h3>/</h3><p class="current">Forgot Password</p></div>
   <div class="container">
      <form action="">
      <h2>RESET PASSWORD</h2>
         <input class="login-input" type="email" placeholder="Email" required="required"><br><br>
         <a href=""><div><input class="login-input" type="submit" value="RESET PASSWORD" id="Reset"></div></a>
      </form>
   </div>
</body>
</html>