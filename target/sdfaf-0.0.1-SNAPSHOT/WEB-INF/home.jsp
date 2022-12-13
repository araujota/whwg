<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Homepage</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<h1>Welcome ${user.userName}!</h1>
	<a href="/logout">Log Out</a>
	<h1>All Listings</h1>
	<div class="container">
	<table>
	
	<th>Address</th>
	<th>Listed On</th>
	<th>Added By</th>
	<th>Price</th>
	
	<c:forEach var="listing" items="${listings}">
	<tr>
		<td><a href="/listing/${listing.id}">${listing.address}</a></td>
		<td><c:out value="${listing.listingTime}"/></td>
		<td><c:out value="${listing.user.userName}"/></td>
		<td>$<c:out value="${listing.price}"/></td>
	</tr>
	</c:forEach>
	
	</table>
	
	<a href="/listing/new">Add Listing</a>
	
	</div>
</body>
</html>