<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="java.sql.Statement"%>
    <%@page import="java.sql.ResultSet"%>
    <%@page import="java.sql.Connection"%>
    <%@page import="org.database.connection.Dbconnect"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
meta name="viewport" content="width=device-width, initial-scale=1.0">
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
      <script type="text/javascript">
      var tt;
function getRowss(y)
{tt=y.rowIndex;
}
function myFunction() {
   //alert(document.getElementById("myTable").rows[tt].cells[0].innerHTML+""+document.getElementById("myTable").rows[tt].cells[1].innerHTML);
document.getElementById("sno").value=document.getElementById("myTable").rows[tt].cells[0].innerHTML;
document.getElementById("code").value=document.getElementById("myTable").rows[tt].cells[1].innerHTML;   
document.getElementById("brand").value=document.getElementById("myTable").rows[tt].cells[2].innerHTML;
document.getElementById("purpose").value=document.getElementById("myTable").rows[tt].cells[3].innerHTML;
document.getElementById("generic").value=document.getElementById("myTable").rows[tt].cells[4].innerHTML;
document.getElementById("classs").value=document.getElementById("myTable").rows[tt].cells[5].innerHTML;
document.getElementById("type").value=document.getElementById("myTable").rows[tt].cells[6].innerHTML;
document.getElementById("packing").value=document.getElementById("myTable").rows[tt].cells[7].innerHTML;
document.getElementById("manufacturer").value=document.getElementById("myTable").rows[tt].cells[8].innerHTML;
document.getElementById("price").value=document.getElementById("myTable").rows[tt].cells[9].innerHTML;
        //alert(document.getElementById("myTable").rows[tt].cells[1].innerHTML);
} 
function loadXMLDoc()
{
	var nm=document.getElementById("mname").value;
	var mp=document.getElementById("mpurpose").value;
	var mm=document.getElementById("mmanufacturer").value;
	var mc=document.getElementById("mprice").value;
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
    document.getElementById("retreive").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET","Fetch.jsp?mname="+nm+"&mpurpose="+mp+"&mmanufacturer="+mm+"&mprice="+mc,true);
xmlhttp.send();
}
 </script>
<title>Insert title here</title>
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
  <div class="form-group">
    <label for="code">Code:</label>
    <input type="text" class="form-control" name="code" id="code">
  </div>
<div class="form-group">
    <label for="brand">Brand:</label>
    <input type="text" class="form-control" name="brand" id="brand">
  </div>
  <div class="form-group">
    <label for="classs">Class:</label>
    <input type="text" class="form-control" name="classs"id="classs">
  </div>
  <div class="form-group">
    <label for="generic">Generic:</label>
    <input type="text" class="form-control" name="generic" id="generic">
  </div>
  <div class="form-group">
    <label for="purpose">Purpose:</label>
    <input type="text" class="form-control" name="purpose" id="purpose">
  </div>
  <div class="form-group">
    <label for="type">Type:</label>
    <input type="text" class="form-control" name="type" id="type">
  </div>
  <div class="form-group">
    <label for="packing">Packing:</label>
    <input type="text" class="form-control" name="packing" id="packing">
  </div>
  <div class="form-group">
    <label for="manufacturer">Manufacturer:</label>
    <input type="text" class="form-control" name="manufacturer" id="manufacturer">
  </div>
  <div class="form-group">
    <label for="price">Price:</label>
    <input type="text" class="form-control" name="price" id="price">
  </div>
</form>
</div>
<div class="col-sm-2">
</div>
</div>
</div>
<div class="container-fluid" class="wrap">
<div class="row">
<div class="col-sm-2">
</div>
<div class="col-sm-8">
<form role="form" class="form-inline">
  <div class="form-group" style="padding:8px;">
      <label for="brand">Name:</label>
      <input type="text" class="form-control" name="mname" id="mname" placeholder="Name">
    </div>

<div class="form-group" style="padding:8px;">
      <label for="purpose">Email:</label>
      <input type="text" class="form-control" name="mpurpose" id="mpurpose" placeholder="Medicine Purpose">
    </div>
 
    <div class="form-group" style="padding:8px;">
      <label for="manufacturer">Manufacturer:</label>
      <input type="text" class="form-control" name="mmanufacturer" id="mmanufacturer" placeholder="Manufacturer">
    </div>
    <div class="form-group" style="padding:8px;">
      <label for="price">Price:</label>
      <input type="text" class="form-control" name="mprice" id="mprice" placeholder="Price">
    </div>
    <button type="button" class="btn btn-default" onclick="loadXMLDoc()">Go</button>
</form>
</div>
<div class="col-sm-2">
</div>
</div>
</div>
<div class="container" id="retreive">

 
</div>
<!-- div class="container" style="background-color:black;color:white;border-top-left-radius:8px;border-top-right-radius:8px;">

  <div class="row">
<h1 style="margin-left:17px;line-height:6px;">About Us</h1>    
<div class="col-sm-3" style="border-right:2px solid white;">
<h2 style="line-height:2px;">Adil Abdullah</h2>      
<h3 style="line-height:7px;">Developer</h3>
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
</div-->


</body>
</html>