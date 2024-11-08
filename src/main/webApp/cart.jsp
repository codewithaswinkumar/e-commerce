<%@page import="java.util.Iterator"%>
<%@page import="com.jsp.ecommerce.entity.CartOwn"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart</title>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
 *{
  box-sizing: border-box;
  margin: 0px;
  padding: 0px;
 background-color:;
 
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

#a{
display:flex;
 width: 100%;
 height:300px;;;

 margin-top:100px;;
    flex-direction:column;
     align-items: center;
     justify-content: center;
}
#c{
 width: 200px;
 height: 30px;
 margin-top:20px;
 
 border:2px solid red;
 display: flex;
  justify-content: center;
  align-items: center;
}
.continue-shop{
 text-decoration: none;
 color:red;
}
.link{
  text-decoration: none;
 color:black;
}
img{
width: 150px;
height: 150px;
}
#d{
 display: flex;
    flex-direction:row;
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
    button {
	background-color: rgb(248, 231, 231);
	border: hidden;
	font-size: 20px;
	font-family: serif;
}
h5{
text-decoration: line-through;
opacity: 0.5
}
 #maincart{
   display: flex;
   flex-direction: column;
   justify-content: space-around;
   align-items: center;
   gap:30px;
   width: 100%;
   
   
  
 }
 .pro{
 display: flex;
 flex-direction: row;
 justify-content: space-around;
 gap:50px;
 width: 85%;
 height:150px;

  box-shadow: 2px 2px 2px 2px black;
    align-items: center;
    border-radius: 30px;
 }
 #des{
  display: flex;
  flex-direction: column;
  gap:10px;
  width: 500px;
 
  
 }
 #cartimg{
  height:140px;
  border-radius: 8px;
 }
  #remove{
   background-color:white;
   color: red;
  }  
  select{
   border: hidden;
   outline: none;
  }   
  .count{
 
  display: none;
  }
  .line{
  height:20px;
  display:flex;
  align-items:center;
  border: 1px solid black;
  border-radius:5px;
  width: 85px;
  gap:6px;
  font-size: 13px;
 color:gray;
  }
  #sizes{
  
 
  display: flex;
  flex-direction: row;
  gap:25px;
  }
 #numberIncrement{
   margin-left: 5px;
   margin-top:2px;
   display:flex;

   align-items:center;
   justify-content:space-around;
   text-align: center;
   font-size: 20px;
   font-weight: 600;
   color: black;
 
   width:55px; 
   margin-bottom: 2px;
 }
 #numberIncrement span{
 cursor: pointer;
 }
 .hr1{
margin-top: 60px;
 }
