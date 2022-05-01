<%-- 
    Document   : purhistory
    Created on : Jan 4, 2022, 6:07:19 PM
    Author     : JAVA
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.Database"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
     <style>
    
      body {
  background-image: url("img/s8.jpg");
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
  background-image: url("img/qw.jpg");
width:100%;
height: 100%;
            background-repeat: no-repeat;

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
    <a href="viewcustomers.jsp">Customers</a>
    <a href="viewdoctor.jsp">Doctors</a>
    <a href="index.jsp">Logout</a>
  </div>
</div>
      
         <%
            
            
                try{
                     PreparedStatement check1=Database.con().prepareStatement("select * from purchase  ");
                    ResultSet rs1=check1.executeQuery();
                     %>
                     <table id="t01" style="width:930px;margin-left:60px;margin-top: 60px;height:200px">
                         <tr style="background-color:#f19e76;height: 50px">
                   <th style="text-align: center" >Product id</th>
                                      <th style="text-align: center;" >Customer Name</th>
                   <th style="text-align: center" >Product Name</th> 

                   <th style="text-align: center" >Product Image</th> 
                   <th style="text-align: center" >Quantity</th>
                   <th style="text-align: center" >Price for Each</th>
                   <th style="text-align: center" >Total cost</th>

                 </tr>

                   
                <% 
                    while(rs1.next())
                    {%>
                   
                    <tr style="height:50px;background: white;">
                           <td style="text-align: center;font-family: times ;margin-left: 10px"><%=rs1.getInt("prid")%></td>
                                                 <td style="text-align: center;font-family: times "><%=rs1.getString("name")%></td>

                          <td style="text-align: center;font-family: times "><%=rs1.getString("pname")%></td>

                          
                          <td style="text-align: center;font-family: times "><img src="img/<%=rs1.getString("img")%>" style="height:50px"></td>
                          
                          <td style="text-align: center;font-family: times " ><%=rs1.getString("qty")%></td>
                          
                          <td style="text-align: center;font-family: times "><%=rs1.getString("price")%></td>
                          

                          


                          <%
                          int qty=Integer.parseInt(rs1.getString("qty"));
                          int price=Integer.parseInt(rs1.getString("price"));
                          int total=qty*price;
                          %>
                          <td style="text-align: center;font-family: times "><%=total%></td>

                       </tr>
                            <% }}
                catch(Exception ae){JOptionPane.showMessageDialog(null, ae);}
                %>
                     </table><br><br>
                     <br>
                     <br>
<br>
                     <br>




                
    
  </body>
</html>