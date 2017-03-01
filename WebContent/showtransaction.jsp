<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>

<script>
	$(document).ready(function() {
		$("#datepicker").datepicker();
	});
	$(document).ready(function() {
		$("#datepicker1").datepicker();
	});
</script>



<style>
form {
	border: 3px solid #f1f1f1;
}

input[type=text], input[type=password], input[type=text] {
	width: 100%;
	padding: 10px 15px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

button {
	background-color: #009999;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

/* .cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
} */
.imgcontainer {
	text-align: center;
	margin: 20px 0 12px 0;
}

img.avatar {
	width: 20%;
	border-radius: 30%;
}

.container {
	padding: 16px;
}

span.psw {
	float: right;
	padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
}
</style>
</head>
<body>
	 ${message} 
	<h2>Show Transaction</h2>
	<form method="post" action="retrieve3">
		<p>start:</p>

		<input id="datepicker" name="date" />
		<p>end:</p>
		<input id="datepicker1" name="date1" />
		<button type="submit">Submit</button>

	</form>
	<form method="post" action="check">


		<div align="center">

			<p>Please enter the recipient you want to view transactions for:</p>

			<input type="text" title="Please enter valid user" name="username" />

			<button value="check" type="submit">submit</button>
			

		</div>
	</form>


</body>
</html>
