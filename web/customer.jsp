<%-- 
    Document   : customer
    Created on : Jan 4, 2022, 12:12:55 PM
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
            
            	*{
  box-sizing:border-box;
  -moz-box-sizing:border-box;
}
body {
	background: url(//subtlepatterns.com/patterns/scribble_light.png);
  font-family: Calluna, Arial, sans-serif;
  min-height: 1000px;
}
#wrap{
	width: 90%;
	max-width: 1100px;
	margin: 50px auto;
}
.columns_2 figure{
   width:49%;
   margin-right:1%;
}
.columns_2 figure:nth-child(2){
	margin-right: 0;
}
.columns_3 figure{
   width:32%;
   margin-right:1%;
}
.columns_3 figure:nth-child(3){
	margin-right: 0;
}
.columns_4 figure{
   width:24%;
   margin-right:1%;
}
.columns_4 figure:nth-child(4){
	margin-right: 0;
}
.columns_5 figure{
   width:19%;
   margin-right:1%;
}
.columns_5 figure:nth-child(5){
	margin-right: 0;
}
#columns figure:hover{
	-webkit-transform: scale(1.1);
	-moz-transform:scale(1.1);
	transform: scale(1.1);

}
#columns:hover figure:not(:hover) {
	opacity: 0.4;
}
div#columns figure {
	display: inline-block;
	background: #FEFEFE;
	border: 2px solid #FAFAFA;
	box-shadow: 0 1px 2px rgba(34, 25, 25, 0.4);
	margin: 0 0px 15px;
	-webkit-column-break-inside: avoid;
	-moz-column-break-inside: avoid;
	column-break-inside: avoid;
	padding: 15px;
	padding-bottom: 5px;
	background: -webkit-linear-gradient(45deg, #FFF, #F9F9F9);
	opacity: 1;
	-webkit-transition: all .3s ease;
	-moz-transition: all .3s ease;
	-o-transition: all .3s ease;
	transition: all .3s ease;
}

div#columns figure img {
	width: 100%;
	border-bottom: 1px solid #ccc;
	padding-bottom: 15px;
	margin-bottom: 5px;
}

div#columns figure figcaption {
  font-size: .9rem;
  color: #444;
  line-height: 1.5;
  height:60px;
  font-weight:600;
  text-overflow:ellipsis;
}

a.button{
  padding:10px;
  background:salmon;
  margin:10px;
  display:block;
  text-align:center;
  color:#fff;
  transition:all 1s linear;
  text-decoration:none;
  text-shadow:1px 1px 3px rgba(0,0,0,0.3);
  border-radius:3px;
  border-bottom:3px solid #ff6536;
  box-shadow:1px 1px 3px rgba(0,0,0,0.3);
}
a.button:hover{
  background:#ff6536;
  border-bottom:3px solid salmon;
  color:#f1f2f3;
}
@media screen and (max-width: 960px) { 
  #columns figure { width: 24%; }
}
@media screen and (max-width: 767px) {
  #columns figure { width:32%;}
}
@media screen and (max-width: 600px) {
  #columns figure { width: 49%;}
}
@media screen and (max-width: 500px) {
  #columns figure { width: 100%;}
}
        </style>
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
    </head>
    <body>
<!-- Code By Alireza Derakhshan -->

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
<p style="margin-top: 18px; font-size: 20px;color: red;">welcome <%=""+session.getAttribute("username")%></p>

<%
    String name=""+session.getAttribute("username"); 

                try{
                    String query=("select * from product");
		  PreparedStatement ps = Database.con().prepareStatement(query);
                    ResultSet rs=ps.executeQuery();
                     while(rs.next())
                    {
                     %>
<div class="container">  
    <div style="margin-left: 100px; width: 250px;height: 290px;padding-left: 50px;padding-top: 20px;float: left;margin-top: 270px;">
  <img src="img/<%=rs.getString("img")%>" width="300px" height="300px" style="margin-top:-300px;background-color: white;height: 235px;margin-left: -65px;" ><br>
  <br>
  <h6 style="font-family: times;margin-left: 40px;font-size:20px;margin-bottom: 20ppx ;color: black"><a href="click.jsp?pname=<%=rs.getString("pname")%>&pid=<%=rs.getString("pid")%>" ><%=rs.getString("pname")%></a></h6><br>
  <h6 style="font-family: times;margin-left: 50px;font-size: 20px;color: black">Rs.<%=rs.getString("price")%>\-</h6><br>
  <a href="adddcart.jsp?pid=<%=rs.getString("pid")%>&pname=<%=rs.getString("pname")%>&img=<%=rs.getString("img")%>&price=<%=rs.getString("price")%>" style="text-decoration: none;padding: 9px;background-color: black;margin-left: 23px;color: white;margin-top: 30px">Add to Cart</a><br><br>
  
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
