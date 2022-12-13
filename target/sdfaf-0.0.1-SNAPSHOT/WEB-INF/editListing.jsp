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
<title>Edit Listing</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<h1>Edit Listing</h1>
<a href="/home">Dashboard</a>
	<form:form action="/listing/${listing.id}/update" method="POST" modelAttribute="listing">
	<input type="hidden" name="_method" value="put"/>
	<form:input type="hidden" path="user"/>
	<div class="row">
	<form:label path="address">Address:</form:label>
	<form:input path="address"/>
	<form:errors path="address"/>
	</div>
	<div class="row">
	<form:label path="price">Price:</form:label>
	<form:input path="price"/>
	<form:errors path="price"/>
	</div>
	<div class="row">
	<form:label path="listingTime">Listing Date:</form:label>
	<form:input path="listingTime" type="date"/>
	<form:errors path="listingTime"/>
	</div>
	<button>Submit</button>
	</form:form>
	
	<form action="/listing/${listing.id}/delete" method="POST">
	<input type="hidden" name="_method" value="delete"/>
	<button>Delete</button>
	</form>


</body>
</html>