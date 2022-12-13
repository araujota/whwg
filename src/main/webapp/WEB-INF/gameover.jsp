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
		<h1 class="header">Game Over!</h1>
	</div>
	<div id="roundScore">
		<h2>Nice try! You finished with a score of: {<c:out value="${param.score}"/>}<br><br></h2>
		
		<h2>Want to update your score? Your current score is: {<c:out value="${loggeduser.score}"/>}</h2>
		
		
		
		<form:form action="user/${loggeduser.id}/updatescore" method="post" modelAttribute="user">
		<form:input type="hidden" path="userName" value="${loggeduser.userName}"/>
		<input type="hidden" name="_method" value="put"/>
		<form:input type="hidden" path="password" value="${loggeduser.password}"/>
		<form:input type="hidden" path="score" value="${param.score}"/>
		<div id="options">
			<button id="updatescorebutton">{ Update Score }</button>
			<a id="playagain" href="/game">{ Play Again }</a>
			<a id="viewscoreboard" href="/scores">{ View Scoreboard }</a>
		</div>
		
		
		</form:form>
	</div>
	
	
	
	
</div>

<script type="text/javascript" src="js/app.js"></script>
</body>
</html>