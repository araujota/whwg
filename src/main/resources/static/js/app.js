
let input = document.getElementById('userInput');

let prompt = document.getElementById("prompt");

let timer = document.getElementById("timer");

let score = document.getElementById("score");

let roundScore = document.getElementById("roundScore");

let time = 20;
let thisScore = 0;

function gameOver() {
	input.style.visibility = "hidden";
	document.getElementById("addScoreButton").style.visibility="visible";
	
}

function decrement() {
	if (time==0) {
		input.value="Game Over!"
		timer.style.color="red";
		let seeScore = setTimeout(gameOver, 1000);
		clearInterval(countdown);
		
	}
	time --;
	timer.innerHTML=time;
	
}

function clearInput() {
	input.style.color="black";
	input.value="";
}

async function validate(word) {
	let inDictionary = false;
	let start = word.slice(0,3)
	let end = word.slice(word.length-3, word.length)
	let newPrompt = prompt.innerHTML;
	
	let checkDict = await (fetch("https://api.dictionaryapi.dev/api/v2/entries/en/"+word)
        .then(response => {
            return response.json();
        })
        .then(response => {
            if ((!response.title) && (start !== newPrompt) && (end !== newPrompt)) {
				input.style.color="#90EE90"
				thisScore ++;
				loadPrompt();
				time=20;
				timer.innerHTML=time;
				score.value = thisScore;
				prompt.innerHTML="";
				let resetInput = setTimeout(clearInput, 500);
            } else {
				input.style.color="red";
				let resetInput = setTimeout(clearInput, 500);
            }
        }))
}

function loadTimer() {
	timer.innerHTML=time;
	let countdown = setInterval(decrement, 1000);
}

function loadScore() {
	score.value = thisScore;
}

function loadPrompt() {
	
	fetch("https://random-word-api.herokuapp.com/word?lang=en")
    	.then(response => {
        	return response.json();
    	})
    	.then(word => {
        	let newPrompt = word[0].substring(2,5);
        	prompt.innerHTML=newPrompt;
    });
	
	
}

	
window.addEventListener('keypress', function(e) {
	if (e.keyCode == 13) {
		validate(input.value);
	}
});

function loadGame() {
	document.getElementById("gamecontainer").style.visibility="visible";
	document.getElementById("addScoreButton").style.visibility="hidden";
	input.style.visibility="visible"
	setTimeout(loadPrompt, 250);
	loadTimer();
	loadScore();
	document.getElementById("rulebox").style.visibility="hidden";
}

