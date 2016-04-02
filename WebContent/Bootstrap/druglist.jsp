<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.Random"%>
    <%@page import="java.sql.PreparedStatement"%>
     <%@page import="java.sql.Statement"%>
    <%@page import="java.sql.ResultSet"%>
    <%@page import="java.sql.Connection"%>
    <%@page import="org.database.connection.Dbconnect"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
<div class="container">
<div class="row">
<h1 style="color:grey;">Adil Abdullah</h1>

</div>
</div>  
 <div class="container-fluid" id="myDiv">
 <table class="table" id="myTable">
    <thead style="background-color:black;color:white;">
      <tr>
        <th>Sno</th>
        <th>Code</th>
        <th>Brand</th>
        <th>Class</th>
        <th>Generic</th>
        <th>Purpose</th>
        <th>Type</th>
        <th>Packing</th>
        <th>Manufacturer</th>
        <th>Price</th>
      </tr>
    </thead>
    <tbody>
      <%
          int i=1;
          ResultSet rs;
            Connection con;
            Statement st;
            Dbconnect conect=new Dbconnect();
            con=conect.conn();
            try{
            String query="select * from medicine";
            st=con.createStatement();
            rs=st.executeQuery(query);        
      while(rs.next())
        { 
        out.print("<tr onclick=\"getRowss(this)\">");
       // i=Integer.parseInt(rs.getString("sno"));
       // session.setAttribute("serial",i);
            out.print("<td onclick=\"myFunction();\">"+rs.getString("sno").toString()+"</td>");
            out.print("<td>"+rs.getString("code").toString()+"</td>");
            out.print("<td name=\"nme\">"+rs.getString("brand").toString()+"</td>");
            out.print("<td>"+rs.getString("class").toString()+"</td>");
            out.print("<td>"+rs.getString("generic").toString()+"</td>");
            out.print("<td>"+rs.getString("purpose").toString()+"</td>");
            out.print("<td>"+rs.getString("type").toString()+"</td>");
            out.print("<td>"+rs.getString("packing").toString()+"</td>");
            out.print("<td>"+rs.getString("manufacturer").toString()+"</td>");
            out.print("<td>"+rs.getString("price").toString()+"</td>");            
            out.print("</tr>");
       i++;
        } 
}
      catch(Exception ex)
      {ex.printStackTrace();
      out.print("Error:"+ex.getMessage());
}

  %>
  
    </tbody>
  </table>
 </div>
 <!-- div class="container-fluid" style="background-color:black;color:white;border-top-left-radius:8px;border-top-right-radius:8px;">

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
</div-->
 
</body>
</html>