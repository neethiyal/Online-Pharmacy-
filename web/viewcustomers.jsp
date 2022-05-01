<%-- 
    Document   : viewcustomers
    Created on : Jan 4, 2022, 12:41:40 PM
    Author     : JAVA
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.Database"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <style>
    
      body {
  background-image: url("img/ffg.jpg");
width:100%;
height: 100%;
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
</style>
<style>
           body {
   background-image:url("img/ffg.jpg"); 
   width: 100%;
  
 
  
}
        </style>
<style>
            table{
                max-width: 1000px;
                margin-left: 350px;
                margin-top:100px;
     box-shadow: 2px 9px 8px 2px rgba(0,0,0,0.8);
}
      table, th, td {
         
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    text-align: center;
    padding: 15px;
    text-align: left;
}
table#t01 tr:nth-child(even) {
    background-color: #eee;
}
table#t01 tr:nth-child(odd) {
   background-color: #fff;
}
table#t01 th {
    background-color: #97ceff;
    color: #b18a8a;
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
          <a href="pharmacy2.jsp" >Pharmacy </a>

    <a href="addproducts.jsp" >Add Products</a>
    <a href="viewdoctor.jsp">Doctors</a>
    <a href="purhistory.jsp">Purchase History</a>
    <a href="index.jsp" >Logout</a>
  </div>
</div>
      <div style="padding:10px 0 10px 0;float: left">
         <%
                try{
                    String query=("select * from customer");
		  PreparedStatement ps = Database.con().prepareStatement(query);
                    ResultSet rs1=ps.executeQuery();
                     %>
                     <table id="t01" style="margin-left: 170px;width:500px ;margin-top: 100px">
                <tr>
                   <th style="text-align: center;font-size: 15px;color:black;font-family: auto" >Customer id</th> 
                   <th style="text-align: center;font-size: 15px;color:black;font-family: auto" >Name</th>
                   <th style="text-align: center;font-size: 15px;color:black;font-family: auto" >email</th>
                     <th style="text-align: center;font-size: 15px;color:black;font-family: auto" >phone</th>
                       <th style="text-align: center;font-size: 15px;color:black;font-family: auto" >gender</th>
                 <th style="text-align: center;font-size: 15px;color:black;font-family: auto" >Address</th> 

                        
                 </tr>
                   
                <% 
                    while(rs1.next())
                    {%>
                   
                      <tr>
                          <td style="text-align: center;font-size: 15px;color:black;font-family: auto"><%=rs1.getInt("uid")%></td>
                          <td style="text-align: center;font-size: 15px;color:black;font-family: auto"> <%=rs1.getString("name")%></td>
                          <td style="text-align: center;font-size: 15px;color:black;font-family: auto"><%=rs1.getString("email")%></td>
                          <td style="text-align: center;font-size: 15px;color:black;font-family: auto"><%=rs1.getString("phno")%></td>
                          <td style="text-align: center;font-size: 15px;color:black;font-family: auto"><%=rs1.getString("gender")%></td>
                 <td style="text-align: center;font-size: 15px;color:black;font-family: auto"><%=rs1.getString("address")%></td>

                           </tr>
                       
                            <% }%>
                            
                    </table>
                <% }
                catch(Exception ae)
                {JOptionPane.showMessageDialog(null, ae);
                }
                %>
  </div>
    </body>
</html>
