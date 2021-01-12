<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<script>
var output = '';
for (var key in window) {

	output += '*' + key + ': ' + window[key] + '\n';
}

alert(output);

window.open('http://hanbit.co.kr', 'child', 'width=600, height=300', true);

var child = window.open('','', 'width = 300, height = 200');

child.document.write('<h1>From Parent Window</h1>');

//상대 이동과 절대 이동
var child = window.open('','','width=300,height=200');

child.moveTo(0, 0);

setInterval(function () {
	child.moveBy(10, 10);	
}, 1000);

var child2 = window.open('', '', 'width=300, height=200');
var width = screen.width;
var height = screen.height;

child2.moveTo(0, 0);
child2.resizeTo(width, height);

setInterval(function() {
	child2.resizeBy(-20, -20);
	child2.moveBy(10, 10);	
}, 1000);

window.onload = function() {
	alert('Process - 0');
};
 
 
 var music = document.querySelector(".music");
 var audio = new Audio;
 audio.src = 'https://ggumimugg.cafe24.com/audio/brave.mp3';
 




 
</script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<button onclick="audio.play()">PLAY</button>
<button onclick="audio.pause()">PAUSE</button>
<input type = "number" onchange="audio.currentTime=this.value"/>
<input type = "number" onchange="audio.volume=this.value"/>
<h1>Process -1</h1>

<h2>Process -2</h2>


</body>
</html>