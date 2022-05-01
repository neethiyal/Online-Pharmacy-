<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>  Online Shopping </title>
<style>
    body {
  background: linear-gradient(90deg, #4b6cb7 0%, #182848 100%);
}

.login {
  width: 360px;
  padding: 8% 0 0;
  margin: auto;
  font-family: 'Comfortaa', cursive;
}

.form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  border-radius: 10px;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
}

.form input {
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  border-radius: 5px;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
  font-family: 'Times', cursive;
}

.form input:focus {
  background: #dbdbdb;
}

.form button {
  font-family: 'Times', cursive;
  text-transform: uppercase;
  outline: 0;
  background: #4b6cb7;
  width: 100%;
  border: 0;
  border-radius: 5px;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}

.form button:active {
  background: #395591;
}

.form span {
  font-size: 38px;
  color: #07080a;
  font-family: fangsong;
}
</style>
<!-- start-smoth-scrolling -->
<style>
    
      body {
  background-image: url("img/aqua.png");
width:100%;
height: 100%;
    }
</style>
</head>
	
<body>
<!-- header -->
	<div class="login">
  <div class="form">
      <form class="login-form" action="pharmacistlogincheck.jsp">
      <span class="material-icons" >Pharmacist Login</span>
      <input type="text" placeholder="username" name="username"/>
      <input type="password" placeholder="password" name="pass"/>
      <button>login</button><br>
      <br>
      <a href="index.jsp">Home</a>

    </form>  
  </div>
</div>
</body>
</html>