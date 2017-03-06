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
	width: 50%;
	padding: 20px 18px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

button {
	background-color: #009999;
	color: white;
	/* align: center; */
	/*  position: absolute;
    left: 75px; */
   /*  right: 50px; */
	 padding: 20px 18px; 
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
/* 
span.psw {
	float: right;
	padding-top: 16px;
} */

/* Change styles for span and cancel button on extra small screens */

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
	<h1>Home</h1>

	
			
		<div id="mySidenav" class="sidenav">
  		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  			 <a href="home">Home</a>
 		 <a href="editProfile">Edit Profile</a>
 	 	<a href="addmoney">Add Money</a>
 		 <a href="fundtransfer">Fund Transfer</a>
  		<a href="showtransaction.jsp">Show Transaction</a>
  		<a href="logout">Logout</a>
		</div>
		
		<div align="center">
			<br>
			<br>
			
			<h1><i>PAPERLESS MONEY SWEETER THAN HONEY</i></h1>
		</div>

</body>
</html>
