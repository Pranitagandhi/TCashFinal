<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
form {
	border: 3px solid #f1f1f1;
}

button {
	background-color: #009999;
	color: white;
	font-size: 100px;
	padding: 14px 20px;
	margin: 20px 0;
	border: none;
	cursor: pointer;
	width: 70%;
}

.container {
	padding: 16px;
}

.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
}

img.t_cash1 {
	width: 20%;
	border-radius: 30%;
}

span.psw {
	float: right;
	padding-top: 16px;
}

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
	<div align="Right">
		<a href="logout">Logout</a>

	</div>

	<h2>Home</h2>

${message}
	<center>
		<br />
		<h2>
			<i> PAPERLESS MONEY SWEETER THAN HONEY!!</i>
		</h2>
		</div>
		<br />
		<form method="post" action="editProfile.jsp">
			<button onclick="editProfile.jsp" name="subject" type="submit"
				class="btn btn-lg">
				<span class="glyphicon glyphicon-edit" style="font-size: larger;"></span>
				Edit Profile
			</button>
		</form>
		<form method="post" action="addmoney.jsp">
			<button onclick="addmoney.jsp" name="subject" type="submit"
				class="btn btn-lg">
				<span class="glyphicon glyphicon-plus-sign"></span> Add Money
			</button>
		</form>
		<form method="post" action="fundtransfer.jsp">
			<button onclick="fundtransfer.jsp" name="subject" type="submit"
				class="btn btn-lg">
				<span class="glyphicon glyphicon-transfer"></span> Fund Transfer
			</button>
		</form>


		<form method="post" action="showtransaction.jsp">
			<button onclick="showtransaction.jsp" name="subject" type="submit"
				class="btn btn-lg">
				<span class="glyphicon glyphicon-transfer"></span>Show Transactions
			</button>
		</form>


		</div>
	</center>
	</form>

</body>

</html>