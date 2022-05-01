<%-- 
    Document   : purchase1
    Created on : Jan 4, 2022, 5:49:06 PM
    Author     : JAVA
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
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
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/drugdatabase","root","admin");
    Statement s=con.createStatement();
    Statement s1=con.createStatement();
    Statement s2=con.createStatement();
    Statement s3=con.createStatement();
        Statement s4=con.createStatement();

    
    ResultSet ss=s.executeQuery("select * from customer where name='"+(""+session.getAttribute("username"))+"' ");
    while(ss.next())
    {
        int id=ss.getInt("uid");
                             String name=ss.getString("name"); 
                     // JOptionPane.showMessageDialog(null, name);


         ResultSet sss=s1.executeQuery("select * from cartlist where name='"+(""+session.getAttribute("username"))+"'");
        while(sss.next())
            
        { 
                     String pname=sss.getString("pname");  
                     String id1=sss.getString("pid");  

            //ResultSet ss2=s2.executeQuery("select * from productdetails where pname='"+pname+"'");
   // while(ss2.next())
   // {
       // int id1=ss2.getInt("pid");
                                //session.setAttribute("pid", id1);


        
            int ssss=s3.executeUpdate("insert into purchase(prid,uid,name,pname,price,qty,img) values( '"+id1+"','"+id+"','"+name+"','"+(sss.getString("pname"))+"','"+(sss.getString("price"))+"','"+(sss.getString("qty"))+"','"+(sss.getString("img"))+"')");
            
            
            if(ssss>0)
            {
                int sssss=s4.executeUpdate("delete from cartlist where name='"+(""+session.getAttribute("username"))+"'");
                if(sssss>0)
                {
                    JOptionPane.showMessageDialog(null, "Transaction Successfully...! Products Delevered Soon");
                    response.sendRedirect("customer.jsp");
                }
            }
        }
    }
    }
    
  
    catch(Exception e)
    {
        JOptionPane.showMessageDialog(null, e);
    }
        %>   
    </body>
</html>
