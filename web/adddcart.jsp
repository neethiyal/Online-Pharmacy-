<%-- 
    Document   : adddcart
    Created on : Jan 4, 2022, 4:59:17 PM
    Author     : JAVA
--%>

<%@page import="com.Database"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
                        
            //String pid=request.getParameter("pid");

        try{
            int qty=0;
          PreparedStatement check=Database.con().prepareStatement("select * from cartlist where name='"+(""+session.getAttribute("username"))+"' and pname='"+request.getParameter("pname")+"'");                  

                    ResultSet ss=check.executeQuery();
                    if(ss.next())
                    {
                        qty=Integer.parseInt(ss.getString("qty"));
                 PreparedStatement check2=Database.con().prepareStatement("update cartlist set qty='"+(qty+1)+"' where name='"+(""+session.getAttribute("username"))+"' and pname='"+request.getParameter("pname")+"'");                  

                     int a=check2.executeUpdate();
                     
                     if(a>0)
                     {
                         JOptionPane.showMessageDialog(null, "Product Successfully added to cartlist!");
                        response.sendRedirect("customer.jsp");
                     }
                    }
                    else
                    {
                    PreparedStatement check1=Database.con().prepareStatement("insert into cartlist(pid,name,pname,price,qty,img) value('"+request.getParameter("pid")+"','"+(""+session.getAttribute("username"))+"','"+request.getParameter("pname")+"','"+request.getParameter("price")+"','1','"+request.getParameter("img")+"')");
                    int c=check1.executeUpdate();
                    if(c>0)
                    {
                        JOptionPane.showMessageDialog(null, "Product added to cart list..");
                        response.sendRedirect("customer.jsp");
                    }
                    }
        }catch(Exception e)
        {
            JOptionPane.showMessageDialog(null, e);
        }
        
        %>
    </body>
</html>
