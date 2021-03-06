<%-- 
    Document   : register
    Created on : Apr 29, 2015, 11:34:41 PM
    Author     : pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="js/bootstrap.js"></script>
  <link href="css/bootstrap.min.css" rel="stylesheet"/>  
  <link href="css/styles.css" rel="stylesheet"/>
  <script type="text/javascript" src="ajax.js"></script>
    <script type="text/javascript" src="jquery-1.11.2.min(1).js"></script> 
      <link rel="stylesheet" type="text/css" media="all" href="extra.css"/>
       <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
      <link href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">
      <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
      <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
              <script>
function loadXMLDoc()
{
	var fn=document.getElementById("fname").value;
	var ln=document.getElementById("lname").value;
	var em=document.getElementById("email").value;
	var oc=document.getElementById("occupation").value;
	var ab=document.getElementById("about").value;
	var co=document.getElementById("company").value;
	var pw=document.getElementById("pwd").value;
	var xmlhttp;
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("inserts").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET","InsertRegister.jsp?fname="+fn+"&lname="+ln+"&email="+em+"&occupation="+oc+"&about='"+ab+"&company="+co+"&password="+pw,true);
xmlhttp.send();
}
</script>
      <title>JSP Page</title>
    </head>
    <body>
         <header class="navbar navbar-inverse navbar-fixed-top bs-docs-nav" role="banner">
    <div class="container">
    <div class="navbar-header">
      <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
         </div>
    <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
      <ul class="nav navbar-nav">
        <li>
          <a href="#" onclick="loadHome()">Home</a>
        </li>
        <li><a href="#" onclick="loadMedicines()">Medicines</a>
	      </li>
        <li>
          <a href="#" onclick="loadDruglist()">Drug List</a>
        </li>
        <li>
          <a href="#" onclick="loadEntry()">Inserts Medicines</a>
        </li>
        <li>
          <a href="#" onclick="loadPharmaceutical()">Pharmaceuticals</a>
        </li>
      </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="#" onclick="loadSignin()">Sign In</a></li>
            <li><a href="#" onclick="loadSignup()">Sign Up</a></li>
        </ul>
    </nav>
    </div>
</header>
        <div class="container-fluid" id="myDiv">
     <div class="row">
     <div class="col-sm-2"></div>
     <div class="col-sm-8"></div>
     <div class="col-sm-2"></div>
     </div>
     <div class="row">
      <div class="col-sm-2">
      </div>
      <div class="col-sm-8">
        <form role="form">
<div class="form-group">
      <label for="fdrd">FF</label>
      <input type="text" class="form-control" id="fnm" name="dsfds" placeholder="tvtv">
    </div>
    <div class="form-group">
      <label for="firstname">First Name:</label>
      <input type="text" class="form-control" id="fname" name="fname" placeholder="First Name" required>
    </div>
    <div class="form-group">
      <label for="lastname">Last Name:</label>
      <input type="text" class="form-control" id="lname" name="lname" placeholder="Last Name" required>
    </div>
            <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" name="email" placeholder="Email" required>
    </div>
    <div class="form-group">
      <label for="occupation">Occupation:</label>
      <input type="text" class="form-control" id="occupation" name="occupation" placeholder="Occupation" required>
    </div>
    <div class="form-group">
      <label for="about">About:</label>
      <input type="text" class="form-control" id="about" name="about" placeholder="About" required>
    </div>
    <div class="form-group">
      <label for="company">Company:</label>
      <input type="text" class="form-control" id="company" name="company" placeholder="Company" required>
    </div>            
            <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" name="password" placeholder="Enter password" required>
    </div>
    <div class="checkbox">
      <label><input type="checkbox"> Remember me</label>
    </div>
    <button type="button" class="btn btn-success" id="submit" onclick="loadXMLDoc()">Submit</button>
  </form>
  </div>
  <div class="col-sm-2">
  </div>
  </div>
        </div>
        <div class="container" id="inserts">
        </div>
        <div class="container" style="background-color:black;color:white;border-top-left-radius:8px;border-top-right-radius:8px;">

  <div class="row">
<h1 style="margin-left:17px;">About Us</h1>    
<div class="col-sm-3" style="border-right:2px solid white;">
<h2 style="line-height:5px;">Adil Abdullah</h2>      
<h3 style="line-height:12px;">Developer</h3>
      <p>Developed system using JSP and eclipse framework and connect it with Mysql</p>
<span class="glyphicon glyphicon-phone"></span>  0313-2770440 <br>
<span class="glyphicon glyphicon-envelope"></span>  adil_abdullah@hotmail.com
</div>
    <div class="col-sm-3" style="border-right:2px solid white;">
<h2 style="line-height:5px;">Uzair Hassan</h2> 
     <h3 style="line-height:12px;">Database Design</h3>
      <p>Design and create table in database and map relationship between them</p>
<span class="glyphicon glyphicon-phone"></span>  0322-3490266 <br>
<span class="glyphicon glyphicon-envelope"></span>  uzairsiddiqui39@yahoo.com
    </div>
    <div class="col-sm-3" style="border-right:2px solid white;">
<h2 style="line-height:5px;">Saad sheikh</h2>
      <h3 style="line-height:12px;">Frontend design</h3> 
      <p>Design frontend view using HTML,CSS and bootstrap</p>
<span class="glyphicon glyphicon-phone"></span>  0321-3453246 <br>
<span class="glyphicon glyphicon-envelope"></span>  saadshaikh100@gmail.com
    </div>
 <div class="col-sm-3">
<h2 style="line-height:5px;">Aneeq ur Rehman</h2>
      <h3 style="line-height:12px;">Co Developer</h3> 
      <p>Connect frontend with backend database</p>
<span class="glyphicon glyphicon-phone"></span>  0345-2307370 <br>
<span class="glyphicon glyphicon-envelope"></span>  aneequok@hotmail.com
    </div>
  </div>
<div class="row">
<h3 style="margin-left:17px;line-height:6px;color:black;">About Us</h3>
</div>
</div>
        
    </body>
</html>
