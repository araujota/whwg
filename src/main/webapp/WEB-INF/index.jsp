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
		
		<div class="signlinks">
       		<p id="welcome">Welcome, ${loggeduser.userName}</p>
			<a href="/logout">Log Out</a>
		</div>
	</div>
	<div id="rulebox">
	<p id="rules">When the game starts, a prompt will appear <br><br>
	Type a word that contains the prompt and hit Enter <br><br>
	Your word cannot begin or end with the prompt <br><br>
	You have twenty seconds. <br><br>
	<span id="loadOnClick" onClick="loadGame()">Click to start</span>
	</p>
	</div>
	<div id="gamecontainer" class="gamecontainer">
		
		<div class="gamecomponent1">
			<h2 class="subheader">Timer</h2>
			<h2 id="timer" class="gamenum"></h2>
		</div>
		
		<div class="prompter">
			<h1 class="bracket">{</h1>
			<h1 id="prompt" class="prompt"></h1>
			<h1 class="bracket">}</h1>
		</div>
		
		<div class="gamecomponent2">
			<h2 class="subheader">Score</h2>
			<form action="/gameover">
				<input type="number" name="score" id="score" readonly></input>
				<button id="addScoreButton">Next</button>
			</form>
		</div>
	</div>
	<div class="inputfield">
		<input type="text" class="userinput" id="userInput"/>
	</div>
</div>

<script type="text/javascript" src="js/app.js"></script>
</body>
</html>