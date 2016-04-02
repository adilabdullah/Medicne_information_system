<%-- 
    Document   : entry
    Created on : Apr 29, 2015, 12:14:42 PM
    Author     : pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
  <link href="css/bootstrap.min.css" rel="stylesheet"/>  
  <script src="js/bootstrap.min.js"></script>
  <link href="css/styles.css" rel="stylesheet"/>
    <script type="text/javascript" src="jquery-1.11.2.min(1).js"></script> 
    <script type="text/javascript" src="ajax.js"></script>
      <link rel="stylesheet" type="text/css" media="all" href="extra.css"/>
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
      <link href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">
      <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
      <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
       <script>
function loadXMLDoc()
{
	var mn=document.getElementById("mname").value;
	var mc=document.getElementById("mclass").value;
	var mf=document.getElementById("mformula").value;
	var mp=document.getElementById("mpurpose").value;
	var mt=document.getElementById("mtype").value;
	var mpa=document.getElementById("mpacking").value;
	var mma=document.getElementById("mmanufacturer").value;
	var mpr=document.getElementById("mprice").value;
	
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
    document.getElementById("insert").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET","InsertEntry.jsp?mname="+mn+"&mclass="+mc+"&mformula="+mf+"&mpurpose="+mp+"&mtype='"+mt+"&mpacking="+mpa+"&mmanufacturer="+mma+"&mprice="+mpr,true);
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
  <div class="col-sm-2">
  </div>
  <div class="col-sm-8">
<form role="form">
    <div class="form-group">
      <label for="cvc">Mcvccv:</label>
      <input type="text" class="form-control" id="dsf" name="dfds" placeholder="Enter Medicine Name">
    </div>
    <div class="form-group">
      <label for="name">Medicine Name:</label>
      <input type="text" class="form-control" id="mname" name="mname" placeholder="Enter Medicine Name" required>
    </div>


   <div class="form-group">
      <label for="name">Select Class</label>
      <select class="form-control" id="mclass" name="mclass" required>
         <option>Class 1</option>
         <option>Class 2</option>
         <option>Class 3</option>
         <option>Class 4</option>
         <option>Class 5</option>
      </select>
</div>




    <div class="form-group">
      <label for="generic">Formula:</label>
      <input type="text" class="form-control" name="mformula" id="mformula" placeholder="Enter Medicine Formula" required>
    </div>
    <div class="form-group">
      <label for="purpose">Purpose:</label>
      <input type="text" class="form-control" name="mpurpose" id="mpurpose" placeholder="Enter Medicine Purpose" required>
    </div>
   
   
     <div class="form-group">
      <label for="name">Select Type</label>
      <select class="form-control" id="mtype" name="mtype" required>
         <option>Syrup</option>
         <option>Capsule</option>
         <option>Tablet</option>
      </select>
</div>



   <div class="form-group">
      <label for="name">Select Packing</label>
      <select class="form-control" id="mpacking" name="mpacking" required>
         <option>Bottle</option>
         <option>Packet</option>
         <option>Sachet</option>
         <option>Box</option>
      </select>
</div>




  <div class="form-group">
      <label for="manufacturer">Manufacturer:</label>
      <input type="text" class="form-control" id="mmanufacturer" name="mmanufacturer" placeholder="Enter Medicine Manufaturer" required>
    </div>
    <div class="form-group">
      <label for="price">Price:</label>
      <input type="number" class="form-control" id="mprice" name="mprice" placeholder="Enter Medicine Price" required>
    </div>
    <button type="button" class="btn btn-default" onclick="loadXMLDoc()">Submit</button>
  </form>
  </div>
  <div class="col-sm-2">
  </div>
  </div>
</div>
<div class="container" id="insert">
</div>
<div class="container-fluid" style="background-color:black;color:white;border-top-left-radius:8px;border-top-right-radius:8px;">

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
