<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register your College</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div align="center">
<h3>College Register Form</h3>
  </br></br></br>
  <form action="registercollege" method="post">
   <table style="width: 80%">
    <tr>
     <td>College Name</td>
     <td><input type="text" name="collegeName" required/></td>
    </tr>
    <tr height="10"><td></td></tr>
    <tr>
     <td>HR Name</td>
     <td><input type="text" name="hrName" required/></td>
    </tr>
    <tr height="10"><td></td></tr>
    <tr>
     <td>Contact No</td>
     <td><input type="text" name="contact" required/></td>
    </tr>
    <tr height="10"><td></td></tr>
    <tr>
     <td>Email</td>
     <td><input type="text" name="email" required/></td>
    </tr>
</table>
<input type="submit" value="Submit" /><input type="reset">
</form>
</div>
</body>
</html>