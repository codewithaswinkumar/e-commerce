<%@page import="com.jsp.ecommerce.entity.WomenDress"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Women dresses</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<style>
   *{
   padding: 0px;
   margin: 0px;
   box-sizing: border-box;
   }
  body{
  width:100%;
  height:100%;
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
    background-color:  rgb(248, 231, 231);
    z-index: 10;
 
   
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
  a{
	text-decoration: none;
	color:black;
	}
 .maincontainer{
	display:flex;
	flex-direction:row;
	flex-wrap:wrap;
       justify-content: space-around;
       margin-top: 50px;
       gap:8px;
       border:10px black;
      position: relative;
     
      
	}
	.wishlist{
	position: absolute;
	margin-top:-25px;
	margin-left: 165px;
	}
	.maincard{
	      /* border:2px solid black; */
	       
       width: 200px;
        height: 340px;
        
       
    }
     .cd1{

        width: 200px;
        height: 250px;
    }
     .cross{
    text-decoration: line-through;
    opacity: 0.5;
    }
    .line{
     display: inline-flex;
     gap:10px;
     font-size: 14px;
     
    }
    .heart-icon{
     color:black;
     transition:color 0.3s;
    }
    .heart-icon:hover{
    color:red;
    }
    
    .cart-icon{
       padding-left: 40px;
     
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
    #navbarBut {
	background-color: rgb(248, 231, 231);
	border: hidden;
	font-size: 20px;
	font-family: serif;
}
#dressBut{
position:absolute;
 margin-left: 122px;
 border: hidden;
  background-color: white;
 
 
}
 .btn{
      background: transparent;
      border: none;
    outline: none;
    color:white;
   }
</style>
  
<body>
       <div class= "a" >
<div class="b" >
     <a><img alt="" src="/Home/AppIcon.png" id="img1"></a>
       <a href="/MensPageLoad" ><h3 class="v">Men</h3></a>
        <form action="/womenPageLoad">
			<a href="/Women.jsp"><button id="navbarBut"><h3 class="v">Women</h3></button></a> 
			   </form>
        <a href="/Kids.jsp"><h3 class="v">Kids</h3></a>
      <a href=""><h3 class="v"> Home&Living</h3></a>
           </div>
         <div class="b">
          <div class="c" ><input type="search" placeholder="search here"><i class="fa-solid fa-magnifying-glass"></i></div>
           <a href="/loginPage"><div class=d><i class="fa-solid fa-user"></i>account</div></a>
           <a href=""><div class=d><i class="fa-regular fa-heart"></i>whislist</div></a>
           
           <a href="/displayCarts"><div class=d><i class="fa-solid fa-bag-shopping"></i>bag</div></a>
                  
                </div>
                
    </div>
 

   <div class="back"><a href="Home.jsp">Home</a><h3>/</h3><a href="Women.jsp">Women</a><h3>/</h3><p class="current">Dresses</p>  </div>
   
     <div class=maincontainer>
    <%
    
                 List<WomenDress> list = (List)request.getAttribute("womenPage");
                  for(WomenDress wd : list)
                  {
     %>
       <div class=maincard>
         <a href=""><div class=subcard> <img alt="" src="<%=wd.getFilePath() %>"  class=cd1> 
         <form action="addWish">
         <div class="wishlist">
                       <span class="heart-icon" >  <button onclick="toggle()" id="btnh1" class="btn" ><i class="fa-solid fa-heart"></i></button></i></span>
                    </div>
            </form>
              <div class=subcd>
                <p><%=wd.getDressType() %></p>
                <div class=line><p>Rs.<%=wd.getDiscountCost() %></p><p class=cross>Rs.<%= wd.getOriginalCost() %></p></div>
                <form action="addc">
                 <input hidden="true" value=<%=wd.getWdId()%> name="cid">
                  <span class="cart-icon" ><button id="dressBut"><i class="fa-solid fa-bag-shopping"></button></i></span>
                  </form>
              </div></div></a>
         </div>
          <%
           }
          %>
         </div>
       


    <script>

        var btnvar=document.getElementById('btnh1');
        function toggle()
        {
            if(btnvar.style.color == 'red')
            {
                btnvar.style.color = 'white'
            }
            else
            {
                btnvar.style.color = 'red'
                
            }
        }
    </script>
</body>
</html>