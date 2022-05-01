<%-- 
    Document   : customerregister
    Created on : Jan 4, 2022, 12:13:30 PM
    Author     : JAVA
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.swing.JOptionPane"%>
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

  String firstname = request.getParameter("name");

   String email = request.getParameter("email");
   String Phonenumber = request.getParameter("phno");
      String gender = request.getParameter("gender");
      String addres = request.getParameter("address");

   String pass = request.getParameter("pass");
   

   
     try{
		  String query="insert into customer(name,email,phno,gender,address,pass)values(?,?,?,?,?,?)";
		  PreparedStatement ps = Database.con().prepareStatement(query);
                                    //ps.setString(1, id);

                  ps.setString(1, firstname);
		  ps.setString(2, email);
                  ps.setString(3, Phonenumber);
                   ps.setString(4, gender);
                   ps.setString(5, addres);
                                      ps.setString(6, pass);


		  ps.executeUpdate();
                  
		  JOptionPane.showMessageDialog(null, "Register Successfully");
		  response.sendRedirect("customerlogin.jsp");
		  
	  }
     catch(Exception e){
		   JOptionPane.showMessageDialog(null,e); 
	  }
     %>
    </body>
</html>
