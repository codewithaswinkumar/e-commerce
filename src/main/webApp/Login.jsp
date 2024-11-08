<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style type="text/css">
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

#login{
 display: flex;
 background-color:whitesmoke; 
 width: 460px;
 height: 290px;
 justify-content: center;
 margin-left: 380px;
 margin-top: 130px;
 padding-top:20px;
 box-shadow: 5px 5px 8px black;
        
}
#login-gap{
 margin-top: 20px;
}
h1{
display:flex;
  justify-content: center;
}
.login-input{
  padding:5px;
  width:100%;
  box-shadow: 2px 2px 2px black;
}
#a{

background-color:  rgb(213, 35, 139);
color:white;
border-radius: 15px;
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
</head>
<body>

<div class=a>
<div class=b >
     <a><img alt="" src="/Home/AppIcon.png" id="img1"></a>
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
    
    
<div class="back"><a href="Home.jsp">Home</a><h3>/</h3><p class="current">Account Login</p>  </div>
<div id="login">
   <form action="usercheck">
       <h1>Login</h1>
       <input class="login-input" id="login-gap" class="" type="text" placeholder="Mobile number" name="userMobile" required="required"><br><br>
       <input class="login-input" type="password" placeholder="Password" name="userPassword" required="required"><br><br>
       <input  class="login-input" type="submit" value="SIGN IN" id="a"><br><br>
       <a href="/CreateAccount.jsp">Create an account</a>&nbsp;&nbsp;&nbsp;&nbsp; 
       <a href="/ForgotPass.jsp">Forgot your password?</a>
      
       
   </form>
   </div>
   
   <%
    String s = (String)request.getAttribute("status");
   if(s!=null)
   {
	   boolean b = Boolean.parseBoolean(s);
	   if(b)
	   {
		   HttpSession s2 = request.getSession();
			  s2.setAttribute("login","true");
			RequestDispatcher dispatcher = request.getRequestDispatcher("/");
			dispatcher.forward(request, response);
	   }
	   else
		  {
			%>
			
			
			<h1 style="color:Red ">In-Valid CREDENTIALS.....!!!!</h1>
			
		  <% 
		  }
	  }
	%>
  
</body>
</html>