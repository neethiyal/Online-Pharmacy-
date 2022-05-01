<%-- 
    Document   : docreg
    Created on : Jan 4, 2022, 12:31:29 PM
    Author     : JAVA
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.Database"%>
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
      // id = request.getParameter("id");

  String firstname = request.getParameter("dname");

   String hptname = request.getParameter("hsptname");
         String spec = request.getParameter("specialization");

   String Phonenumber = request.getParameter("phno");
      String gender = request.getParameter("gender");

   String pass = request.getParameter("pass");
   

   
     try{
		  String query="insert into doctor(dname,hsptname,specialization,phno,gender,pass)values(?,?,?,?,?,?)";
		  PreparedStatement ps = Database.con().prepareStatement(query);
                                    //ps.setString(1, id);

                  ps.setString(1, firstname);
		  ps.setString(2, hptname);
                  ps.setString(3, spec);
                   ps.setString(4, Phonenumber);
                   ps.setString(5, gender);
                                      ps.setString(6, pass);


		  ps.executeUpdate();
                  
		  JOptionPane.showMessageDialog(null, "Register Successfully");
		  response.sendRedirect("doctorlogin.jsp");
		  
	  }
     catch(Exception e){
		   JOptionPane.showMessageDialog(null,e); 
	  }
     %>
    </body>
</html>
