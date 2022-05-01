<%-- 
    Document   : giveconsult
    Created on : Jan 5, 2022, 1:15:22 PM
    Author     : JAVA
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style>
            /* Code By Alireza Derakhshan */
* {
    margin: 0;
    padding: 0;
}
body {
    font-family: Arial, Helvetica, sans-serif;
}
.ham-menu {
    width: 30px;
    height: 30px;
    cursor: pointer;
}
.ham-menu span {
    display: block;
    width: 30px;
    height: 5px;
    background: #fff;
    margin: 5px 0;
    border-radius: 10px !important;
}
.main-nav {
    display: none;
    list-style-type: none;
}
header {
    display: flex;
    justify-content: space-between;
    padding: 15px 20px;
    align-items: center;
    /* background: #654EFE; */
    background-image: linear-gradient(to right, #654efe,#ff9d4a);
}
header h1 {
    color: #fff;
    font-size: 1.5rem;
    cursor: pointer;
}
.main-nav a {
    text-decoration: none;
    padding: 5px 10px;
    color: #fff;
    font-weight: 600;
    transition: all ease 0.1s;
    margin-left: 3px;
}
.main-nav a:hover {
    background: #fff;
    border-radius: 7px;
    color: #ff9d4a;
}
.main-nav li:last-child a {
    background-color: #fff;
    color: #ff9d4a;
    border-radius: 7px;
    box-shadow: 2px 3px 10px 5px #ff9d4a;
}
.main-nav li:last-child a:hover {
    background-color: #2F4858;
    color: #fff;
    box-shadow: 0 0 0;
}
@media (min-width: 768px) {
    .ham-menu {
        display: none;
    } 
    .main-nav {
        display: flex;
    }
}
.me {
  margin:25px;
  text-align: center;
}
.me a {
  font-size:15px;
  color: #fff;
  font-weight: 400;
  text-decoration: none;
  background: #010101;
  padding: 10px;
  border-radius: 8px;
  transition: all 0.3s;
}
.me a:hover {
  color: #fff;
  background: #FFA200;
  transition: all easy 0.3s;
}
        </style><style>
    
      body {
  background-image: url("img/doc.jpg");
width:100%;
height: 100%;

      }
</style>
        
    </head>
    <body>
        <%
            //String name=""+session.getAttribute("username");
                        //String id=""+session.getAttribute("uid");

            //String id2=request.getParameter("did");
String name=request.getParameter("name");

String dname=request.getParameter("dname");
 //JOptionPane.showMessageDialog(null, name);
String report=request.getParameter("request");

            
            %>
      <header>
            <h1>Online Pharmacy</h1>
            <nav>
                <ul class="main-nav">
                                        <li><a href="doctor.jsp">Home</a></li>

                    <li><a href="pharmacy1.jsp">Pharmacy</a></li>

                      <li><a href="index.jsp"> Logout</a></li>

                </ul>
            </nav>
            
        </header>
         <div class="container" style="color: #e189debf;width: 500px;">
        <div class="page-wrapper  " style="color: #e189debf;margin-left: 400px;">
        <div class="wrapper wrapper--w200"     style="padding-top: 105px;">
            <div class="card card-5" style="width: 550px;margin-top: 20px;margin-bottom: 10px;background: white;margin-left: -170px">
                    <div class="card-body" style=" width: 100% ;height: 460px;margin-top: -50px;">
  <form action="responscheck.jsp">
                                            <input name="name" type="hidden" value="<%=name%>">
                                            <input name="dname" type="hidden" value="<%=dname%>">
                                            <input name="dname" type="hidden" value="<%=report%>">

    <div class="row" style="margin-right: auto; margin-left: auto; width: 400px">
      <div class="col-25">
        <label  style="color:black;font-size:20px ">Patient Report</label>
      </div>
      <div class="col-75" style="margin-right: auto; margin-left: auto; width: 400px">
        <textarea  disabled  type="disable"  placeholder="<%=report%>" style="height:100px;font-size: 20px;width:400px;color:black" ></textarea>
      </div>
    </div><br>
    
      <div class="row" style="margin-right: auto; margin-left: auto; width: 400px">
      <div class="col-25">
        <label for="subject"  style="color:black;font-size:20px ">Consultation</label>
      </div>
      <div class="col-75" style="margin-right: auto; margin-left: auto; width: 400px">
        <textarea id="subject" name="response" placeholder="Give your Advice" style="height:100px;font-size: 20px;width:400px;color:black" ></textarea>
      </div>
    </div>
     <div class="row" style="margin-right: auto; margin-left: auto; width: 400px">
      <div class="col-25">
        <label for="subject"  style="color:black;font-size:20px ">Prescriptions</label>
      </div>
      <div class="col-75" style="margin-right: auto; margin-left: auto; width: 400px">
        <textarea id="subject" name="presc" placeholder="drug names" style="height:100px;font-size: 20px;width:400px;color:black" ></textarea>
      </div>
    </div>
    <br>
  <div style="margin-left: 40px;">
                                <button class="btn btn--radius-2 btn--red" type="submit" style="background: #121020;font-size: 15px;color: white; ">submit</button>
                        </div>
  </form>
            </div>
        </div>
        </div>
</div>
</div>
    </body>
</html>
