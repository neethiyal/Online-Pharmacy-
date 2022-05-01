<%-- 
    Document   : pharmacy2
    Created on : Jan 6, 2022, 3:32:37 PM
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
    
    * {
  box-sizing: border-box;
}

body {
  margin: 0px;
  font-family: 'segoe ui';
}

.nav {
  height: 65px;
  width: 100%;
  background-color: #4d4d4d;
  position: relative;
}

.nav > .nav-header {
  display: inline;
}

.nav > .nav-header > .nav-title {
  display: inline-block;
  font-size: 22px;
  color: #fff;
  padding: 10px 10px 10px 10px;
}

.nav > .nav-btn {
  display: none;
}

.nav > .nav-links {
  display: inline;
  float: right;
  font-size: 18px;
}

.nav > .nav-links > a {
  display: inline-block;
  padding: 13px 10px 13px 10px;
  text-decoration: none;
  color: #efefef;
}

.nav > .nav-links > a:hover {
  background-color: rgba(0, 0, 0, 0.3);
}

.nav > #nav-check {
  display: none;
}

@media (max-width:600px) {
  .nav > .nav-btn {
    display: inline-block;
    position: absolute;
    right: 0px;
    top: 0px;
  }
  .nav > .nav-btn > label {
    display: inline-block;
    width: 50px;
    height: 50px;
    padding: 13px;
  }
  .nav > .nav-btn > label:hover,.nav  #nav-check:checked ~ .nav-btn > label {
    background-color: rgba(0, 0, 0, 0.3);
  }
  .nav > .nav-btn > label > span {
    display: block;
    width: 25px;
    height: 10px;
    border-top: 2px solid #eee;
  }
  .nav > .nav-links {
    position: absolute;
    display: block;
    width: 100%;
    background-color: #333;
    height: 0px;
    transition: all 0.3s ease-in;
    overflow-y: hidden;
    top: 50px;
    left: 0px;
  }
  .nav > .nav-links > a {
    display: block;
    width: 100%;
  }
  .nav > #nav-check:not(:checked) ~ .nav-links {
    height: 0px;
  }
  .nav > #nav-check:checked ~ .nav-links {
    height: calc(100vh - 50px);
    overflow-y: auto;
  }
}
.container{
width:100%;
height:100%;
padding:10vh 0;
}
.container section{
position:relative;
top:5vh;
margin:1rem;
width:90%;
}
.container section h1{
font-size:1.5em;
}
</style>
  </head>
  <body>
   
    <div class="nav">
  <input type="checkbox" id="nav-check">
  <div class="nav-header">
    <div class="nav-title">
      Online Pharmacy
    </div>
  </div>
  <div class="nav-btn">
    <label for="nav-check">
      <span></span>
      <span></span>
      <span></span>
    </label>
  </div>
  
  <div class="nav-links">

    <a href="addproducts.jsp" >Add Products</a>
    <a href="viewcustomers.jsp">Customers</a>
    <a href="viewdoctor.jsp">Doctors</a>
    <a href="purhistory.jsp">Purchase History</a>
    <a href="index.jsp">Logout</a>
  </div>
</div>
      
      
     <p style="margin-top: 18px; font-size: 20px;color: red;">welcome pharmacist</p>
   
<%
    String name=""+session.getAttribute("username"); 

                try{
                    String query=("select * from product");
		  PreparedStatement ps = Database.con().prepareStatement(query);
                    ResultSet rs=ps.executeQuery();
                     while(rs.next())
                    {
                     %>
    <div style="margin-left: 100px; width: 250px;height: 290px;padding-left: 50px;padding-top: 20px;float: left;margin-top: 270px;">
  <img src="img/<%=rs.getString("img")%>" width="300px" height="300px" style="margin-top:-300px;background-color: white;height: 235px;margin-left: -65px;" ><br>
  <br>
  <h6 style="font-family: times;margin-left: 40px;font-size:20px;margin-bottom: 20ppx ;color: black"><a href="click2.jsp?pname=<%=rs.getString("pname")%>&pid=<%=rs.getString("pid")%>" ><%=rs.getString("pname")%></a></h6><br>
  <h6 style="font-family: times;margin-left: 50px;font-size: 20px;color: black; margin-top: -45px;">Rs.<%=rs.getString("price")%>\-</h6><br>
  
        </div>
	</div>
       <% }
                }
                catch(Exception ae)
                {
                    JOptionPane.showMessageDialog(null, ae);
                }
                %>