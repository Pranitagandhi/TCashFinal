<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
		
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
button {
    background-color: #009999;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 50%;
}
.container {
    padding: 16px;
}
</style>
<body  >

	
	
	<br/>
	<br/>
	<br/>
	<br/>
	<div align="center">
<img src="images/t_cash1.jpg" height="190px" width="190px">
	
		<h1> Tcash </h1>
		<table cellspacing="15">
		<div align="center">
		<form method="post" action="Login.jsp">  
		<button onclick="Login.jsp">Sign In</button>
		</form>
		<form method="post" action="signUp.jsp"> 
    <button   onclick="signUp.jsp">Sign Up</button>
    </form>
    
    </div>
		</table>
		
	

</body>
</html>