<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>pharmacy</title>
    
    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/responsive.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
    
      body {
  background-image: url("img/s8.jpg");
width:100%;
height: 100%;
    }
    
    * {
  box-sizing: border-box;
}

body {
  margin: 0px;
  font-family: 'segoe ui';
}

.nav {
  height: 65px;
  width: 100%;
  background-color: #4d4d4d;
  position: relative;
}

.nav > .nav-header {
  display: inline;
}

.nav > .nav-header > .nav-title {
  display: inline-block;
  font-size: 22px;
  color: #fff;
  padding: 10px 10px 10px 10px;
}

.nav > .nav-btn {
  display: none;
}

.nav > .nav-links {
  display: inline;
  float: right;
  font-size: 18px;
}

.nav > .nav-links > a {
  display: inline-block;
  padding: 13px 10px 13px 10px;
  text-decoration: none;
  color: #efefef;
}

.nav > .nav-links > a:hover {
  background-color: rgba(0, 0, 0, 0.3);
}

.nav > #nav-check {
  display: none;
}

@media (max-width:600px) {
  .nav > .nav-btn {
    display: inline-block;
    position: absolute;
    right: 0px;
    top: 0px;
  }
  .nav > .nav-btn > label {
    display: inline-block;
    width: 50px;
    height: 50px;
    padding: 13px;
  }
  .nav > .nav-btn > label:hover,.nav  #nav-check:checked ~ .nav-btn > label {
    background-color: rgba(0, 0, 0, 0.3);
  }
  .nav > .nav-btn > label > span {
    display: block;
    width: 25px;
    height: 10px;
    border-top: 2px solid #eee;
  }
  .nav > .nav-links {
    position: absolute;
    display: block;
    width: 100%;
    background-color: #333;
    height: 0px;
    transition: all 0.3s ease-in;
    overflow-y: hidden;
    top: 50px;
    left: 0px;
  }
  .nav > .nav-links > a {
    display: block;
    width: 100%;
  }
  .nav > #nav-check:not(:checked) ~ .nav-links {
    height: 0px;
  }
  .nav > #nav-check:checked ~ .nav-links {
    height: calc(100vh - 50px);
    overflow-y: auto;
  }
}
</style>

<style>

* {
    box-sizing: border-box;
    margin: 0;
}

html,
body {
    margin: 0 auto;
    min-height: 100%;
    font-family: 'Yanone Kaffeesatz', Consolas;
}

h1 {
    text-align: center;
    margin: 40px auto;
    padding: 10px;
    width: 260px;
    border: 3px dashed #3FC380;
    color: #34495E;
    letter-spacing: 1px;
    word-spacing: 3px;
    font-size: 26px;
    font-weight: 400;
}

.details {
    margin: 0 auto;
    font-size: 18px;
    font-weight: 300;
    width: 200px;
    padding: 2px 5px;
    letter-spacing: 1px;
    position: relative;
    right: 30px;
    bottom: 30px;
    color: #6C7A89;
}

form {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
}

.col {
    width: 400px;
    min-width: 300px;
}

form .minput {
    position: relative;
    margin: 45px 10px;
    width: 90%;
    max-width: 400px;
}

.minput input {
    font-size: 20px;
    padding: 1px 4px;
    display: block;
    width: 100%;
    border: none;
    font-family: 'Yanone Kaffeesatz', sans-serif;
    letter-spacing: 1px;
    color: #3E4651;
    -webkit-border-radius: 2px 0 0 2px;
    -moz-border-radius: 2px 0 0 2px;
    border-radius: 2px 0 0 2px;
    border-bottom: 1px solid #dadada;
}

.minput input[type="number"] {
    width: 60px;
    padding-right: 0;
}

input[type="number"] ~ .bar {
    width: 60px;
}

input[type="number"] ~ label {
    margin: 0;
}

.minput input:focus {
    outline: none;
}

.minput label {
    color: #afafaf;
    font-size: 20px;
    font-weight: normal;
    position: absolute;
    pointer-events: none;
    left: 5px;
    top: -2px;
    transition: 0.2s ease all;
    -moz-transition: 0.2s ease all;
    -webkit-transition: 0.2s ease all;
}

textarea:focus ~ label,
textarea:valid ~ label,
input:focus ~ label,
input:valid ~ label,
.up ~ label {
    top: -19px;
    font-size: 20px;
}

.bar {
    position: relative;
    display: block;
    width: 100%;
}

.bar:before,
.bar:after {
    content: '';
    height: 2px;
    width: 0;
    bottom: 0;
    background-color: #afafaf;
    position: absolute;
    transition: 0.2s ease all;
    -moz-transition: 0.2s ease all;
    -webkit-transition: 0.2s ease all;
}

.bar:before {
    left: 50%;
}

.bar:after {
    right: 50%;
}

input:focus ~ .bar:before,
input:focus ~ .bar:after {
    width: 50%;
}

input[type=submit] {
    cursor: pointer;
    background-color: #1ABC9C;
    color: white;
    border-radius: 3px;
    border: none;
    max-width: 125px;
}

input:disabled {
    background: #3B7E87;
    cursor: not-allowed;
}


/* Button radio/checkbox/select */

