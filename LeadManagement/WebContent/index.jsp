<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div align="center">
   <li><b><a href="candisearch.jsp">Candidate search</a></b>|
   <b><a href="collegeregister.jsp">College registration</a></b>|
   <b><a href="collegesearch.jsp">College search</a></b></li>
   
  <h3>Candidate Register Form</h3>
  <form action="register" method="post">
   <table style="width: 80%">
    <tr>
     <td>First Name</td>
     <td><input type="text" name="firstName" required/></td>
    </tr>
    <tr height="10"><td></td></tr>
    <tr>
     <td>Last Name</td>
     <td><input type="text" name="lastName" required/></td>
    </tr>
    <tr height="10"><td></td></tr>
    <tr>
     <td>Email</td>
     <td><input type="text" name="email" required/></td>
    </tr>
    <tr height="10"><td></td></tr>
    <tr>
     <td>HR name</td>
     <td><input type="text" name="hrName" required/></td>
    </tr>
    <tr height="10"><td></td></tr>
    <tr>
     <td>Domain</td>
     <td><input type="text" name="domain" required/></td>
    </tr>
    <tr height="10"><td></td></tr>
    <tr>
     <td>Date Joined</td>
     <td><input type="text" name="dateJoined" required/></td>
    </tr>
    <tr height="10"><td></td></tr>
    <tr>
     <td>Address</td>
     <td><textarea type="textarea" name="address" required/></textarea></td>
    </tr>
    <tr height="10"><td></td></tr>
    <tr>
     <td>Contact No</td>
     <td><input type="text" name="contact" required/></td>
    </tr>
    <tr height="10"><td></td></tr>
    <tr>
     <td>Adhar card No</td>
     <td><input type="text" name="adharNo" required/></td>
    </tr>
   </table>
   <input type="submit" value="Submit" /><input type="reset">
  </form>
 </div>

</body>
</html>