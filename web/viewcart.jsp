<%-- 
    Document   : viewcart
    Created on : Jan 4, 2022, 5:14:43 PM
    Author     : JAVA
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.Database"%>
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
  background-image: url("img/qw.jpg");
width:100%;
height: 100%;
            background-repeat: no-repeat;

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
                    <li><a href="customer.jsp">Pharmacy</a></li>
       <li><a href="consultdoc.jsp">Consult Doctor</a></li>
                    <li><a href="docadvice.jsp">Doctor Advice</a></li>

                      <li><a href="index.jsp"> Logout</a></li>

                </ul>
            </nav>
            
        </header>
        
        
        <%
             String id=request.getParameter("cid");

                        	String email=(String)session.getAttribute("email"); 
    
        try{
                     PreparedStatement check=Database.con().prepareStatement("select cid,pname,img,qty,price from cartlist where name='"+(""+session.getAttribute("username"))+"' ");
                    ResultSet rs=check.executeQuery();
                                            session.setAttribute("cid",id);

                    if(rs.next())
                    {
                     %>
            <%
                try{
                     PreparedStatement check1=Database.con().prepareStatement("select * from cartlist where name='"+(""+session.getAttribute("username"))+"' ");
                    ResultSet rs1=check1.executeQuery();
                     %>
                     <table id="t01" style="width:1000px;margin-left:40px;margin-top: 60px;height:150px">
                         <tr style="background-color:#f19e76">
                   <th style="text-align: center" >P.Id</th> 
                   <th style="text-align: center" >Product Name</th>
                   <th style="text-align: center" >Product Image</th> 
                   <th style="text-align: center" >Quantity</th>
                   <th style="text-align: center" >Price for Each</th>
                   <th style="text-align: center" >Total cost</th>
                   <th style="text-align: center" >Remove</th>

                 </tr>

                   
                <% 
                    while(rs1.next())
                    {%>
                   
                    <tr style="height:80px;background: #ffffff">
                          <td style="text-align: center;font-family: times ;margin-left: 10px"><%=rs1.getInt("cid")%></td>
                         
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
   <td style="text-align: center;font-family: times "><a href= "delete1.jsp?pid=<%=rs1.getString("pid")%>">remove</a></td>

                       </tr>
                            <% }}
                catch(Exception ae){JOptionPane.showMessageDialog(null, ae);}
                %>
                     </table><br><br>
                     <br>
                     <br>
<br>
                     <br>
       <a href="purchase1.jsp" style="text-decoration: none;color: gray;font-family: times;padding: 20px;background-color: #f19e76;color: black;margin-left: 775px;margin-top:100px;font-size: 20px ">Make payment</a>




                <%
                    } }
                catch(Exception ae)
                {
                    JOptionPane.showMessageDialog(null, ae);
                }
                
                %>
    
                <br>
                <br>
                                <br>
    </body>
</html>
