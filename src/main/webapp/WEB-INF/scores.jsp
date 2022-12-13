<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>The World's Hardest Word Game</title>
<link rel="stylesheet" type="text/css" href="/css/style.css">
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class="bg">
<div class="topbar">
	<h1 class="header">High Scores</h1>
</div>
<div class="scorecontainer">

<table class="scoretable">
	<thead>
		<tr>
			<td>User</td>
			<td>Score</td>
		</tr>
	</thead>
	<tbody>
	<c:forEach var="user" items="${users}">
		<tr>
			<td><c:out value="{ ${user.userName} }"/></td>
			<td><c:out value="{ ${user.score} }"/></td>
		</tr>
	</c:forEach>
	
	</tbody>


</table>

<div id="playagainscorescreen">
	<a href="/game">Play Again</a>

</div>

</div>
</div>



</body>
</html>