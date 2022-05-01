<%-- 
    Document   : doclogincheck
    Created on : Jan 4, 2022, 12:29:27 PM
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
            String id=request.getParameter("did");

     String dname=request.getParameter("dname");
                              //   JOptionPane.showMessageDialog(null, dname);

            String pass=request.getParameter("pass");
                                 //JOptionPane.showMessageDialog(null, pass);

           
                try{                       
                      PreparedStatement check=Database.con().prepareStatement("select * from doctor where  dname='"+dname+"' and pass='"+pass+"' ");
                    ResultSet rs=check.executeQuery();
                    if(rs.next())
                    {
                        JOptionPane.showMessageDialog(null, "Login Successfully  ");
                                  JOptionPane.showMessageDialog(null, "welcome'"+dname+"'" );

                        session.setAttribute("docname", dname);
                                                session.setAttribute("did", id);

                         response.sendRedirect("doctor.jsp");
                    }else{
                        JOptionPane.showMessageDialog(null, "Username / Password was incorrect...!");
                        response.sendRedirect("doctorlogin.jsp");
                    }
        }catch(Exception e)
        {
            JOptionPane.showMessageDialog(null, e);
        }
        %>
    </body>
</html>
