<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Signup</title>
</head>
<style>
body {
	background-color: aquamarine;
	margin: 0;
	padding: 0;
	text-align: center;
}

form {
	border: 2px;
    border-radius: 10px;
    padding: 10px 10px 10px 0px;
    background-color: white;
    margin: 20px 350px;
    display-flex;
	flex-direction: column;
	align-tems:center;
}

button {
	background-color: lightblue;
	border: none;
	padding: 7px;
	color: black;
	font-weight: bold;
	border-radius: 5px;
}

button:hover {
	background-color: #83a6de;
}

.successMessage {
	text-align: center;
	font-weight: bold;
	margin-bottom: 20px;
}

a {
	text-decoration: none;
	font-weight: bold;
	background-color: lightblue;
	border-radius: 5px;
	padding: 10px 10px;
	color: black;
}

a:hover {
	background-color: #83a6de;
}

label {
	display: inline-block;
	width: 100px;
	text-align: right;
	margin-right: 10px;
	font-weight: normal;
	color: #333;
}

input, select {
	width:200px;
	padding:5px;
	margin-bottom:10px;
	border: 1px solid #ccc;
	border-radius:5px;
	font-size:14px;
}
</style>
<body>


	<h1>Signup</h1>
	<form action="/saveData" method="post">
		
		<label>Name</label>
		<input type="text" id="ename" name="ename" required>
		<br><br> 
		
		<label>Email</label> 
		<input type="email" name="email" id="email" required>
	
		<br> <br> 
		
		<label>Mobile No</label>
		<input type="tel" name="phone" id="phone" required>
		
		<br> <br> 

		<label for="gender">Gender</label> <select
			name="gender" id="gender" name="gender" required>
			<option value="" disabled selected>select</option>
			<option value="male">Male</option>
			<option value="female">Female</option>
			<option value="other">Other</option>
		</select>

		<br> <br> 
		
		<label>Address</label>
		<input type="text" id="address" name="address" required> 
		
		 <br> <br> 

		<label>UserName</label> 
		<input type="text" name="uname" id="uname" required>

		<br><br>
		
		<label>Password</label>
		<input type="password" name="pwd" id="pwd" required><br>
		<br> 

		<div class="successmsg">${successmsg} </div>


		<h4>Allrady have an account <a href="signin">signin</a></h4>
		<br>
		<br>
	
		<button type="submit">Save</button>
		<br> 
	</form>

	
	<a href="home">BackToHome</a>


</body>
</html>