<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/bootstrap.min.css" rel="stylesheet"/>  
  <script src="js/bootstrap.min.js"></script>
  <style>
img {
    opacity: 0.4;
    filter: alpha(opacity=40); /* For IE8 and earlier */
}

img:hover {
opacity:1;
    filter: alpha(opacity=100); /* For IE8 and earlier */
border-bootm:4px solid yellow;
}
</style>
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
<div class="col-sm-3"></div>
<div class="col-sm-2"><img src="images/AGP.gif" class="img-thumbnail"></div>
<div class="col-sm-2"><img src="images/Alcon.gif" class="img-thumbnail"></div>
<div class="col-sm-2"><img src="images/Ali Gohar.gif" class="img-thumbnail"></div>
<div class="col-sm-3"></div>
</div>
<div class="row">
<div class="col-sm-3"></div>
<div class="col-sm-2"><a href="abbott.com"><img src="images/abbott.gif" class="img-thumbnail"></a></div>
<div class="col-sm-2"><a href="acto.com"><img src="images/Acto.gif" class="img-thumbnail"></a></div>
<div class="col-sm-2"><a href="adamjee.com"><img src="images/Adamjee.gif" class="img-thumbnail"></a></div>
<div class="col-sm-3"></div>
</div>

<div class="row">
<div class="col-sm-3"></div>
<div class="col-sm-2"><a href="ajp.com"><img src="images/AGP.gif" class="img-thumbnail"></a></div>
<div class="col-sm-2"><a href="allergan.com"><img src="images/Alcon.gif" class="img-thumbnail"></a></div>
<div class="col-sm-2"><a href="aligohar.com"><img src="images/Ali Gohar.gif" class="img-thumbnail"></a></div>
<div class="col-sm-3"></div>
</div>

<div class="row">
<div class="col-sm-3"></div>
<div class="col-sm-2"><a href="abbott.com"><img src="images/abbott.gif" class="img-thumbnail"></a></div>
<div class="col-sm-2"><a href="abbott.com"><img src="images/Acto.gif" class="img-thumbnail"></a></div>
<div class="col-sm-2"><a href="abbott.com"><img src="images/Adamjee.gif" class="img-thumbnail"></a></div>
<div class="col-sm-3"></div>
</div>

<div class="row">
<div class="col-sm-3"></div>
<div class="col-sm-2"><a href="abbott.com"><img src="images/Barret.gif" class="img-thumbnail"></a></div>
<div class="col-sm-2"><a href="bayer.com"><img src="images/Bayer.gif" class="img-thumbnail"></a></div>
<div class="col-sm-2"><a href="bms.com"><img src="images/BMS.gif" class="img-thumbnail"></a></div>
<div class="col-sm-3"></div>
</div>

<div class="row">
<div class="col-sm-3"></div>
<div class="col-sm-2"><a href="bosch.com"><img src="images/Bosch.gif" class="img-thumbnail"></a></div>
<div class="col-sm-2"><a href="efroze.com"><img src="images/Efroze.gif" class="img-thumbnail"></a></div>
<div class="col-sm-2"><a href="epla.com"><img src="images/Epla.gif" class="img-thumbnail"></a></div>
<div class="col-sm-3"></div>
</div>

<div class="row">
<div class="col-sm-3"></div>
<div class="col-sm-2"><a href="getz.com"><img src="images/Getz.gif" class="img-thumbnail"></a></div>
<div class="col-sm-2"><a href="gsk.com"><img src="images/GSK.gif" class="img-thumbnail"></a></div>
<div class="col-sm-2"><a href="highnoon.com"><img src="images/Highnoon.gif" class="img-thumbnail"></a></div>
<div class="col-sm-3"></div>
</div>

<div class="row">
<div class="col-sm-3"></div>
<div class="col-sm-2"><a href="hilton.com"><img src="images/Hilton.gif" class="img-thumbnail"></a></div>
<div class="col-sm-2"><a href="j&j.com"><img src="images/J&J.gif" class="img-thumbnail"></a></div>
<div class="col-sm-2"><a href="lilly.com"><img src="images/Lilly.gif" class="img-thumbnail"></a></div>
<div class="col-sm-3"></div>
</div>

