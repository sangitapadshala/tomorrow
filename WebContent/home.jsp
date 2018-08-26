<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="home" class="tabcontent">

	<form action="User">
   

			<h5>Account Number:</h5>${Customer.accNo}


			<h5>Balance:</h5>${Customer.balance}


			<h5>UPI id:</h5>${Customer.upi}



		</form>
</div>
</body>
</html>