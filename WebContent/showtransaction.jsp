<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="java.util.regex.*"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>



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

/* .cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
} */


 .container {
	padding: 16px;
	margin: 40px 50px;
	width: 50%;
} 

}
</style>
<script>
		$(document).ready(function() {
	$("#datepicker").datepicker();
	});
	$(document).ready(function() {
	$("#datepicker1").datepicker();
	});
	function openNav() {
	    document.getElementById("mySidenav").style.display = "block";
	}

	function closeNav() {
	    document.getElementById("mySidenav").style.display = "none";
	}
</script>
<body>
<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; Menu</span>
	<h1>Show Transaction</h1>
<br>
<br>		
		<div id="mySidenav" class="sidenav">
  		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  			 <a href="#">About</a>
 		 <a href="editProfile">Edit Profile</a>
 	 	<a href="addmoney">Add Money</a>
 		 <a href="fundtransfer">Fund Transfer</a>
  		<a href="showtransaction">Show Transaction</a>
  		<a href="logout">Logout</a>
		</div>


	 ${message} 
	
	<form method="post" action="retrieve3">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;From:
	<input id="datepicker" name="date" />
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;end:
		<input id="datepicker1" name="date1" />
		<br>
		<br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<button type="submit">Submit</button>

	</form>
	<br>
	<br>
	<form method="post" action="check">


		

			<p>&nbsp;&nbsp;&nbsp;&nbsp;Please enter the recipient you want to view transactions for:</p>
&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="text" title="Please enter valid user" name="username" />
<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<button value="check" type="submit">submit</button>
			

		
	</form>


</body>
</html>

