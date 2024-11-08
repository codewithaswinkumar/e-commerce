<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="java.util.List"%>
<%@page import="com.jsp.ecommerce.entity.WomenPage"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Womens</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style type="text/css">
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
.maincontainer{
	display:flex;
	flex-direction:row;
	flex-wrap:wrap;
       justify-content: space-around;
       margin-top: 50px;
       gap:8px;
      
	}
	.maincard{
	      /* border:2px solid black; */
	       
       width: 200px;
        height: 340px;
       
    }
    .cd1{

        width: 200px;
        height: 250px;
        border-radius: 100%;
    }
    .subcd{
    display:flex;
    flex-direction:column;
    justify-content: center;
    align-items: center;
      
      
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
    
    	.maincontainer{
	display:flex;
	flex-direction:row;
	flex-wrap:wrap;
       justify-content: space-around;
       margin-top: 50px;
       gap:8px;
      
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
    .subcd{
    display:flex;
    flex-direction:column;
    justify-content: center;
    align-items: center;
      
      
    }
    .img1{
	width:100%;
	height:490px;
    }
    #wpBut{
	background-color: rgb(248, 231, 231);
	border: hidden;
	font-size: 20px;
	font-family: serif;
    }
     button {
	background-color:white;
	border: hidden;
	font-size: 20px;
	font-family: serif;
}
    
</style>
</head>
<body>
     
     <div class="a">
<div class="b" >
     <a><img alt="" src="/Home/AppIcon.png" id="img1"></a>
       <a href="/MensPageLoad" ><h3 class="v">Men</h3></a>
       <form action="/womenPageLoad">
			<a href="/Women.jsp"><button  id="wpBut"><h3 class="v">Women</h3></button></a> 
			   </form>
        <a href="/Kids.jsp"><h3 class="v">Kids</h3></a>
      <a href=""><h3 class="v"> Home&Living</h3></a>
           </div>
         <div class="b">
          <div class="c" ><input type="search" placeholder="search here"><i class="fa-solid fa-magnifying-glass"></i></div>
           <a href="/loginPage"><div class=d><i class="fa-solid fa-user"></i>account</div></a>
           <a href=""><div class=d><i class="fa-regular fa-heart"></i>whislist</div></a>
           
            
				 <a href="/displayCarts"><div class=d><i class="fa-solid fa-bag-shopping"></i>bag
				</div></a>
           
         </div>
    </div>
    
      <div class="back"><a href="Home.jsp">Home</a><h3>/</h3><p class="current">Women</p>  </div>
  
  <div class=img1><img alt="" src="/Women/WPhome.jpg" class="img1"> </div>
  
   <div class=maincontainer>
         
           <%
               List<WomenPage> list = (List) request.getAttribute("womenPage");
                    
            	for(WomenPage wp : list)
            	{

                                    
                    %>
			<div class="maincard">
			    <form action="<%=wp.getAct_link()%>">
			      <div class=subcard><button ><img alt="" src="<%=wp.getFilePath()%>" name="path" class=cd1>
				 <div class=subcd><b><%=wp.getItemName()%></b>
				 <p><%=wp.getInfo() %></p>
		       
				</div></button></div></form></div>
				
			  <%
			}
			  %>
         </div>

		
</body>
</html>