/* span.num{
 border-right: 2px solid rgba(0,0,0,0.2);
 border-left: 2px solid rgba(0,0,0,0.2);
 } */
 
  #paymentDetails {
  display: flex;
  flex-direction:column;
  padding:20px;
  margin-left: 150px;
  margin-right:150px;
  gap:10px;
  opacity: 0.8;
  margin-top: 20px;
  background-color:#EFEFEF;
 
 }
 #Tax{
   display: flex;
  flex-direction:column;
  margin-left: 10px;
  gap:10px;
  opacity: 1;
 }
 .amount{
 display: flex;
 flex-direction: row;
 justify-content: space-between;
 }
 #applyCoupon{
 color:blue;
 }
 #finalbutton{
  background: none;
  color: red;
 }
 #remove{
 display: flex;
 flex-direction:row;
 justify-content: flex-end;
 }
 #footer{
 height:50px;
 display: flex;
 flex-direction: row;
 position: sticky;
 bottom: 0px;
 border: 2px solid black;
 
 }
 .Total{
  background-color: white;
 display:flex;
 align-items:center;
 justify-content:center;
  height:50px;
  width: 50%;
 }
 .processPayment{
  background-color: black;
  display:flex;
 align-items:center;
 justify-content:center;
  color:white;
  height:50px;
  width: 50%;
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
           <a href="/loginPage"><div class=d><i class="fa-solid fa-user"></i>account</div></a>
           <a href=""><div class=d><i class="fa-regular fa-heart"></i>whislist</div></a>
           <a href="/cart.jsp"><div class=d><i class="fa-solid fa-bag-shopping"></i>bag</div></a>
         </div>
    </div>
    
  <div class="back"><a href="Home.jsp">Home</a><h3>/</h3><p class="current">Shpping Bag</p></div>
  
         <div id="maincart">
             
             
              <%
             
              List<CartOwn> list =(List)request.getAttribute("carts");
              double cost=0;
		        if(list.isEmpty() != true)
		        {
		        	Iterator<CartOwn> it = list.iterator();
		        	while(it.hasNext())
		        	{
		        		CartOwn c = it.next();
		        	String discountCostString = c.getDiscountCost().replace(",", "");
		        		cost=cost+Double.parseDouble(discountCostString );
		        		 
		        %>
              
                 <div class="pro">
		          <img id="cartimg" alt="" src="<%=c.getFilePath() %>" >
		          <div id="des">
		            <span><b><%=c.getDressType() %></b></span>
		           
		             <div id="sizes">
		            <div class="line"> Size  <select name="" id="">
                   
                    <option value=""><div class="sizes">XS</div></option>
                    <option value=""><div class="sizes">S</div></option>
                    <option value=""><div class="sizes">M</div></option>
                    <option value=""><div class="sizes">L</div></option>
                    <option value=""><div class="sizes">XL</div></option>
                    <option value=""><div class="sizes">XXL</div></option>
                      
                   </select>
                   </div>
              
		            <div class="line"> Qty <select name="" id="">
                   
                    <option value=""><div class="sizes">1</div></option>
                    <option value=""><div class="sizes">2</div></option>
                    <option value=""><div class="sizes">3</div></option>
                    <option value=""><div class="sizes">4</div></option>
                    <option value=""><div class="sizes">5</div></option>
                    <option value=""><div class="sizes">6</div></option>
                      
                   </select>
                   </div>
                   </div>
		            
		            
		            <h4>Rs<%=c.getDiscountCost() %></h4>
		            <h5>Rs<%=c.getOriginalCost()%></h5>
		           
		      
			
		      </div>
		      
		        <div id="remove">
		     <form action="/deleteCart">
			<input type="hidden" name="id" value="<%=c.getId()%> ">
			<input id="finalbutton"  type="submit" value="Remove">
			</form> 
			    </div>
			    
		      </div>
		          <%
		          }
		        }
		       
		        else
		        {
		        	%>
		        	<div id="a">
		        	<img alt="" src="/empty cart.png" >
           <h2>Empty cart</h2>
          <p>There is nothing your bag.Lets add some items<p>
         <a class="continue-shop" href="Home.jsp"><div id="c">continue shopping &nbsp;&nbsp;<i class="fa-solid fa-arrow-right"></i></div></a> 
          </div></div>
		           <%
		            } 
		            %>
		      </div>
     <% 
            if(list.isEmpty() != true)
		      {
            	%>
		     
           <hr class="hr1">
           
           <div id="paymentDetails">
           
           
           <h3>Order Details</h3>
           
            <hr>
            
           <div class="amount">
           <p>Bag Total</p>  
            <p> <%=cost%></p> 
           </div>  
           
           <hr> 
           
           <div class="amount">
           <p>Coupon savings</p> 
            <a href=""><p id="applyCoupon">Apply Coupon</p></a>
            </div>
            
            <hr>
            <%
            int delivaryAmount=0;
            double shippingAmount=cost;
            
              if(cost>799)
              {
            	   delivaryAmount=0;
              }
              else
              {
            	   delivaryAmount=100;
            	   shippingAmount=cost+delivaryAmount;
              }
             
            %>
           <p>Convenience Fee </p>
              <div id="Tax">
                  <div class="amount">
                    <p>Delivary Fee</p>
                    <h4><%=delivaryAmount%>/-</h4>
                   </div>
                   
                   <div class="amount">
                      <p>Fulfilment Fee</p>
                      
                      <%double totalshippingAmount=shippingAmount+29;%>
                      <h4 class="rightpaymentopocity">29/-</h4>
                    </div>
               </div>
           
           <hr>
           
             <div class="amount">
           <h3>Amount Payable</h3>
           <h4><%=totalshippingAmount %></h4>
             </div>
             
           </div> 
           
           
           <div id="footer">
               <div class="Total">
                 <h3><%=totalshippingAmount %></h3>
               </div>
               
                <div class="processPayment">
                  <sapn>Proceed to Payment</sapn>
                </div>
           </div>
          <%} %>
</body>
</html>