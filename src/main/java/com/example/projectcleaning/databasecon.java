
package com.example.projectcleaning;
import java.sql.*;

public class databasecon 
{
	static Connection co;
	public static Connection getconnection()
	{
 		
 			
		try
		{
			Class.forName("com.mysql.jdbc.Driver");	
			co = DriverManager.getConnection("jdbc:mysql://localhost:3306/CLEANING","root","");
		}
		catch(Exception e)
		{
			System.out.println("Database Error"+e);
		}
		return co;
	}
public static void main(String[] a)	{

	System.out.println(databasecon.getconnection());
}
}
