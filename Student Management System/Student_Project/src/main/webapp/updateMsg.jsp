<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="msg.css"> -->
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
	width: 200px;
	border-radius: 10px;
	border: none;
	background-color: rgb(255, 139, 100);
}
</style>
</head>
<body>
<div>
<h1>Updated Successfully...!</h1>
<a href="index.jsp"><button>Return To Home</button></a>
</div>
</body>
</html>