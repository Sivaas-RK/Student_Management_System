<%@page import="java.sql.ResultSet"%>
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

<%ResultSet rs= (ResultSet)request.getAttribute("result");
rs.next();%>

<div>
<h1>UPDATE</h1>
<form action="saveUpdate"method="post">
<input type="number" value=<%=rs.getInt(1) %> name="StudentId"readonly="readonly"><br><br>
<input type="text" value=<%= rs.getString(2) %> name="StudentName"><br><br>
<input type="number" value=<%=rs.getInt(3) %> name="StudentAge"><br><br>
<input type="number" value=<%= rs.getLong(4) %> name="StudentPhoneNumber"><br><br>
<input type="text" value=<%=rs.getString(5) %> name="StudentEmail"><br><br>
<button type="submit">Update</button>
</form>
</div>
</body>
</html>