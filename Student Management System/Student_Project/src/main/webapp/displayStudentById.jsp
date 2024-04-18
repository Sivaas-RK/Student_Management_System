<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
*{
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

body{
	background-color: rgb(255, 234, 198);
	display: flex;
	align-items: center;
	justify-content: center;
	height: 100vh;
}

div{
	/*border: 2px solid blue;*/
	border-radius: 10px;
	/*width: 75vw;*/
	padding: 50px;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	/*height: 100vh;*/
	background-color: whitesmoke;
}

h1{
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	margin-bottom: 10px;
}

button{
	padding: 10px;
	margin-top: 20px;
	width: 200px;
	border-radius: 10px;
	border: none;
	background-color: rgb(255, 139, 100);
}
</style>
</head>
<body>
<div>
<h1>Student Details</h1>
<table border="" style="text-align: center; padding: 5px;">
<tr style="background-color: #132743; color: white; font-family:monospace; ;">
<th style="padding: 5px;width: 150px">Student ID</th>
<th style="width: 150px">Student Name</th>
<th style="width: 150px">Student Age</th>
<th style="width: 150px">Student Phone No</th>
<th style="width: 150px">Student Email</th>
</tr>

<%ResultSet rs= (ResultSet)request.getAttribute("result");
while(rs.next())
{
%>
<tr style="font-family:monospace;">
<td style="padding: 5px"><%=rs.getInt("StudentId") %></td>
<td><%=rs.getString("StudentName") %></td>
<td><%=rs.getInt("StudentAge") %></td>
<td><%=rs.getLong("StudentPhoneNumber") %></td>
<td><%=rs.getString("StudentEmail") %></td>

</tr>
<%} %>
</table>
<a href="index.jsp"><button>Return To Home</button></a>
</div>
</body>
</html>