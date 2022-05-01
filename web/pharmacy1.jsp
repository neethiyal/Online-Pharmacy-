<%-- 
    Document   : pharmacy1
    Created on : Jan 5, 2022, 2:16:32 PM
    Author     : JAVA
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
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
        
    </head>
    <body>
        <header>
            <h1>Online Pharmacy</h1>
            <nav>
                <ul class="main-nav">
                    <li><a href="pharmacy1.jsp">Pharmacy</a></li>
       <li><a href="viewrequest.jsp"> Patient Request</a></li>

                      <li><a href="index.jsp"> Logout</a></li>

                </ul>
            </nav>
            
        </header>
        
        
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
    <div style="margin-left: 60px; width: 250px;height: 290px;padding-left: 50px;padding-top: 20px;float: left;margin-top: 270px;">
  <img src="img/<%=rs.getString("img")%>" width="300px" height="300px" style="margin-top:-300px;background-color: white;height: 235px;margin-left: -65px;" ><br>
  <br>
  <h6 style="font-family: times;margin-left: 40px;font-size:20px;margin-bottom: 20ppx ;color: black"><a href="click2.jsp?pname=<%=rs.getString("pname")%>&pid=<%=rs.getString("pid")%>" ><%=rs.getString("pname")%></a></h6><br>
  <h6 style="font-family: times;margin-left: 50px;font-size: 20px;color: black">Rs.<%=rs.getString("price")%>\-</h6><br>
  
        </div>
	</div>
       <% }
                }
                catch(Exception ae)
                {
                    JOptionPane.showMessageDialog(null, ae);
                }
                %>
    </body>
</html>
