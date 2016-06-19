package com.util;

import java.sql.*;

public class ConnectionPool {

	public static Connection getConnection()
	{
		Connection con;
		try {
			Class.forName("com.ibm.db2.jcc.DB2Driver");

			con = DriverManager.getConnection("jdbc:db2://localhost:50000/Employee","Tathari","suresh");
			if(con==null)
				System.out.println("no connection created");

			return con;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}