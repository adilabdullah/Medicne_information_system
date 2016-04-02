package org.database.connection;

import java.sql.DriverManager;

import com.mysql.jdbc.Connection;

public class Dbconnect {
	    private Connection con;
	   public Connection conn()
	   {
	    try{
	Class.forName("com.mysql.jdbc.Driver");
	    con=(Connection) DriverManager.getConnection("jdbc:mysql://127.0.0.1/dbms","root","");
	return con;
	    }
	    catch(Exception ex)
	    {ex.printStackTrace();
	    return null;}
	   }
}
