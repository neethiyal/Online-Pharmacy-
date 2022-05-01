<%@page import="java.sql.PreparedStatement"%>
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
      String id1 = request.getParameter("pid");

  String productname = request.getParameter("pname");
    String manufacture = request.getParameter("manufacturer");
    String manufacturedate = request.getParameter("mfg");

        String expirydate = request.getParameter("exp");

   String qty = request.getParameter("quantity");
      String price = request.getParameter("price");
      //String descrip = request.getParameter("desc");

   String pic = request.getParameter("img");
   
   
     try{
            String sql = "INSERT INTO product (pname,manufacturer,mfg,exp,quantity,price,img)  values (?,?,?,?,?,?,?)";
		  PreparedStatement ps = Database.con().prepareStatement(sql);
                  ps.setString(1, productname);
		  ps.setString(2, manufacture);
                  ps.setString(3, manufacturedate);
                   ps.setString(4, expirydate);
                ps.setString(5, qty);
                  ps.setString(6, price);
                // ps.setString(7, descrip);
                        ps.setString(7, pic);



                   

		  ps.executeUpdate();
                  session.setAttribute("name", productname);
                  session.setAttribute("pid", id1);

		  JOptionPane.showMessageDialog(null, "Added Successfully");
		  response.sendRedirect("addproducts.jsp");
		  
	  }
     catch(Exception e){
		   JOptionPane.showMessageDialog(null,e); 
	  }
     %>
    </body>
</html>
