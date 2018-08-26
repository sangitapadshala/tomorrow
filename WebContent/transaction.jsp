<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Transaction</title>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<link rel="stylesheet" href="http://resources/demos/style.css">
<style type="text/css">
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css" />">
<script src="<c:url value="/js/jquery.2.2.4.min.js" />"></script>
/* <script src="https://code.jquery.com/jquery-2.2.4.js"></script>
<script  src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link href="https://code.jquery.com/ui/1.12.3/smoothness/jquery-ui.css" rel="stylesheet"> 
 */
 
.ui-widget-content {
	width: 200px;
	height:;
	border: none;
}
</style>
<script type="text/javascript">
/* $(function () {
    $("#from").datepicker({
        maxDate:0,
        showAnim: 'drop',
        changeMonth: true,
		changeYear: true,
        numberOfMonths: 1,
        dateFormat: 'd-M-yy',
        onClose: function (selectedDate) {
            $("#to").datepicker("option", "minDate", selectedDate);
        }
    });
    $("#to").datepicker({
        maxDate: 0,
        showAnim: 'drop',
        changeMonth: true,
        changeYear: true,
        numberOfMonths: 1,
        dateFormat: 'd-M-yy',
        onClose: function (selectedDate) {
            $("#from").datepicker("option", "maxDate", selectedDate);
        }
    });
}); */

var doc = new jsPDF();
var specialElementHandlers = {
    '#editor': function (element, renderer) {
        return true;
    }
};

$('#cmd').click(function () {
    doc.fromHTML($('#content').html(), 15, 15, {
        'width': 170,
            'elementHandlers': specialElementHandlers
    });
    doc.save('sample-file.pdf');
});

</script>
<style>
input[type=text], select {
	width: 20%;
	padding: 6px 20px;
	margin: 3px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 2px;
	box-sizing: border-box;
}

input[type=submit] {
	width: 20%;
	background-color: #4CAF50;
	color: white;
	padding: 7px 20px;
	margin: 3px 0;
	border: none;
	border-radius: 2px;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #45a049;
}
/* div {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
} */
</style>
  <script src="https://docraptor.com/docraptor-1.0.0.js"></script>
  <script>
    var downloadPDF = function() {
      DocRaptor.createAndDownloadDoc("YOUR_API_KEY_HERE", {
        test: true, // test documents are free, but watermarked
        type: "pdf",
        document_content: document.querySelector('html').innerHTML, // use this page's HTML
       
      })
    }
  </script>
  <style>
    @media print {
      #pdf-button {
        display: none;
      }
    }
  </style>
</head>
<body>

	<form action="transaction.go">
		<label>From Date: </label><input type="date" id="from" name="from" required >
		<label>To Date: </label><input type="date" id="to" name="to" required >
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		<input type="submit" name="transaction" value="View Transaction">
	</form>

<p>${prompt}</p>

<table  class="table table-bordered" border="1">
	<tr>
		<th>Account Number</th><th>Transaction Id</th><th>Transaction Date</th><th>Debit Account</th><th>Credit Amount</th>
	</tr>
		<c:forEach items="${list}" var="item">
		
			<tr>
				<td><c:out value="${item.customerInfo.accNo}" /></td>
				<td><c:out value="${item.transId}" /></td>
				<td><c:out value="${item.transDate}" /></td>
				 <td><c:out value="${item.debitAmount}" /></td>
				<td><c:out value="${item.creditAmount}" /></td> 
 				
 			</tr>
		</c:forEach>
	</table>
	


<input id="pdf-button" type="button" value="Download PDF" onclick="downloadPDF()" />
	<%-- 
			<h5>Transaction Id:</h5>${transaction.transDate}


			<h5>Status:</h5>${transaction.status}


			<h5>UPI id:</h5>${register.upi} --%>

</body>
</html>