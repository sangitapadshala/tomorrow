<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Profile</title>
<style>
body {
	background-image:url("img2.jpg");
}
<style>
body {
	background-image:url("img2.jpg");
}
.form-style-7 {
	max-width: 400px;
	margin: 50px auto;
	background: #DDF8FA;
	border-radius: 2px;
	padding: 20px;
	font-family: Georgia, "Times New Roman", Times, serif;
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
	background: #2471FF;
	border: none;
	padding: 10px 20px 10px 20px;
	border-bottom: 3px solid #5994FF;
	border-radius: 3px;
	color: #D2E2FF;
}
.form-style-7 input[type="submit"]:hover, .form-style-7 input[type="button"]:hover
	{
	background: #6B9FFF;
	color: #fff;
	float: center;
}
.form-style-7 input[type="reset"], .form-style-7 input[type="button"] {
	background: #2471FF;
	border: none;
	padding: 10px 20px 10px 20px;
	border-bottom: 3px solid #5994FF;
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
<body>
<div id="profile" class="tabcontent">
   <form method="post" action="profile.go"
		onsubmit="return checkEmail(email)" class="form-style-7">

		<u><center>
				<h1>Personal Details</h1>
			</center></u> <br>
		<div >
			<table cellpadding="10" cellspacing="10">

				<tbody>

					<tr>

						<td>&nbsp;&nbsp;&nbsp;&nbsp;Name</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;${User.name}</td>

					</tr>
					
					<tr>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;City</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;${User.city}</td>

					</tr>
									
					<tr>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;Pincode</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;${User.pincode}</td>

					</tr>
					
					<tr>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;State</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;${User.state}</td>

					</tr>
					
					<tr>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;Aadhar Number</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;${User.aadharNo}</td>

					</tr>
					
					<tr>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;Date of Birth</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;${User.dob}</td>

					</tr>
					
					<tr>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;Gender</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;${User.gender}</td>

					</tr>
					
					
				</tbody>
			</table>
		</div>
	</form>
</div>
</body>
</html>