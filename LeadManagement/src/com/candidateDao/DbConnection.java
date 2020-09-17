package com.candidateDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
	
	protected static String serverType;
	
	static {
		DbConnection.serverType = "local";
	}
	
	public static Connection getConnection() throws SQLException, ClassNotFoundException {
		final String dbDriver = "com.mysql.jdbc.Driver";
		String dbHostname = "localhost";
		int dbPort = 3306;
		
		String dbName = "lead_db";
		String dbUsername = "root";
		String dbPassword = "root";
		
		if(DbConnection.serverType == "local") {
			dbHostname = "localhost";
			dbPort = 3306;
			dbName = "lead_db";
			dbUsername = "root";
			dbPassword = "root";
		}
		final String dbURL = "jdbc:mysql://" + dbHostname + ":" + dbPort + "/";
		Class.forName(dbDriver);
		System.out.println(dbURL);
		DriverManager.setLoginTimeout(10);
		
		final Connection con = DriverManager.getConnection(String.valueOf(dbURL)+dbName, dbUsername, dbPassword);
		
		return con;
		
	}

}