<div class="row">
<div class="col-sm-3"></div>
<div class="col-sm-2"><a href="macter.com"><img src="images/Macter.gif" class="img-thumbnail"></a></div>
<div class="col-sm-2"><a href="merxk.com"><img src="images/Merxk.gif" class="img-thumbnail"></a></div>
<div class="col-sm-2"><a href="wyeth.com"><img src="images/Wyeth.gif" class="img-thumbnail"></a></div>
<div class="col-sm-3"></div>
</div>

<div class="row">
<div class="col-sm-3"></div>
<div class="col-sm-2"><a href="nabiqasim.com"><img src="images/Nabiqasim.gif" class="img-thumbnail"></a></div>
<div class="col-sm-2"><a href="pfizer.com"><img src="images/Pfizer.gif" class="img-thumbnail"></a></div>
<div class="col-sm-2"><a href="pharmevo.com"><img src="images/Pharmevo.gif" class="img-thumbnail"></a></div>
<div class="col-sm-3"></div>
</div>

<div class="row">
<div class="col-sm-3"></div>
<div class="col-sm-2"><a href="platium.com"><img src="images/Platium.gif" class="img-thumbnail"></a></div>
<div class="col-sm-2"><a href="recho.com"><img src="images/Recho.gif" class="img-thumbnail"></a></div>
<div class="col-sm-2"><a href="reckitt.com"><img src="images/Reckitt.gif" class="img-thumbnail"></a></div>
<div class="col-sm-3"></div>
</div>

<div class="row">
<div class="col-sm-3"></div>
<div class="col-sm-2"><a href="sandoz.com"><img src="images/Sandoz.gif" class="img-thumbnail"></a></div>
<div class="col-sm-2"><a href="sanofi.com"><img src="images/Sanofi.gif" class="img-thumbnail"></a></div>
<div class="col-sm-2"><a href="searlepak.com"><img src="images/searle.gif" class="img-thumbnail"></a></div>
<div class="col-sm-3"></div>
</div>

</div>
<div class="container" style="background-color:black;color:white;border-top-left-radius:8px;border-top-right-radius:8px;">

  <div class="row">
<h1 style="margin-left:17px;line-height:6px;">About Us</h1>    
<div class="col-sm-3" style="border-right:2px solid white;">
<h2 style="line-height:3px;">Adil Abdullah</h2>      
<h3 style="line-height:7px;">Developer</h3>
      <p>Developed system using JSP and eclipse framework and connect it with Mysql</p>
<span class="glyphicon glyphicon-phone"></span>  0313-2770440 <br>
<span class="glyphicon glyphicon-envelope"></span>  adil_abdullah@hotmail.com
</div>
    <div class="col-sm-3" style="border-right:2px solid white;">
<h2 style="line-height:3px;">Uzair Hassan</h2> 
     <h3 style="line-height:7px;">Database Design</h3>
      <p>Design and create table in database and map relationship between them</p>
<span class="glyphicon glyphicon-phone"></span>  0322-3490266 <br>
<span class="glyphicon glyphicon-envelope"></span>  uzairsiddiqui39@yahoo.com
    </div>
    <div class="col-sm-3" style="border-right:2px solid white;">
<h2 style="line-height:3px;">Saad sheikh</h2>
      <h3 style="line-height:7px;">Frontend design</h3> 
      <p>Design frontend view using HTML,CSS and bootstrap</p>
<span class="glyphicon glyphicon-phone"></span>  0321-3453246 <br>
<span class="glyphicon glyphicon-envelope"></span>  saadshaikh100@gmail.com
    </div>
 <div class="col-sm-3">
<h2 style="line-height:3px;">Aneeq ur Rehman</h2>
      <h3 style="line-height:7px;">Co Developer</h3> 
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