.control {
    display: block;
    position: relative;
    padding-left: 30px;
    margin-bottom: 10px;
    cursor: pointer;
    font-size: 20px;
    color: #afafaf;
    margin: 6px 10px;
}

.sex {
    margin: 26px 10px;
    font-size: 20px;
    color: #afafaf;
    top: -7px;
}

.control input {
    position: absolute;
    z-index: -1;
    opacity: 0;
}

label.control--radio {
    width: 80px;
}

.control__indicator {
    position: absolute;
    top: -2px;
    left: 0;
    height: 20px;
    width: 20px;
    background: #afafaf;
}

.control--radio .control__indicator {
    border-radius: 50%;
}

.control:hover input ~ .control__indicator,
.control input:focus ~ .control__indicator {
    background: #ccc;
}

.control input:checked ~ .control__indicator {
    background: #66CC99;
}

.control:hover input:not([disabled]):checked ~ .control__indicator,
.control input:checked:focus ~ .control__indicator {
    background: #66CC99;
}

.control input:disabled ~ .control__indicator {
    background: #e6e6e6;
    opacity: 0.6;
    pointer-events: none;
}

.control__indicator:after {
    content: '';
    position: absolute;
    display: none;
}

.control input:checked ~ .control__indicator:after {
    display: block;
}

.control--checkbox .control__indicator:after {
    left: 8px;
    top: 4px;
    width: 3px;
    height: 8px;
    border: solid #fff;
    border-width: 0 2px 2px 0;
    transform: rotate(45deg);
}

.control--checkbox input:disabled ~ .control__indicator:after {
    border-color: #7b7b7b;
}

.control--radio .control__indicator:after {
    left: 7px;
    top: 7px;
    height: 6px;
    width: 6px;
    border-radius: 50%;
    background: #fff;
}

.control--radio input:disabled ~ .control__indicator:after {
    background: #7b7b7b;
}

.select {
    position: relative;
    display: inline-block;
    margin-bottom: 0;
    width: 160px;
}

.select select {
    display: inline-block;
    width: 160px;
    cursor: pointer;
    padding: 10px;
    outline: 0;
    border: 0;
    border-bottom: 1px solid #afafaf;
    border-radius: 5px 5px 0 0;
    background: #fff;
    color: #afafaf;
    appearance: none;
    -webkit-appearance: none;
    -moz-appearance: none;
    font-family: 'Yanone Kaffeesatz', sans-serif;
    font-size: 22px;
}

.select option {
    font-family: Consolas, "monospace";
    font-size: 18px;
}

.select select::-ms-expand {
    display: none;
}

.select select:disabled {
    opacity: 0.5;
    pointer-events: none;
}

.select__arrow {
    position: absolute;
    top: 17px;
    right: 14px;
    width: 0;
    height: 0;
    pointer-events: none;
    border-style: solid;
    border-width: 8px 5px 0 5px;
    border-color: #7b7b7b transparent transparent transparent;
}

.select select:disabled ~ .select__arrow {
    border-top-color: #ccc;
}
</style>
  </head>
  <body>
   
    <div class="nav">
  <input type="checkbox" id="nav-check">
  <div class="nav-header">
    <div class="nav-title">
      Online Pharmacy
    </div>
  </div>
  <div class="nav-btn">
    <label for="nav-check">
      <span></span>
      <span></span>
      <span></span>
    </label>
  </div>
  
  <div class="nav-links">
          <a href="pharmacy2.jsp" >Pharmacy </a>

    <a href="viewcustomers.jsp" >Customers</a>
    <a href="viewdoctor.jsp" >Doctor</a>
        <a href="purhistory.jsp" >Purchase History</a>

    <a href="index.jsp" >Logout</a>
  </div>
</div>
    <body>
    <h1>Products Details</h1>
    
    <form method="POST" action="productscheck.jsp">
        <div class="col">
            <div class="minput">
                <input type="text" name="pname" required>
                <span class="bar"></span>
                <label>Product Name</label>
            </div>
            <div class="minput">
                <input type="text" name="manufacturer" required>
                <span class="bar"></span>
                <label>Manufacturer Name</label>
            </div>
            <div class="minput">
                <label style="margin-top:-22px">
                    Manufacturing date
                </label>
                <span class="bar"></span>
                <input type="date"  name="mfg">
            </div>

            <div class="minput">
                <label style="margin-top:-22px">
                    Expiry date
                </label>
                <span class="bar"></span>
                <input type="date"  name="exp">
            </div>
            
           
            </div>
        </div>
        <div class="col" style="    margin-top: 20px;">
            

           
<div class="minput">
                <input type="number" name="quantity">
                <span class="bar"></span>
                <label>quantity</label>
            </div>
              <div class="minput">
                <input type="text" name="price">
                <label>Price</label>
            </div>
           
              
            <div class="minput">
            <input type="file" name="img">
                <span class="bar"></span>
                <label style="margin-top: -14px;"> Image</label>
            </div>
            
            <div class="minput">
                
                <input type="submit"  value="Add"  style="padding:5px;padding-top:7px;">
            </div>
        </div>
    </form>
</body>  
      
  </body>
</html>
