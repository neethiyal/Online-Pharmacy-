<%-- 
    Document   : click
    Created on : Jan 4, 2022, 3:24:43 PM
    Author     : JAVA
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.Database"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style>
    
      body {
  background-image: url("img/cc.jpg");
width:100%;
height: 100%;

 background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
    }
</style>
                <style>
            /* Code By Alireza Derakhshan */
* {
    margin: 0;
    padding: 0;
}
body {
    font-family: Arial, Helvetica, sans-serif;
}
.ham-menu {
    width: 30px;
    height: 30px;
    cursor: pointer;
}
.ham-menu span {
    display: block;
    width: 30px;
    height: 5px;
    background: #fff;
    margin: 5px 0;
    border-radius: 10px !important;
}
.main-nav {
    display: none;
    list-style-type: none;
}
header {
    display: flex;
    justify-content: space-between;
    padding: 15px 20px;
    align-items: center;
    /* background: #654EFE; */
    background-image: linear-gradient(to right, #654efe,#ff9d4a);
}
header h1 {
    color: #fff;
    font-size: 1.5rem;
    cursor: pointer;
}
.main-nav a {
    text-decoration: none;
    padding: 5px 10px;
    color: #fff;
    font-weight: 600;
    transition: all ease 0.1s;
    margin-left: 3px;
}
.main-nav a:hover {
    background: #fff;
    border-radius: 7px;
    color: #ff9d4a;
}
.main-nav li:last-child a {
    background-color: #fff;
    color: #ff9d4a;
    border-radius: 7px;
    box-shadow: 2px 3px 10px 5px #ff9d4a;
}
.main-nav li:last-child a:hover {
    background-color: #2F4858;
    color: #fff;
    box-shadow: 0 0 0;
}
@media (min-width: 768px) {
    .ham-menu {
        display: none;
    } 
    .main-nav {
        display: flex;
    }
}
.me {
  margin:25px;
  text-align: center;
}
.me a {
  font-size:15px;
  color: #fff;
  font-weight: 400;
  text-decoration: none;
  background: #010101;
  padding: 10px;
  border-radius: 8px;
  transition: all 0.3s;
}
.me a:hover {
  color: #fff;
  background: #FFA200;
  transition: all easy 0.3s;
}
        </style>
        <style>
            * {
  padding: 0;
  margin: 0;
  position: relative;
  box-sizing: border-box;
}

.listing-section, .cart-section {
  width: 100%;
  float: left;
  padding: 1%;
  border-bottom: 0.01em solid #dddbdb;
}

.product {
  float: left;
  width: 23%;
  border-radius: 2%;
  margin: 1%;
}

.product:hover {
  box-shadow: 1.5px 1.5px 2.5px 3px rgba(0, 0, 0, 0.4);
  -webkit-box-shadow: 1.5px 1.5px 2.5px 3px rgba(0, 0, 0, 0.4);  
  -moz-box-shadow:    1.5px 1.5px 2.5px 3px rgba(0, 0, 0, 0.4);
}

.image-box {
  width: 135%;
  overflow: hidden;
  border-radius: 2% 2% 0 0;
}

.images {
  height: 25em;
  width: 500px;
  background-size: cover; 
  background-position: center center; 
  background-repeat: no-repeat;
  border-radius: 2% 2% 0 0;
  transition: all 1s ease;
  -moz-transition: all 1s ease;
  -ms-transition: all 1s ease;
  -webkit-transition: all 1s ease;
  -o-transition: all 1s ease;
}

.images:hover {
  transform: scale(1.2);
  overflow: hidden;
  border-radius: 2%;
}

/* IMAGES */
#image-1 {background-image: url("https://sc01.alicdn.com/kf/UT8.CaXX2NXXXagOFbXC/fresh-navel-oranges.jpg");}

#image-2 {background-image: url("https://newenglandapples.files.wordpress.com/2014/10/img_5595.jpg")}

#image-3 {background-image: url("https://sc01.alicdn.com/kf/UT8ovSIXQNaXXagOFbXt/Fresh-Passion-Fruit-with-Best-Price-and.jpg")}

#image-4 {background-image: url("http://www.foodmatters.com/media/images/articles/16-powerful-reasons-to-eat-pineapple.jpg")}

#image-5 {background-image: url("http://membrillo.com.au/wp-content/uploads/2016/11/bg-mango-01.jpg")}

#image-6 {background-image: url("http://ell.h-cdn.co/assets/16/27/980x490/landscape-1467750721-gettyimages-146896572.jpg")}

#image-7 {background-image: url("http://www.hesca.org/wp-content/uploads/2016/08/banana.jpg")}

#image-8 {background-image: url("http://www.baag.com.au/pictures/produce/plums2.jpg")}

#image-9 {background-image: url("https://ecowatchroar-img.rbl.ms/simage/https%3A%2F%2Fassets.rbl.ms%2F9458277%2F1200x600.jpg/2000%2C2000/J9vl96eLQCOEy3Xy/img.jpg")}

#image-10 {background-image: url("https://www.parhlo.com/wp-content/uploads/2016/04/Valencia_market_-_lemons-1940x1454.jpg")}

.text-box {
  width: 128%;
  float: left;
  border: 0.01em solid #dddbdb;
  border-radius: 0 0 2% 2%;
  padding: 1em;
}

h2, h3 {
  float: left;
  font-family: 'Roboto', sans-serif;
  font-weight: 400;
  font-size: 1em;
  text-transform: uppercase;
  margin: 0.2em auto;
}

.item, .price {
  clear: left;
  width: 100%;
  text-align: center;
}

.price {
  color: Grey;
}

.description, label, button, input {
  float: left;
  clear: left;
  width: 100%;
  font-family: 'Roboto', sans-serif;
  font-weight: 300;
  font-size: 1em;
  text-align: center;
  margin: 0.2em auto;
}

input:focus {
  outline-color: #fdf;
}

label {
  width: 60%;
}

.text-box input {
  width: 15%;
  clear: none;
}

.text-box button {
  margin-top: 1em;
}

button {
  padding: 2%;
  background-color: #dfd;
  border: none;
  border-radius: 2%;
}

button:hover {
  bottom: 0.1em;
}

button:focus {
  outline: 0;
}

button:active {
  bottom: 0;
  background-color: #fdf;
}

.table-heading, .table-content {
  width: 75%;
  margin: 1% 12.25%;
  float: left;
  background-color: #dfd;
}

.table-heading h2 {
  padding: 1%;
  margin: 0;
  text-align: center;
}

.cart-product {
  width: 50%;
  float: left;
}

.cart-price {
  width: 15%;
  float: left;
}

.cart-quantity {
  width: 10%;
  float: left;
}

.cart-total {
  width: 25%;
  float: left;
}

.cart-image-box {
  width: 20%;
  overflow: hidden;
  border-radius: 2%;
  float: left;
  margin: 1%;
}

.cart-images {
  height: 7em;
  background-size: cover; 
  background-position: center center; 
  background-repeat: no-repeat;
}

.cart-item {
  width: 20%;
  float: left;
  margin: 3.2em 1%;
  text-align: center;
}
.cart-description {
  width: 53%;
  float: left;
  margin: 3.2em 1%;
  font-family: 'Roboto', sans-serif;
  font-weight: 300;
  font-size: 1em;
  text-align: center;
}

.cart-price h3, .cart-total h3 {
  margin: 3.2em 5% 3.2em 20%;
  width: 60%;
}

.cart-quantity input {
  margin: 3.2em 1%;
  border: none;
}

.remove {
  width: 10%;
  margin: 1px;
  float: right;
  clear: right;
}

.coupon {
  width: 20%;
  background-color: #dfd;
  margin: 1% 1% 1% 12.25%;
  float: left;
  height: 6em;
}

.coupon input {
  width: 60%;
  border: none;
  margin: 12.75% 5%;
  padding: 1%;
}

.coupon button {
  width: 25%;
  float: left;
  clear: right;
  margin: 12% 5% 12% 0;
}

.keep-shopping {
  width: 15%;
  height: 6em;
  float: left;
  margin: 1% auto;
  padding: 1%;
  background-color: #dfd;
}

.keep-shopping button {
  text-transform: uppercase;
  margin: 12% auto;
  
}

.checkout {
  width: 37.25%;
  margin: 1% 12.75% 1% 1%;
  float: right;
  background-color: #dfd;
  height: 6em;
}

.checkout button {
  width: 30%;
  clear: none;
  margin: 5.4% 0 5.4% 5.5%;
  text-transform: uppercase;
}

.final-cart-total {
  width: 15%;
  float: right;
  margin: 7%;
  background-color: White;
}

.final-cart-total h3 {
  color: Black;
}  
#menu {
			text-align: center;
		}
		.item {
			color: red;
		}
		.picture{
			border-radius: 5px;
		}
		.description {
			font-style: italic;
		}
                .container{
      margin: 15px;
    width: 32%;
  max-width: 900px;
  justify-content: center;
  flex-direction: column;
  align-items: center;
}
	</style>
        </style>
    </head>
    <body>
      <header>
            <h1>Online Pharmacy</h1>
            <nav>
                <ul class="main-nav">
                    <li><a href="customer.jsp">Pharmacy</a></li>
       <li><a href="consultdoc.jsp">Consult Doctor</a></li>
                    <li><a href="docadvice.jsp">Doctor Advice</a></li>

                    <li><a href="viewcart.jsp">Cart</a></li>
                     <li><a href="index.jsp"> Logout</a></li>

                </ul>
            </nav>
            
        </header>
        
