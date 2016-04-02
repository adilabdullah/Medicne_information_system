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
 </script>
<title>Insert title here</title>
</head>
<body>
<div class="container" id="retreive">
  <div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
  <table class="table table-hover" id="myTable">
    <thead class="tblhead">
      <tr>
      <th>Sno</th>
        <th style="visibility:hidden;">Class</th>
        <th style="visibility:hidden;">Generic</th>
        <th>Code</th>
        <th style="visibility:hidden;">Type</th>
        <th style="visibility:hidden;">Packing</th>
         <th>Brand</th>
        <th style="visibility:hidden;">Manufacturer</th>
        <th style="visibility:hidden;">Price</th>
        <th>Purpose</th>
      </tr>
    </thead>
    <tbody>
<%
String name=request.getParameter("mname");
String clas=request.getParameter("mclass");
String purpose=request.getParameter("mpurpose");
String type=request.getParameter("mtype");
String mfgd=request.getParameter("mmanufacturer");
String price=request.getParameter("mprice");
Connection con;
Statement st;
ResultSet rs;
try{
	 Dbconnect cn=new Dbconnect();
     con=cn.conn();
     String query="select * from medicine where brand='"+name+"' or manufacturer='"+mfgd+"'or purpose='"+purpose+"' or price='"+price+"'";
    		 //' or class='"+clas+"' or purpose='"+purpose+"' or type='"+type+"' or manufacturer='"+mfgd+"' or price='"+price+"'";
     st=con.createStatement();
     rs=st.executeQuery(query); 
	while(rs.next())
	{
		 out.print("<tr onclick=\"getRowss(this)\">");
	        out.print("<td onclick=\"myFunction();\">"+rs.getString("sno").toString()+"</td>");
	            out.print("<td name=\"nme\" style=\"visibility:hidden;\">"+rs.getString("class").toString()+"</td>");
	            out.print("<td style=\"visibility:hidden;\">"+rs.getString("generic").toString()+"</td>");
	            out.print("<td onclick=\"myFunction();\">"+rs.getString("code").toString()+"</td>");
	            out.print("<td style=\"visibility:hidden;\">"+rs.getString("type").toString()+"</td>");
	            out.print("<td style=\"visibility:hidden;\">"+rs.getString("packing").toString()+"</td>");
	            out.print("<td onclick=\"myFunction();\">"+rs.getString("brand").toString()+"</td>");
	            out.print("<td style=\"visibility:hidden;\">"+rs.getString("manufacturer").toString()+"</td>");
	            out.print("<td style=\"visibility:hidden;\">"+rs.getString("price").toString()+"</td>");    
	            out.print("<td onclick=\"myFunction();\">"+rs.getString("purpose").toString()+"</td>");
	            out.print("</tr>");
	}
}
catch(Exception ex)
{ex.printStackTrace();
out.print("Error:"+ex.getMessage());}
%>

  </tbody>
  </table>
  </div>
  <div class="col-sm-2"></div>
  </div>
  </div>
</body>
</html>