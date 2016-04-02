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
<title>Insert title here</title>
</head>
<body>
<%
Random ran=new Random();
Dbconnect conect=new Dbconnect();
Connection con=conect.conn();
PreparedStatement pst;
int co=ran.nextInt(9999)+0000;
String name=request.getParameter("mname");
String classs=request.getParameter("mclass");
String formula=request.getParameter("mformula");
String purpose=request.getParameter("mpurpose");
String type=request.getParameter("mtype");
String packing=request.getParameter("mpacking");
String manufacturer=request.getParameter("mmanufacturer");
String price=request.getParameter("mprice");
try{
	String sql="INSERT INTO medicine(code,brand,class,generic,purpose,type,packing,manufacturer,price) VALUES (?,?,?,?,?,?,?,?,?)";
	pst=con.prepareStatement(sql);
    pst.setInt(1,co);
    pst.setString(2,name);
    pst.setString(3,classs);
    pst.setString(4,formula);
    pst.setString(5,purpose);
    pst.setString(6,type);
    pst.setString(7,packing);
    pst.setString(8,manufacturer);
    pst.setInt(9,Integer.parseInt(price));
           pst.execute();%>
   <div class="alert alert-success">
    <strong>Success!</strong> Your data saved successfully
  </div>      
<%}
catch(Exception ex)
{ex.printStackTrace();%>
<div class="alert alert-warning">
    <strong>Warning!</strong> <%=ex.getMessage() %>
  </div>
<% }%>
</body>
</html>