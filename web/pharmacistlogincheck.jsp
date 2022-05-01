<%-- 
    Document   : adminlogincheck
    Created on : Nov 25, 2021, 4:53:56 PM
    Author     : JAVA
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
 <%
                  int count;
String username=request.getParameter("username");
String password=request.getParameter("pass");
 if((username.equals("pharm"))&&(password.equals("pharm")))
{
    JOptionPane.showMessageDialog(null, " Welcome pharmacist");
    response.sendRedirect("pharmacy2.jsp");
}
%>    </body>
</html>
