<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.jsp.ecommerce.entity.MenProductsOwn" %>
    <%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mens Shirts</title>
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
       padding: 14px;
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
 .cart-icon{
       padding-left: 40px;
       }
#dressBut{
position:absolute;
 margin-left: 122px;
 border: hidden;
  background-color: white;
 
 
}
</style>

</script>
</head>
<body>

<div class="a">
<div class="b" >
     <a><img alt="" src="/Home/AppIcon.png" id="img1"></a>
       <a href="/MensPageLoad" ><h3 class="v">Men</h3></a>
        <form action="/womenPageLoad">
			<a href="/Women.jsp"><button><h3 class="v">Women</h3></button></a> 
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
 

   <div class="back"><a href="Home.jsp">Home</a><h3>/</h3><a href="/MensPageLoad">Men</a><h3>/</h3><p class="current">MenItems</p>  </div>
   
     
     <div class=maincontainer>
     <% 
      List<MenProductsOwn> menslist =(List) request.getAttribute("menShirts");
     
     
     for(MenProductsOwn mcs : menslist)
     {
     %>
        <div class=maincard>
         <a href=""><div class=subcard> <img alt="" src="<%= mcs.getFilePath() %>"  class=cd1> 
         
         <form action="addWishM">
         <div class="wishlist">
                       <span class="heart-icon" ><i class="fa-regular fa-heart"></i></span>
         
                    </div>
          </form>
              <div class=subcd>
                <p><%=mcs.getShirtType() %></p>
                <div class=line><p>Rs.<%=mcs.getDiscountCost() %>/-</p><p class=cross>Rs.<%=mcs.getOriginalCost() %></p></div>
                <form action="addcM">
                 <input hidden="true" value=<%=mcs.getMsid()%> name="cid">
                  <span class="cart-icon" ><button id="dressBut"><i class="fa-solid fa-bag-shopping"></button></i></span>
                  </form>
                 
              </div></div></a>
         </div>
        
     
     <%} %>
      </div>
     
     
     
     
     
     
     
     
     
     
     
     
    <!--   <div class=maincontainer>
     
        <div class=maincard>
         <a href=""><div class=subcard> <img alt="" src="/menShi1.png"  class=cd1> <div class="wishlist">
                       <span class="heart-icon" ><i class="fa-regular fa-heart"></i></span>
         
                    </div>
              <div class=subcd>
                <p>Regular Fit resort shirt</p>
                <div class=line><p>Rs.1799.00/-</p><p class=cross>Rs.2,299.00</p></div>
                  <span class="cart-icon" ><i class="fa-solid fa-bag-shopping"></i></span>
              </div></div></a>
         </div>
         
          <div class="maincard">
         <a href=""><div class="subcard"> <img alt="" src="/MenS2.png"  class=cd1> <div class="wishlist"> 
         <span class="heart-icon" onclick="toggleHeart(this)"><i class="fa-regular fa-heart"></i></span> </div>  
              <div class="subcd">
                <p>Relaxed Fit Flannel shirt</p>
                <div class="line"><p>Rs.1599.00/-</p><p class="cross">Rs.1,999.00</p></div>
                   <span class="cart-icon" ><i class="fa-solid fa-bag-shopping"></i></span>
              </div></div></a>
         </div>
         
          <div class=maincard>
         <a href=""><div class=subcard> <img alt="" src="/Mens3.png"  class=cd1> <div class="wishlist"> 
         <span class="heart-icon" onclick="toggleHeart(this)"><i class="fa-regular fa-heart"></i></span> </div>
              <div class=subcd>
                <p>Loose Fit Overshirt</p>
                <div class=line><p>Rs.2999.00/-</p><p class=cross>Rs.3,999.00</p></div>
                   <span class="cart-icon" ><i class="fa-solid fa-bag-shopping"></i></span>
              </div></div></a>
         </div>
         
          <div class=maincard>
         <a href=""><div class=subcard> <img alt="" src="/MenS4.png"  class=cd1> <div class="wishlist"> 
         <span class="heart-icon" onclick="toggleHeart(this)"><i class="fa-regular fa-heart"></i></span> </div>
           
              <div class=subcd>
                <p>Padded overshirt</p>
                <div class=line><p>Rs.2,599.00/-</p><p class=cross>Rs.3,299.00</p></div>
                   <span class="cart-icon" ><i class="fa-solid fa-bag-shopping"></i></span>
              </div></div></a>
         </div>
         
          <div class=maincard>
         <a href=""><div class=subcard> <img alt="" src="/Mens5.png"  class=cd1> 
           <div class="wishlist">
         <span class="heart-icon" onclick="toggleHeart(this)"><i class="fa-regular fa-heart"></i></span>
             <i class="fill-heart" class="fa-sharp fa-solid fa-heart"></i>
          </div> 
              <div class=subcd>
                <p>Regular Fit Oxford shirt</p>
                <div class=line><p>Rs.999.00/-</p><p class=cross>Rs.1,499.00</p></div>
                   <span class="cart-icon" ><i class="fa-solid fa-bag-shopping"></i></span>
              </div></div></a>
         </div>
         
          <div class=maincard>
         <a href=""><div class=subcard> <img alt="" src="/Mens6.png"  class=cd1> <div class="wishlist">
         <span class="heart-icon" onclick="toggleHeart(this)"><i class="fa-regular fa-heart"></i></span> </div> 
              <div class=subcd>
                <p>Twill overshirt</p>
                <div class=line><p>Rs.1,999.00/-</p><p class=cross>Rs.2,699.00</p></div>
                 <span class="cart-icon" ><i class="fa-solid fa-bag-shopping"></i></span>
              </div></div></a>
         </div>
         
          <div class=maincard>
         <a href=""><div class=subcard> <img alt="" src="/MenS7.png"  class=cd1> <div class="wishlist">
         <span class="heart-icon" onclick="toggleHeart(this)"><i class="fa-regular fa-heart"></i></span> </div> 
              <div class=subcd>
                <p>Relaxed Fit Flannel shirt</p>
                <div class=line><p>Rs.1,599.00/-</p><p class=cross>Rs.1,999.00</p></div>
                 <span class="cart-icon" ><i class="fa-solid fa-bag-shopping"></i></span>
              </div></div></a>
         </div>
         
          <div class=maincard>
         <a href=""><div class=subcard> <img alt="" src="/MenS8.png"  class=cd1> <div class="wishlist">
         <span class="heart-icon" onclick="toggleHeart(this)"><i class="fa-regular fa-heart"></i></span> </div>
              <div class=subcd>
                <p>Regular Fit Oxford shirt</p>
                <div class=line><p>Rs.999.00/-</p><p class=cross>Rs.1,499.00</p></div>
                 <span class="cart-icon" ><i class="fa-solid fa-bag-shopping"></i></span>
              </div></div></a>
         </div>
         
          <div class=maincard>
         <a href=""><div class=subcard> <img alt="" src="/MenS9.png"  class=cd1> <div class="wishlist">
         <span class="heart-icon" onclick="toggleHeart(this)"><i class="fa-regular fa-heart"></i></span> </div> 
              <div class=subcd>
                <p>Regular Fit Corduroy shirt</p>
                <div class=line><p>Rs.999.00/-</p><p class=cross>Rs.1,499.00</p></div>
                 <span class="cart-icon" ><i class="fa-solid fa-bag-shopping"></i></span>
              </div></div></a>
         </div>
         
          <div class=maincard>
         <a href=""><div class=subcard> <img alt="" src="/MenS10.png"  class=cd1> <div class="wishlist"> 
         <span class="heart-icon" onclick="toggleHeart(this)"><i class="fa-regular fa-heart"></i></span> </div>
              <div class=subcd>
                <p>Regular Fit Rib-knit resort shirt</p>
                <div class=line><p>Rs.1799.00/-</p><p class=cross>Rs.2,299.00</p></div>
                 <span class="cart-icon" ><i class="fa-solid fa-bag-shopping"></i></span>
              </div></div></a>
         </div>
         
         
         
          <div class=maincard>
         <a href=""><div class=subcard> <img alt="" src="/MenS11.png"  class=cd1> <div class="wishlist"> 
         <span class="heart-icon" onclick="toggleHeart(this)"><i class="fa-regular fa-heart"></i></span> </div>
              <div class=subcd>
                <p>Twill overshirt</p>
                <div class=line><p>Rs.1,599.00/-</p><p class=cross>Rs.2,499.00</p></div>
                 <span class="cart-icon" ><i class="fa-solid fa-bag-shopping"></i></span>
              </div></div></a>
         </div>
         
         
         
          <div class=maincard>
         <a href=""><div class=subcard> <img alt="" src="/MenS12.png"  class=cd1> <div class="wishlist">
         <span class="heart-icon" onclick="toggleHeart(this)"><i class="fa-regular fa-heart"></i></span> </div> 
              <div class=subcd>
                <p>Loose Fit Short-sleeved shirt</p>
                <div class=line><p>Rs.899.00/-</p><p class=cross>Rs.1,499.00</p></div>
                 <span class="cart-icon" ><i class="fa-solid fa-bag-shopping"></i></span>
              </div></div></a>
         </div>
         
         <div class=maincard>
         <a href=""><div class=subcard> <img alt="" src="/MenS13.png"  class=cd1> <div class="wishlist"> 
         <span class="heart-icon" onclick="toggleHeart(this)"><i class="fa-regular fa-heart"></i></span> </div>
              <div class=subcd>
                <p>Regular Fit Patterned lyocell shirt</p>
                <div class=line><p>Rs.1,599.00/-</p><p class=cross>Rs.1,999.00</p></div>
                 <span class="cart-icon" ><i class="fa-solid fa-bag-shopping"></i></span>
              </div></div></a>
         </div>
         
         <div class=maincard>
         <a href=""><div class=subcard> <img alt="" src="/MenS14.png"  class=cd1> <div class="wishlist"> 
         <span class="heart-icon" onclick="toggleHeart(this)"><i class="fa-regular fa-heart"></i></span> </div>
              <div class=subcd>
                <p>Regular Fit Patterned lyocell shirt</p>
                <div class=line><p>Rs.1,699.00/-</p><p class=cross>Rs.1,999.00</p></div>
                 <span class="cart-icon" ><i class="fa-solid fa-bag-shopping"></i></span>
              </div></div></a>
         </div> 
         
         <div class=maincard>
         <a href=""><div class=subcard> <img alt="" src="/MenS15.png"  class=cd1> <div class="wishlist"> 
         <span class="heart-icon" onclick="toggleHeart(this)"><i class="fa-regular fa-heart"></i></span> </div>
              <div class=subcd>
                <p>Patterned resort shirt</p>
                <div class=line><p>Rs.899.00/-</p><p class=cross>Rs.1,299.00</p></div>
                 <span class="cart-icon" ><i class="fa-solid fa-bag-shopping"></i></span>
              </div></div></a>
         </div>
         
        
     </div>   -->
</body>
</html>