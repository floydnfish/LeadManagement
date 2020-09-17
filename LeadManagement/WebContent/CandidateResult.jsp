<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="com.candidateDao.DbConnection" %>    
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
   			String email=(String)session.getAttribute("email");
   			
   			String quary="select * from candidate where email=?";
   			Connection con = DbConnection.getConnection();
   			
   			PreparedStatement ps=con.prepareStatement(quary);
   			ps.setString(1, email);
   			
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
   				<%= rs.getString(6) %>
   				<%= rs.getString(7) %>
   				<%= rs.getString(8) %>
   				<%= rs.getString(9) %>
   				<%= rs.getString(10) %>
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








	   <%
   
   		try{
   			String adhar_no=(String)session.getAttribute("adhar_no");
   			
   			String quary="select * from candidate where adhar_no=?";
   			Connection con = DbConnection.getConnection();
   			
   			PreparedStatement ps=con.prepareStatement(quary);
   			ps.setString(1, adhar_no);
   			
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
   				<%= rs.getString(6) %>
   				<%= rs.getString(7) %>
   				<%= rs.getString(8) %>
   				<%= rs.getString(9) %>
   				<%= rs.getString(10) %>
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
















    
   <%
   
   		try{
   			String contact=(String)session.getAttribute("contact");
   			
   			String quary="select * from candidate where contact=?";
   			Connection con = DbConnection.getConnection();
   			
   			PreparedStatement ps=con.prepareStatement(quary);
   			ps.setString(1, contact);
   			
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
   				<%= rs.getString(6) %>
   				<%= rs.getString(7) %>
   				<%= rs.getString(8) %>
   				<%= rs.getString(9) %>
   				<%= rs.getString(10) %>
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