<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
	    try{
	      final Connection con;
	    	Class.forName("com.mysql.jdbc.Driver");
	    con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/dbms","root","");
	//return con;
	out.print("Connection Created");
	    }
	    catch(Exception ex)
	    {ex.printStackTrace();
	    //return null;
	    out.print("Connection Not Created"+ex.getMessage());
	    }
	   %>
</body>
</html>