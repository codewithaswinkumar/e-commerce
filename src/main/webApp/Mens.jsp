<%@page import="java.util.List"%>
<%@page import="com.jsp.ecommerce.entity.MenCategory" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<style>
   *{
   padding: 0px;
   margin: 0px;
   box-sizing: border-box;
   }
 
  .a{
  font-size:20px;
  height:80px;

  display:flex;
  flex-direction:row;
  justify-content:space-around;
  gap:20px;
  align-items:center;
   position: sticky;
   top:0px;
   background-color:rgb(248, 231, 231);
  }
  .b{
  display:flex;
  flex-direction:row;
  justify-content:space-around;
  gap:30px;
  align-items:center;
 
  }
 input{
  border: none;
  outline: none;
  background-color: white;
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
 
  }
  .d{
    display: flex;
    flex-direction: column;
    justify-content:center;
    align-items:center;
    font-size: 20px;
  }
  #v:hover {
	
	color: red;
	
	}
  
	
	.ab{
	 display: flex;
	 flex-direction: row;
	
	}
	a{
	text-decoration: none;
	color:black;
	}
	
	.img1{
	width:100%;
	height:500px;
	
	
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
   #img1{
   width: 50px;
   height: 40px;
   }
   .but{
	background-color:rgb(248, 231, 231);
	border: hidden;
	font-size: 20px;
	font-family: serif;
	
	
}
button {
	border: hidden;
	font-size: 20px;
	font-family: serif;
	background-color:white;
}

</style>

<body>
    <div class=a>
<div class=b >
    <a><img alt="" src="/Home/AppIcon.png" id="img1"></a> 
       <a href="/MensPageLoad" ><h3 id="v">Men</h3></a>
        <form action="/womenPageLoad">
			<a href="/Women.jsp"><button class="but"><h3 class="v">Women</h3></button></a> 
			   </form>
        <a href="/Kids.jsp"><h3 id="v">Kids</h3></a>
      <a><h3 id="v"> Home&Living</h3></a>
           </div>
         <div class=b>
           <a ><div class=c><input type="serch" placeholder="Search here"><i class="fa-solid fa-magnifying-glass"></i></div></a>
           <a href="/loginPage"><div class=d><i class="fa-solid fa-user"></i>account</div></a>
           <a><div class=d><i class="fa-regular fa-heart"></i>whislist</div></a>
          
           <form action="addc"></form>
				 <a href="/displayCarts"><button class="but"><div class=d><i class="fa-solid fa-bag-shopping"></i>bag
				</div></button></a>
          
         </div>
    </div>
    
       <div class="back"><a href="Home.jsp">Home</a><h3>/</h3><a href="Mens.jsp"><p class="current">Men<p></a>  </div>
   
    <div class=img1><img alt="" src="/Home/Home page m1.jpg" class="img1"> </div>
    
    <div class=maincontainer>
         
             <%
           List<MenCategory> mencatList = (List) request.getAttribute("menCategories");
                    
            	for(MenCategory mc : mencatList)
            	{           
                    %> 
                   
                   <form action=<%=mc.getUrl_controllcls() %>>
                   
			<div class="maincard">
			    
			      <input hidden="true" value=<%=mc.getCategoryId()%> name="catId">
			      <div class=subcard><button ><img alt="" src="<%=mc.getFilePath()%>" name="path" class=cd1>
				 <div class=subcd><b><%=mc.getProdType()%></b>
				 <p><%=mc.getInfo()%></p>
		       
				</div></button></div></div></form>
				
			  <%
			}
			  %>
         </div> 

         
      
   
    
  <!--   <div class=maincontainer>
    
          <div class=maincard>
         <a href="/MenShirts.jsp"><div class=subcard> <img alt="" src="/shirts.png"  class=cd1>
              <div class=subcd><b>Shirts</b>
                <p>mens cotton shirts</p>
              </div></div></a>
         </div>
         
         <div class=maincard>
         <a><div class=subcard> <img alt="" src="/Hoodies.png"  class=cd1>
           <div class=subcd><b>Hoodies</b>
             <p>mens Relaxfit Hoodies</p>
           </div></div></a>
         </div>
         
         <div class=maincard>
         <a><div class=subcard> <img alt="" src="/Jakets.png"  class=cd1>
         <div class=subcd><b>Jakets</b>
           <p>mens Warm&Stylish Jakets</p>
         </div></div></a>
         </div>
         
         <div class=maincard>
         <a><div class=subcard> <img alt="" src="/Jeens.png"  class=cd1>
         <div class=subcd><b>Jeens</b>
             <p>mens jeens</p>
         </div></div></a>
         </div>
         
         <div class=maincard>
         <a><div class=subcard> <img alt="" src="/Shoes.png"  class=cd1>
         <div class=subcd><b>Shooes</b>
            <p>Intrnational styles</p>
         </div></div></a>
         </div>
         
           <div class=maincard>
         <a><div class=subcard> <img alt="" src="/Suits.png"  class=cd1>
         <div class=subcd><b>Suits</b>
             <p>Perfect Blazers</p>
         </div></div></a>
         </div>
         
           <div class=maincard>
         <a><div class=subcard> <img alt="" src="/Men2.png"  class=cd1>
         <div class=subcd><b>Sleepwear & Loungewear</b>
             <p>Trackpants</p>
         </div></div></a>
         </div>
         
           <div class=maincard>
         <a><div class=subcard> <img alt="" src="/Accessories.png"  class=cd1>
         <div class=subcd><b>Accessories</b>
           <p>Accessories styles</p>
         </div></div></a>
         </div>
         
         
         <div class=maincard>
         <a><div class=subcard> <img alt="" src="/Men.png"  class=cd1>
         <div class=subcd><b>Shorts</b>
          <p>Mens Relax fit Shorts</p>
         </div></div></a>
         </div>
         <div class=maincard>
         <a><div class=subcard> <img alt="" src="/Men3.png"  class=cd1>
         <div class=subcd><b>Sports Wear</b>
         <p>sports & workout materials </p>
         
         </div></div></a>
         </div>
    </div> -->
</body>
</html>