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
<title>Add Listing</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<h1>New Listing</h1>
<a href="/home">Dashboard</a>

<div class="container">

<form:form action="/listing/create" method="POST" modelAttribute="newListing">
	<div class="row">
	<form:label path="address">Address</form:label>
	<form:input path="address"/>
	<form:errors path="address"/>
	</div>
	<div class="row">
	<form:label path="price">Price</form:label>
	<form:input path="price"/>
	<form:errors path="price"/>
	</div>
	<button>Submit</button>

</form:form>

</div>
</body>
</html>