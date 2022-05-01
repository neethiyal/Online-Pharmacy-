<%-- 
    Document   : requestcheck
    Created on : Jan 5, 2022, 11:34:37 AM
    Author     : JAVA
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.PreparedStatement"%>
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
                                    	//String name=(String)session.getAttribute("pname"); 
   
   //String email = request.getParameter("email");
   //String Phonenumber = request.getParameter("phone");
 String name=request.getParameter("name");
                

 String dname=request.getParameter("dname");
 //JOptionPane.showMessageDialog(null, dname);
String report = request.getParameter("request");


try{
             
              String query1=("select * from doctor where dname='"+dname+"' ");
		  PreparedStatement ps1 = Database.con().prepareStatement(query1);
                                         ResultSet rs1=ps1.executeQuery();
                                        while(rs1.next()) {
                                           String hptname=rs1.getString("hsptname");
                                  String spec=rs1.getString("specialization");
String id2=rs1.getString("did");
             //JOptionPane.showMessageDialog(null, id2);
                           
                                             
                   String query=("insert into patientreq(name,did,dname,hsptname,specialization,request)values(?,?,?,?,?,?)");
		  PreparedStatement ps = Database.con().prepareStatement(query);
                  
		  //ps.setString(1, id);

                   ps.setString(1,  name);
                     ps.setString(2, id2);

                   ps.setString(3,  dname);
                     ps.setString(4, hptname);

                   ps.setString(5,  spec);
                     ps.setString(6, report);

                    
                  
		  ps.executeUpdate();
		  JOptionPane.showMessageDialog(null, "Request sent to Doctor successfully");
		  response.sendRedirect("customer.jsp");
                  
         }
         
         
     %>   
     <%
                                               }
         
         catch(Exception e)
        {
            JOptionPane.showMessageDialog(null, e);
        }
          
         
         
                                            %></body>
</html>