<%
    String name=request.getParameter("pname");

                try{
                    String query=("select * from product where pname='"+name+"' ");
		  PreparedStatement ps = Database.con().prepareStatement(query);
                    ResultSet rs=ps.executeQuery();
                     while(rs.next())
                    {
                     %>
                    	<div id="menu">
		<h1 class="item">Drug Details</h1>
		<img src="img/<%=rs.getString("img")%>" alt="clay pot" class="picture">
	</div>
        <div class="container" style="margin-left: 322px;">

   
            <div class="text-box" style="    margin-left: 120px;">
        <h2 class="item"><%=rs.getString("pname") %></h2><br>
<div class="space"><b>  Price: </b>RS       <%=rs.getString("price") %>-/</h3><br>
<br>
      <div class="space"><b>Description:   </b> <%=rs.getString("desc") %></div><br>

      <div class="space"><b>Manufacturer: </b><%=rs.getString("manufacturer") %></div><br>
   					<div class="space"><b>Manufacturing Date: </b><%=rs.getString("mfg") %></div><br>
                                        <div class="space"><b>Expiry  Date: </b><%=rs.getString("exp") %></div><br>

    </div>
  </div>
 

  				
             </div>
            
      
       <% }
                }
                catch(Exception ae)
                {JOptionPane.showMessageDialog(null, ae);
                }
                %>
    
    </body>
</html>
