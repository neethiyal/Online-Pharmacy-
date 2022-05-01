<%-- 
    Document   : delete1
    Created on : Jan 4, 2022, 5:39:41 PM
    Author     : JAVA
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.Database"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.Connection"%>
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
    
try{
    
     PreparedStatement check=Database.con().prepareStatement("delete from cartlist where pid='"+request.getParameter("pid")+"'");
                    check.executeUpdate();

                    
                        JOptionPane.showMessageDialog(null, "Deleted Successfully  ");
                        
                         response.sendRedirect("viewcart.jsp");
}
    
    
   catch(Exception e)
    {
        JOptionPane.showMessageDialog(null, e);
    } 
    
    
    
    %>
    </body>
</html>
