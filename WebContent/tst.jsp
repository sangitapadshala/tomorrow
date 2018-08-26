<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
	//auto expand textarea
	function adjust_textarea(h) {
		h.style.height = "20px";
		h.style.height = (h.scrollHeight) + "px";
	}
</script>
<script type="text/javascript">

function checkPass()
{
	
    
    var pass1 = document.getElementById('password');
    var pass2 = document.getElementById('confirmpassword');
    
   var message = document.getElementById('confirmMessage');
   
    if(pass1.value == pass2.value){
      
        message.innerHTML = "Passwords Match!"
     
    }else{
       
        message.innerHTML = "Passwords Do Not Match!"
    	
    }
}  
</script>
<style>
body {
	background-color:#e6ffe6;
}
.form-style-7 {
	max-width: 400px;
	margin: 50px auto;
	background: #e6ffe6;
	border: 2px solid #80ff80;
	border-radius: 20px;
	padding: 20px;
	font-family: Georgia, "Times New Roman", Times, serif;
	}
.form-style-7 h1 {
	display: block;
	text-align: center;
	padding: 0;
	margin: 0px 0px 20px 0px;
	color: #001a00;
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
	border: 1px solid #003300;
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
	background: #e6ffe6;
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
	background: #e6ffe6;
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

a{
text-decoration: none;
color: black;
}

a:hover {
	color : purple;
}
</style>
<script type="text/javascript">
	function checkPass() {
	    //Store the password field objects into variables ...
	    var pass1 = document.getElementById('password');
	    var pass2 = document.getElementById('confirmpassword');
	    //Store the Confimation Message Object ...
	   var message = document.getElementById('confirmMessage');
	    //Set the colors we will be using ...
	    //var goodColor = "#66cc66";
	    //var badColor = "#ff6666";
	    //Compare the values in the password field 
	    //and the confirmation field
	    if(pass1.value == pass2.value){
	        //The passwords match. 
	        //Set the color to the good color and inform
	        //the user that they have entered the correct password 
	      //  pass2.style.backgroundColor = goodColor;
	     //   message.style.color = goodColor;
	        message.innerHTML = "Passwords Match!"
	      //alert("Passwords Match!");
	    }else{
	        //The passwords do not match.
	        //Set the color to the bad color and
	        //notify the user.
	       // pass2.style.backgroundColor = badColor;
	       // message.style.color = badColor;
	        message.innerHTML = "Passwords Do Not Match!"
	    	//alert("Passwords Do not Match!");
	    }
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form class="form-style-7" method="post" action="aadhar.go">
		<div>${Prompt}</div>
		<div>${Minor}</div>
		<h1>Enter Aadhar No</h1>
		<ul>
			
			<li><label for="aadharNo">Aadhar No</label> <input type="text"
				name="aadharNo" maxlength="12" required> <span>Enter
					your Aadhar Number </span></li>
			
			
			
			<center>
			<input type="submit"  value="Verify" name="verify">
			</center>
			
                    
                    
		
		</ul>
	</form>


</body>
</html>