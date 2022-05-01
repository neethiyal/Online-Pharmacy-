<%-- 
    Document   : docavice
    Created on : Jan 5, 2022, 3:18:29 PM
    Author     : JAVA
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.Database"%>
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
  background-image: url("img/doc.jpg");
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
    background-color: #f59461cf;
    color: #b18a8a;
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

                    <li><a href="viewcart.jsp">Cart</a></li>
                      <li><a href="index.jsp"> Logout</a></li>

                </ul>
            </nav>
            
        </header>
<div style="padding:10px 0 10px 0;float: left">
         <%
                 String name=""+session.getAttribute("username"); 

                try{
                    String query=("select * from advice where name='"+name+"' ");
		  PreparedStatement ps = Database.con().prepareStatement(query);
                    ResultSet rs1=ps.executeQuery();
                    
                     %>
                     <table id="t01" style="margin-left: 170px;width:500px ;margin-top: 100px">
                <tr>
                   <th style="text-align: center;font-size: 15px;color:black;font-family: auto" >Doctor id</th> 
                   <th style="text-align: center;font-size: 15px;color:black;font-family: auto" > Doctor Name</th>
                                      <th style="text-align: center;font-size: 15px;color:black;font-family: auto" >Patient Name</th>
              <th style="text-align: center;font-size: 15px;color:black;font-family: auto" >Doctor Advice  </th>


                        
                 </tr>
                   
                <% 
                    while(rs1.next())
                    {
                        
                
                %>
                   
                      <tr>
                          <td style="text-align: center;font-size: 15px;color:black;font-family: auto"><%=rs1.getInt("did")%></td>
                          <td style="text-align: center;font-size: 15px;color:black;font-family: auto"> <%=rs1.getString("dname")%></td>
                          <td style="text-align: center;font-size: 15px;color:black;font-family: auto"><%=rs1.getString("name")%></td>
   <td style="text-align: center;font-family: times "><a href= "viewadvice.jsp?dname=<%=rs1.getString("dname")%>&request=<%=rs1.getString("request")%>&response=<%=rs1.getString("response")%>&presc=<%=rs1.getString("presc")%>">View Advice</a></td>

                           </tr>
                       
                            <% }%>
                            
                    </table>
                <% }
                catch(Exception ae)
                {JOptionPane.showMessageDialog(null, ae);
                }
                %>
    </body>
</html>
