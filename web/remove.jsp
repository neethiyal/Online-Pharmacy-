<%-- 
    Document   : remove
    Created on : Jan 5, 2022, 3:45:14 PM
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
                 String name=""+session.getAttribute("username"); 

String dname=request.getParameter("dname");
 //JOptionPane.showMessageDialog(null, name);
//String report=request.getParameter("request");
 //JOptionPane.showMessageDialog(null, dname);

 // JOptionPane.showMessageDialog(null, report);

try{
    
     PreparedStatement check=Database.con().prepareStatement("delete from advice where name='"+name+"' and dname='"+dname+"' ");
                    check.executeUpdate();

                    
                        JOptionPane.showMessageDialog(null, "Deleted Successfully  ");
                        
                         response.sendRedirect("customer.jsp");
}
    
    
   catch(Exception e)
    {
        JOptionPane.showMessageDialog(null, e);
    } 
    
    
    
    %>
    </body>
</html>
