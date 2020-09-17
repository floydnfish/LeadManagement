<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.candidateDao.DbConnectionColg" %>    
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.SQLException" %> 


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

  <%
   
   		try{
   			String collegeName=(String)session.getAttribute("collegeName");
   			
   			String colgquary="select * from college where collegeName=?";
   			Connection con = DbConnectionColg.getConnection();
   			
   			PreparedStatement ps=con.prepareStatement(colgquary);
   			ps.setString(1, collegeName);
   			
   			ResultSet rs=ps.executeQuery();
   			
   			while(rs.next())
   			{
   				if(rs.getString(1)!=null)
   				{
   %>
   				</br></br></br></br>	
   				<center>
   				<%= rs.getString(1) %>
   				<%= rs.getString(2) %>
   				<%= rs.getString(3) %>
   				<%= rs.getString(4) %>
   				<%= rs.getString(5) %>
   				
   				</center>
   	
   <% 
   				}
   				else{
   %>
   				<h5>Not found!</h5>
   <%
   				}
   			}
   			try{
   				con.close();
   			}
   			catch(Exception e)
   			{}
   			}
   			catch(Exception e)
   {
   				e.printStackTrace();
   		}
   %>

</body>
</html>