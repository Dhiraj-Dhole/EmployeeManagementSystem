<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<style>
body {
	margin: 0;
	padding: 0;
	text-align: center;
	background-color: white;
}

.container {
	background-color: #84d1be;
	margin: 60px 350px;
	border-radius: 10px;
	height: 350px;
}

.container button {
	background-color: lightblue;
	border: none;
	padding: 7px;
	color: black;
	font-weight: bold;
	border-radius: 5px;
}

.container button:hover {
	background-color: #83a6de;
}

.container a {
	text-decoration: none;
	color: black;
	font-weight: bold;
}

.container a:hover {
	background-color: #83a6de;
}

.back-btn {
	text-decoration: none;
	color: black;
	background-color: lightblue;
	padding: 10px;
	border-radius: 5px;
	font-weight: bold;
}

.back-btn:hover {
	background-color: #83a6de;
}

.failedMessage {
	text-align: center;
	font-weight: bold;
	margin-bottom: 20px;
}

label {
	display: inline-block;
	width: 80px;
	text-align: right;
	margin-right: 10px;
	font-weight: normal;
}

input, select {
	width:150px;
	padding:2px;
	margin-bottom:5px;
	border:1px solid;
	border-radius:5px;
	font-size:14px;
}
</style>
</head>
<body>

	<div class="container">
		<h1>SignIn</h1>
		<form action="/checksignin"  method="get">
			
			<label for="signIn">Role</label> 
			<select id="role" name="role" required>
				<option selected disabled>Select Type</option>
				<option value="admin">Admin</option>
				<option value="employee">Employee</option>
			</select> 
			
			<br> <br> 
			<label for="user Name">User Name</label> 
			<input type="text" name="uname" id="uname" placeholder="Enter your username" required> 
			
			<br> <br>
			
			
			<label for="password">Password</label> 
			<input type="password" name="pwd" id="pwd" placeholder="Enter your password"
				required>
				
			<br> <br>
			
			<button type="submit">Sign In</button>
			<br> 
			
			<br>
			<div class="failedMessage">${errorMsg} </div>
			<br><br>
			
		</form>

		<a href="signup">Don't have an account? Sign Up</a>

	</div>
	
	<a href="home" class="back-btn">BackToHome</a>

</body>
</html>
   
    
    