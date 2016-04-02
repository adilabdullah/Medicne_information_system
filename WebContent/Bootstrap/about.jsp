<%-- 
    Document   : about
    Created on : Apr 28, 2015, 11:01:17 PM
    Author     : pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
  <link href="css/bootstrap.min.css" rel="stylesheet"/>  
  <script src="js/bootstrap.min.js"></script>
  <link href="css/styles.css" rel="stylesheet"/>
    <script type="text/javascript" src="jquery-1.11.2.min(1).js"></script> 
    <script type="text/javascript" src="ajax.js"></script>
      <link rel="stylesheet" type="text/css" media="all" href="extra.css"/>
      <link href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">
      <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
      <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
        <script>
function loadXMLDoc()
{
	var ce=document.getElementById("cell").value;
	var na=document.getElementById("nationality").value;
	var re=document.getElementById("religion").value;
	var pw=document.getElementById("password").value;
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
    document.getElementById("welcome").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET","other.jsp?cell="+ce+"&nationality="+na+"&religion="+re+"&password="+pw,true);
xmlhttp.send();
}
</script>
        <title>JSP Page</title>
    </head>
    <body>
    <div class="container">
    <header class="navbar navbar-inverse navbar-fixed-top bs-docs-nav" role="banner">
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
          <a href="#">Home</a>
        </li>
        <li class="active"><a href="#">About Us</a>
	      </li>
        <li>
          <a href="#" onclick="loadDruglist()">Drug List</a>
        </li>
        <li>
          <a href="#" onclick="loadEntry()">Medicines</a>
        </li>
        <li>
          <a href="#" onclick="loadPharmaceutical()">Pharmaceuticals</a>
        </li>
        <li>
          <a href="#">Contact</a>
        </li>
      </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="#" onclick="loadSignin()">Sign In</a></li>
            <li><a href="#" onclick="loadSignup()">Sign Up</a></li>
        </ul>
    </nav>
</header>   
  </div>
   <div class="container-fluid">
   <div class="row">
   <div class="col-sm-2"></div>
   <div class="col-sm-8"><h1>Adil Abdullah</h1></div>
   <div class="col-sm-2"></div>
   </div>
   <div class="row">
   <div class="col-sm-2"></div>
   <div class="col-sm-8">
   <h1>Adil Abdullah</h1>
   <h2>Developer</h2>
   <h3>Developed and desing the front end and back end of the system using bootstrap,Javascript,CSS and Mysql as backend.</h3>
   </div>
   <div class="col-sm-2"></div>
   </div>
 
 
   <div class="row">
   <div class="col-sm-2"></div>
   <div class="col-sm-8">
   <h1>Saad Sheikh</h1>
   <h2>Designer</h2>
   <h3>Desing front end and webpages of the system using bootstrap and other technologies.</h3>
   </div>
   <div class="col-sm-2"></div>
   </div>
 

   <div class="row">
   <div class="col-sm-2"></div>
   <div class="col-sm-8">
   <h1>Uzair Hassan</h1>
   <h2>Backend Design</h2>
   <h3>Design database and backend of the system.</h3>
   </div>
   <div class="col-sm-2"></div>
   </div> 
   
   <div class="row">
   <div class="col-sm-2"></div>
   <div class="col-sm-8">
   <h1>Aneeq-ur-Rehman</h1>
   <h2>Developer</h2>
   <h3>Design and developed frontend and backend of the system and model ideas and creativity.</h3> 
   </div>
   <div class="col-sm-2"></div>
   </div>
  </div>
   

   
     
     <form role="form">
     Cell:<input type="text" name="cell" id="cell" placeholder="Enter Cell"/>
        <label id="lbc"></label><br>
        Nationality:<input type="text" name="nationality" id="nationality" placeholder="Enter Nationality"/>
        <label id="lbn"></label><br>
        Religion:<input type="text" name="religion" id="religion" placeholder="Enter Religion"/>
        <label id="lbr"></label><br>
        Password:<input type="text" name="password" id="password" placeholder="Enter Password"/>
        <label id="lbp"></label><br>
       <div class="form-group">
         <div class="dropdown">
    <button class="btn btn-default dropdown-toggle" type="button" id="menu1" data-toggle="dropdown">Type
    <span class="caret"></span></button>
    <ul class="dropdown-menu" name="type" role="menu" aria-labelledby="menu1">
      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Tablet</a></li>
      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Syrup</a></li>
      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Capsule</a></li>
    </ul>
  </div>
  </div>
    <button type="button" onclick="loadXMLDoc()">Click</button>
    </form>
    
    <div id="welcome">
    </div-->
    </body>
</html>
