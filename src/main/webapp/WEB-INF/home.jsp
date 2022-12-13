<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>The World's Hardest Word Game</title>
<link rel="stylesheet" type="text/css" href="/css/style.css">
    <script src="/webjars/jquery/jquery.min.js"></script>
    
    
</head>
<body>
<div class="bg">
	<div class="topbar">
		<h1 class="header">WHWG</h1>
	</div>
	<div id="welcomeblock">
		<p>Welcome to the World's Hardest Word Game</p>
		<br>
		<br>
		<p><a class="signuplinks" href="/signin">Sign In</a> or <a class="signuplinks" href="/signup">Sign Up</a> to get started</p>
	</div>
</div>

<script type="text/javascript" src="js/app.js"></script>
</body>
</html>