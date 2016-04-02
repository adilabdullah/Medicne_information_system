<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.Random"%>
    <%@page import="java.sql.PreparedStatement"%>
    <%@page import="java.sql.Connection"%>
    <%@page import="org.database.connection.Dbconnect"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="jquery-1.11.2.min(1).js"></script> 
    <script type="text/javascript" src="ajax.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>  
  <script src="js/bootstrap.min.js"></script>
   <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
      <link href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">
      <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
      <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
    <script>
function loadXMLDoc()
{
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
    document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET","login.jsp",true);
xmlhttp.send();
}
</script>
<title>Insert title here</title>
</head>
<body>
<%
Random ran=new Random();
Dbconnect conect=new Dbconnect();
Connection con=conect.conn();
PreparedStatement pst;
int co=ran.nextInt(9999)+0000;
int cc=ran.nextInt(9999)+0000;
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String email=request.getParameter("email");
String occupation=request.getParameter("occupation");
String about=request.getParameter("about");
String company=request.getParameter("company");
String password=request.getParameter("password");
try{
	String sql="INSERT INTO person(code,first_name,last_name,email,occupation,about,company,company_code,password) VALUES (?,?,?,?,?,?,?,?,?)";
	pst=con.prepareStatement(sql);
    pst.setInt(1,co);
    pst.setString(2,fname);
    pst.setString(3,lname);
    pst.setString(4,email);
    pst.setString(5,occupation);
    pst.setString(6,about);
    pst.setString(7,company);
    pst.setInt(8,cc);
    pst.setString(9,password);
           pst.execute();%>
   <div class="alert alert-success">
    <strong>Success!</strong> Your account created successfully
  </div>      
<%}
catch(Exception ex)
{ex.printStackTrace();%>
<div class="alert alert-warning">
    <strong>Warning!</strong> <%=ex.getMessage() %>
  </div>
<% }%>
<p>Now Login to your account</p>
<button type="button" class="btn btn-success" onClick="location.href='login.jsp'">Login</button>
</body>
</html>