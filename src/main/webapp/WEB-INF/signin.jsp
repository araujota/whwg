<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!-- Formatting (dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign In</title>
<link rel="stylesheet" type="text/css" href="/css/style.css">
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class="bg">
<div class="topbar">
	<h1 class="header">Sign In</h1>
</div>
<div id="loginOption">
			<form:form class="signinform" action="/user/login" method="post" modelAttribute="loginUser">
				<div>
					<form:label path="username">{ Username }</form:label>
				</div>
				<div>
					<form:input path="username"/>
					<form:errors path="username" class="text-danger"/>
				</div>
				<div>
					<form:label path="password">{ Password }</form:label>
				</div>
				<div>
					<form:input type="password" path="password"/>
					<form:errors path="password" class="text-danger"/>
				</div>
				<button>{ Sign In }</button>
			</form:form>
		</div>
</div>



</body>
</html>