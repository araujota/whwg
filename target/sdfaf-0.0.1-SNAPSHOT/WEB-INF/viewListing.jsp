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
<title>View Listing</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<h1>${listing.address}</h1>
<a href="/home">Dashboard</a>

<div class="container">
<p>Address: <c:out value="${listing.address}"/></p>
<p>Listing Date: <c:out value="${listing.listingTime}"/></p>
<p>Price: $<c:out value="${listing.price}"/></p>
</div>

<h3>Notes:</h3>
	<div class="overflow-auto" style="height: 150px; width=500px">
	<c:forEach var="note" items="${notes}">
	<p>Added by <c:out value="${note.user.userName}"/></p>
	<p>- <c:out value="${note.note}"/></p>
	</c:forEach>
	</div>
	
<h3>Add Note:</h3>
<form:form action="/note/create" method="POST" modelAttribute="newNote">
<form:label path="note">Note</form:label>
<form:input path="note"/>
<button>Add note</button>
</form:form>

<c:if test="${userId == creatorId }">
<a href="/listing/${listing.id}/edit">edit</a>
<form action="/listing/${listing.id}/delete" method="POST">
	<input type="hidden" name="_method" value="delete"/>
	<button>Delete</button>
</form>
</c:if>
	
	
</body>
</html>