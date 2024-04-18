<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="form.css">
</head>
<body>
<div>
<h1>REGISTER</h1>
<form action="addStudent" method="post">
<input type="number" placeholder="Enter Student Id" name="StudentId"><br>
<input type="text" placeholder="Enter Student Name" name="StudentName"><br>
<input type="number" placeholder="Enter Student Age" name="StudentAge"><br>
<input type="tel" placeholder="Enter Student Phone Number" name="StudentPhoneNumber" pattern="[0-9]{10}"><br>
<input type="email" placeholder="Enter Student Email" name="StudentEmail"><br><br>
<button type="submit">Submit</button>
</form>
</div>
</body>
</html>