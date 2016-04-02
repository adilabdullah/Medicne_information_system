<%-- 
    Document   : Home
    Created on : Apr 27, 2015, 10:17:47 PM
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
  <link href="css/bootstrap.min.css" rel="stylesheet"/>  
  <script src="js/bootstrap.min.js"></script>
  <link href="css/styles.css" rel="stylesheet"/>
    <script type="text/javascript" src="jquery-1.11.2.min(1).js"></script> 
    <script type="text/javascript" src="ajax.js"></script>
      <link rel="stylesheet" type="text/css" media="all" href="extra.css"/>

      <link href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">
      <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
      <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
              <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="js/bootstrap.js"></script>
  <title>JSP Page</title>
  <style>
     .transbox
{
    width:200px;
    height:200px;
  background-color: blueviolet;
  border: 1px solid black;
  opacity:0.6;
  filter:alpha(opacity=60); /* For IE8 and earlier */
}
img{
opacity:0.6px;
}
img:hover{
opacity:1px;
}
      </style>
<script>
$(function(){
  $('#loginform').submit(function(e){
    return false;
  });
  
  $('#modaltrigger').leanModal({ top: 110, overlay: 0.45, closeButton: ".hidemodal" });
});

$(function() {
            $( "#dialog-1" ).dialog({
               autoOpen: false,  
            });
            $( "#opener" ).click(function() {
               $( "#dialog-1" ).dialog( "open" );
            });
         });
         
         $(function() {
    $( "#dialog" ).dialog();
  });
</script>
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
  <div class="container">
  <div class="row">
  <h1 style="color:grey;">Adil Abdullah</h1>
  </div>
  </div>
  <div class="container-fluid" id="myDiv">
  
  <img src="ans.png" alt="Medicines">

  </div>
        <div class="container-fluid" id="myDiv">
        <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators >
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <Wrapper for slides>
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="DSC05354.JPG" alt="Drugs" class="img-responsive">
         <div class="carousel-caption">
        <h3>Pharmaceutical Drugs</h3>
        <p>Help in searching the particular disease medicine.</p>
      </div>
      </div>

      <div class="item">
        <img src="DSC05355.JPG" alt="Drugs" class="img-responsive">
         <div class="carousel-caption">
        <h3>Drugs Information</h3>
        <p>Yuo can find all drugs information in one place.</p>
      </div>
      </div>
    
      <div class="item">
        <img src="st.JPG" alt="Medicines" class="img-responsive">
         <div class="carousel-caption">
        <h3>Easy for customer</h3>
        <p>You cand find price and each everything of drugs you want.</p>
      </div>
      </div>

      <div class="item">
        <img src="tt.JPG" alt="Medicines" class="img-responsive">
         <div class="carousel-caption">
        <h3>Drugs for particualr diseases</h3>
        <p>All drugs available for all type of disease.</p>
      </div>
      </div>
    </div>
    <!-- Left and right controls >
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  
</div>
      <!-- div class="container-fluid" style="background-color:black;color:white;border-top-left-radius:8px;border-top-right-radius:8px;">

  <div class="row">
<h1 style="margin-left:17px;">About Us</h1>    
<div class="col-sm-3" style="border-right:2px solid white;">
<h1 style="line-height:5px;">Adil Abdullah</h1>      
<h2 style="line-height:12px;">Developer</h2>
      <p>Developed system using JSP and eclipse framework and connect it with Mysql</p>
<span class="glyphicon glyphicon-phone"></span>  0313-2770440 <br>
<span class="glyphicon glyphicon-envelope"></span>  adil_abdullah@hotmail.com
</div>
    <div class="col-sm-3" style="border-right:2px solid white;">
<h1 style="line-height:5px;">Uzair Hassan</h1> 
     <h2 style="line-height:12px;">Database Design</h2>
      <p>Design and create table in database and map relationship between them</p>
<span class="glyphicon glyphicon-phone"></span>  0322-3490266 <br>
<span class="glyphicon glyphicon-envelope"></span>  uzairsiddiqui39@yahoo.com
    </div>
    <div class="col-sm-3" style="border-right:2px solid white;">
<h1 style="line-height:5px;">Saad sheikh</h1>
      <h2 style="line-height:12px;">Frontend design</h2> 
      <p>Design frontend view using HTML,CSS and bootstrap</p>
<span class="glyphicon glyphicon-phone"></span>  0321-3453246 <br>
<span class="glyphicon glyphicon-envelope"></span>  saadshaikh100@gmail.com
    </div>
 <div class="col-sm-3">
<h1 style="line-height:5px;">Aneeq ur Rehman</h1>
      <h2 style="line-height:12px;">Co Developer</h2> 
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
