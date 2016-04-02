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
<title>Insert title here</title>
</head>
<body>
 <table class="table table-hover" id="myTable">
    <thead class="tblhead">
      <tr>
      <th>Sno</th>
        <th>Code</th>
        <th>Brand</th>
        <th>Purpose</th>
      </tr>
    </thead>
    <tbody>
       <%
       out.print(""+request.getParameter("religion"));
       out.print(""+request.getParameter("cell"));
       out.print(""+request.getParameter("nationality"));
       out.print(""+request.getParameter("password"));
       out.print(""+request.getParameter("type"));
          int i=1;
          ResultSet rs;
            Connection con;
            Statement st;
            try{
            Dbconnect cn=new Dbconnect();
            con=cn.conn();
            String query="select * from medicine";
            st=con.createStatement();
            rs=st.executeQuery(query);        
              
      while(rs.next())
        { 
        out.print("<tr onclick=\"getRowss(this)\">");
       // i=Integer.parseInt(rs.getString("sno"));
       // session.setAttribute("serial",i);
        out.print("<td>"+rs.getString("sno").toString()+"</td>");
            out.print("<td>"+rs.getString("code").toString()+"</td>");
            out.print("<td>"+rs.getString("brand").toString()+"</td>");
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
</body>
</html>