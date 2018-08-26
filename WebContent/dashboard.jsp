<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css" />">
<link rel="stylesheet" href="<c:url value="/css/style.css" />">
<script src="<c:url value="/js/jquery.2.2.4.min.js" />"></script>
<style>
* {box-sizing: border-box}
body {font-family: "Lato", sans-serif;}

/* Style the tab */
.tab {
    float: left;
  /*   border: 1px solid #ccc; */
    background-color:  #9490E0; 
    width: 30%;
    height: 300px;
}

/* Style the buttons inside the tab */
.tab button {
    display: block;
    background-color: #B6B4E9;
    color: black;
    padding: 22px 16px;
    width: 100%;
    border: none;
    outline: none;
    text-align: left;
    cursor: pointer;
    transition: 0.3s;
    font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
    background-color: #8991D8;
    color:  white;
}

/* Create an active/current "tab button" class */
.tab button.active {
    background-color: #3F4FD7;
    color:  white;
}
h5
{
 
	color: black;
}

/* Style the tab content */
.tabcontent {
    float: left;
    padding: 0px 12px;
   /*  border: 1px solid #ccc; */
    width: 70%;
    border-left: none;
    height: 300px;
}


</style>
<title>Profile</title>
</head>
<body>

<jsp:include page="header.jsp" />
<%-- <div>${Prompt}</div> --%>
<p><br></p>
<div class="tab">
  
  <a href="home.jsp"><button class="tablinks" >Home</button></a>
  <a href="profile.go"><button class="tablinks" onclick="profile.jsp">Profile</button></a>
  <a href="fund.jsp"><button class="tablinks" >Fund Transfer</button></a>
  <a href="transaction.jsp"><button class="tablinks" >Summary</button></a>
  <a href="forget.jsp"><button class="tablinks" >Change Password</button></a>
  <a href="DigitalDebitCard.jsp"><button class="tablinks" >Digital Debit Card</button></a>
</div>
<%-- <jsp:include page=".jsp" />

<jsp:include page="header.jsp" />
<jsp:include page="header.jsp" />
<jsp:include page="header.jsp" /> --%>
<jsp:include page="footer.jsp" />

<script>
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
<%-- <%@ include file="footer.html"%> --%>
</body>
</html> 
