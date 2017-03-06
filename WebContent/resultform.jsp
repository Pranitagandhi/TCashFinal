<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.tcash.Controller.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
form {
	border: 3px solid #f1f1f1;
}
.sidenav {
    display: none;
    height: 100%;
    width: 250px;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    padding-top: 60px;
}

.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s
}

.sidenav a:hover, .offcanvas a:focus{
    color: #f1f1f1;
}

.sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
input[type=text], input[type=password], input[type=text] {
	width: 300px;
  margin:  auto; 
	padding: 10px 18px;
	/* margin: 20px 0; */
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
	text-align: left;
}

button {
	background-color: #009999;
	color: white;
	/* align: center; */
	/*  position: absolute;
    left: 75px; */
   /*  right: 50px; */
	 padding: 10px 18px; 
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 30%;
}

 .container {
	padding: 20px;
	margin: 40px 50px;
	width: 50%;
} 

}
</style>
<script>

function openNav() {
    document.getElementById("mySidenav").style.display = "block";
}

function closeNav() {
    document.getElementById("mySidenav").style.display = "none";
}

</script>
<body>

<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; Menu</span>
	<h1>Transaction List</h1>

<div id="mySidenav" class="sidenav">
  		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  		 <a href="#">About</a>
 		 <a href="editProfile">Edit Profile</a>
 	 	<a href="addmoney">Add Money</a>
 		 <a href="fundtransfer">Fund Transfer</a>
  		<a href="showtransaction">Show Transaction</a>
  		<a href="logout">Logout</a>
		</div>


<table border="1">
	<tr>
		<th>Mobile</th>
		<th>Credit</th>
		<th>Debit</th>
		<th>Recipient</th>
		<th>Date</th>
		<th>Remark</th>
	</tr>
	<c:forEach var="emp" items="${list}">
		<tr>
			<td>${emp.mobile_no}</td>
			<td>${emp.credit}</td>
			<td>${emp.debit}</td>
			<td>${emp.recipient}</td>
			<td>${emp.date}</td>
			<td>${emp.remark}</td>
		</tr>
	</c:forEach>
</table>
<br />
</body>
</html>
