<%-- 
    Document   : userlogincheck
    Created on : Jan 4, 2022, 12:10:37 PM
    Author     : JAVA
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.Database"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            String id=request.getParameter("uid");

     String name=request.getParameter("name");
         
            String pass=request.getParameter("pass");

           
                try{                       
                      PreparedStatement check=Database.con().prepareStatement("select * from customer where  name='"+name+"' and pass='"+pass+"' ");
                    ResultSet rs=check.executeQuery();
                    if(rs.next())
                    {
                        JOptionPane.showMessageDialog(null, "Login Successfully  ");
                                                JOptionPane.showMessageDialog(null, "welcome'"+name+"'" );

                        session.setAttribute("username", name);
                                                session.setAttribute("uid", id);

                         response.sendRedirect("customer.jsp");
                    }else{
                        JOptionPane.showMessageDialog(null, "Username / Password was incorrect...!");
                        response.sendRedirect("customerlogin.jsp");
                    }
        }catch(Exception e)
        {
            JOptionPane.showMessageDialog(null, e);
        }
        %>
    </body>
</html>
