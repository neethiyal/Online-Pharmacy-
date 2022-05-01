<%-- 
    Document   : responscheck
    Created on : Jan 5, 2022, 1:39:47 PM
    Author     : JAVA
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
                // JOptionPane.showMessageDialog(null, name);


 String dname=request.getParameter("dname");
 //JOptionPane.showMessageDialog(null, dname);
//String report=request.getParameter("request");
 //JOptionPane.showMessageDialog(null, report);

String drugs = request.getParameter("presc");
 //JOptionPane.showMessageDialog(null, drugs);

String respons = request.getParameter("response");
 //JOptionPane.showMessageDialog(null, respons);

 Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/drugdatabase","root","admin");
    Statement s=con.createStatement();
try{
             
              String query1=("select * from patientreq where name='"+name+"' and dname='"+dname+"' ");
		  PreparedStatement ps1 = Database.con().prepareStatement(query1);
                                         ResultSet rs1=ps1.executeQuery();
                                        while(rs1.next()) {
                                           String report=rs1.getString("request");
                                 // String spec=rs1.getString("specialization");
String id2=rs1.getString("did");
             //JOptionPane.showMessageDialog(null, id2);
                           
                                             
                   String query=("insert into advice(name,did,dname,request,response,presc)values(?,?,?,?,?,?)");
		  PreparedStatement ps = Database.con().prepareStatement(query);
                  
		  //ps.setString(1, id);

                   ps.setString(1,  name);
                     ps.setString(2, id2);

                   ps.setString(3,  dname);
                     ps.setString(4, report);

                   ps.setString(5,  respons);
                     ps.setString(6, drugs);

                    
                  
		  ps.executeUpdate();
                  
                  int sssss=s.executeUpdate("delete from patientreq where request='"+report+"' ");
                if(sssss>0)
                {
		  JOptionPane.showMessageDialog(null, "Request sent to Patient successfully");
		  response.sendRedirect("doctor.jsp");
                  
         }
                                        }
         
     %>   
     <%
                                               }
         
         catch(Exception e)
        {
            JOptionPane.showMessageDialog(null, e);
        }
          
         
         
                                            %>
        
    </body>
      </html>
