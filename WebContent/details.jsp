<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Personal Details</title>
<style>
body {
	background-image: url("background_img.jpg");
	background-repeat: no-repeat;
	background-size: cover;
}

<
style>body {
	background-image: url("img2.jpg");
}

.form-style-7 {
	max-width: 400px;
	margin: 50px auto;
	background: #f7f7f7;
	border-radius: 5%;
	border-color : #4CAF50;
	border-style : solid;
	padding: 20px;
	font-family: serif, "Times New Roman", Times, serif;
	border-radius: 5%;
}

.form-style-7 h1 {
	display: block;
	text-align: center;
	padding: 0;
	margin: 0px 0px 20px 0px;
	color: #5C5C5C;
	font-size: x-large;
}

.form-style-7 ul {
	list-style: none;
	padding: 0;
	margin: 0;
}

.form-style-7 li {
	display: block;
	padding: 9px;
	border: 1px solid #DDDDDD;
	margin-bottom: 30px;
	border-radius: 3px;
}

.form-style-7 li:last-child {
	border: none;
	margin-bottom: 0px;
	text-align: center;
}

.form-style-7 li>label {
	display: block;
	float: left;
	margin-top: -19px;
	background: #CFFFFF;
	height: 14px;
	padding: 2px 5px 2px 5px;
	color: #OOOOOO;
	font-size: 14px;
	overflow: hidden;
	font-family: Arial, Helvetica, sans-serif;
}

.form-style-7 input[type="text"], .form-style-7 input[type="date"],
	.form-style-7 input[type="datetime"], .form-style-7 input[type="email"],
	.form-style-7 input[type="number"], .form-style-7 input[type="search"],
	.form-style-7 input[type="time"], .form-style-7 input[type="confirmpassword"],
	.form-style-7 input[type="password"], .form-style-7 textarea,
	.form-style-7 select {
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	width: 100%;
	display: block;
	outline: none;
	border: none;
	height: 25px;
	line-height: 25px;
	font-size: 16px;
	padding: 0;
	font-family: serif;
	border-radius: 5%;
}

.form-style-7 input[type="text"]:focus, .form-style-7 input[type="date"]:focus,
	.form-style-7 input[type="datetime"]:focus, .form-style-7 input[type="email"]:focus,
	.form-style-7 input[type="number"]:focus, .form-style-7 input[type="search"]:focus,
	.form-style-7 input[type="time"]:focus, .form-style-7 input[type="confirmpassword"]:focus,
	.form-style-7 input[type="password"]:focus, .form-style-7 textarea:focus,
	.form-style-7 select:focus {
	
}

.form-style-7 li>span {
	background: #E0FFFF;
	display: block;
	padding: 3px;
	margin: 0 -9px -9px -9px;
	text-align: center;
	color: #0000FF;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 11px;
}

.form-style-7 textarea {
	resize: none;
}

.form-style-7 input[type="submit"], .form-style-7 input[type="button"] {
	background: #4CAF50;
	border: none;
	padding: 10px 20px 10px 20px;
	border-bottom: 3px solid #4CAF50;
	border-radius: 3px;
	color: #D2E2FF;
}

.form-style-7 input[type="submit"]:hover, .form-style-7 input[type="button"]:hover
	{
	background: #FFFFFF;
	color: #000000;
	float: center;
}

.form-style-7 input[type="reset"], .form-style-7 input[type="button"] {
	background: #4CAF50;
	border: none;
	padding: 10px 20px 10px 20px;
	border-bottom: 3px solid #4CAF50;
	border-radius: 3px;
	color: #D2E2FF;
}

.form-style-7 input[type="reset"]:hover, .form-style-7 input[type="button"]:hover
	{
	background: #6B9FFF;
	color: #fff;
}
</style>
</head>
<body text="black">
	<form method="post" action="details.go" class="form-style-7">

		<u><center>
				<h1>Customer Details</h1>
			</center></u>
		<div align="center">
			<table cellpadding="13" cellspacing="10">
				<tbody>
					<tr>
						<td>Aadhar Number :</td>
						<td>${User.aadharNo}</td>
					</tr>
					<tr>
						<td>Name :</td>
						<td>${User.name}</td>
					</tr>

					<tr>
						<td>Gender :</td>
						<td>${User.gender}</td>
					</tr>
					<tr>
						<td>Date of Birth :</td>
						<td>${User.dob}</td>
					</tr>
					<tr>
						<td>Address :</td>
						<td>${User.address}</td>
					</tr>
					<tr>
						<td>City :</td>
						<td>${User.city}</td>
					</tr>
					<tr>
						<td>Pincode :</td>
						<td>${User.pincode}</td>
					</tr>
					<tr>
						<td>State :</td>
						<td>${User.state}</td>
					</tr>
					<br>


					<tr>
						<td>By clicking continue, you agree to the <a href="#"
							style="color: dodgerblue">Terms & Privacy</a>.
						</td>
					</tr>
					<tr>
						<td align="center"><input type="submit" id="btnSubmit"
							value="Continue" /></td>

					</tr>
				</tbody>
			</table>
		</div>
	</form>
</body>
</html>