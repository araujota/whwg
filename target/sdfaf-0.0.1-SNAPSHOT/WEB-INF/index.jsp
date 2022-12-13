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
<title>Login/Register</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<h1>Welcome, House Hunter!</h1>
<h1>Register</h1>
<div class="container">

<form:form action="/register" method="POST" modelAttribute="newUser" class="col-sm">
	<div class="row">
	<form:label path="userName">Username</form:label>
	<form:input path="userName"/>
	<form:errors path="userName"/>
	</div>
	<div class="row">
	<form:label path="email">Email</form:label>
	<form:input path="email"/>
	<form:errors path="email"/>
	</div>
	<div class="row">
	<form:label path="password">Password</form:label>
	<form:input path="password" type="password"/>
	<form:errors path="password"/>
	</div>
	<div class="row">
	<form:label path="confirmPass">Confirm Password</form:label>
	<form:input path="confirmPass" type="password"/>
	<form:errors path="confirmPass"/>
	</div>
	<button>Register</button>
</form:form>

</div>

<h1>Log In</h1>
<div class="">

<form:form action="/login" method="POST" modelAttribute="logInUser" class="col-sm">
	<div class="row">
	<form:label path="email">Email</form:label>
	<form:input path="email"/>
	<form:errors path="email"/>
	</div>
	<div class="row">
	<form:label path="password">Password</form:label>
	<form:input path="password" type="password"/>
	<form:errors path="password"/>
	</div>
	<button>Log In</button>
</form:form>

</div>
</body>
</html>