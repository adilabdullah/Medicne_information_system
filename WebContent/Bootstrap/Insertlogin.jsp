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
<title>Insert title here</title>
</head>
<body>
<%
Statement st;
ResultSet rs;
Dbconnect conect=new Dbconnect();
Connection con=conect.conn();
String email=request.getParameter("email");
String password=request.getParameter("password");

try{
	String sql="select email,password from person";
	st=con.createStatement();
    rs=st.executeQuery(sql); 
  while(rs.next()){
    if(email.equalsIgnoreCase(rs.getString("email")) && password.equalsIgnoreCase(rs.getString("password")))
    {%>
   <jsp:forward page="User.jsp"/>        
  </div>
<%}
    else
    {%>
    <div class="alert alert-warning">
    <strong>Warning!</strong> Your Email ID and Password is incorrect
  </div>
    <%}
  }
}
catch(Exception ex)
{ex.printStackTrace();%>
<div class="alert alert-error">
<strong>Error!</strong> <%=ex.getMessage()%>
</div>
<% }
%>
</body>
</html>