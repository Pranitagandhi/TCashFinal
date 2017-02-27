<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.tcash.Controller.*"%>
<div align="right">
	<a href="logout">Logout</a>
</div>
<h1>Transaction List</h1>

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
