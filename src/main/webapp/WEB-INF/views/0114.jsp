<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
	* { border : 3px solid black; }
</style>
<script>
	window.onload = function() {

		// 변수 선언
		var header = document.getElementById('header');
/* 
		// 이벤트 선언
		function whenClick() {
			alert('CLICK');
			header.onclick = whenClick;
			}
 */
		// 이벤트 연결
		header.onclick = function() {
				alert('클릭');
			};

/* 		// 이벤트 제거
		header.onclick = null; */


	document.getElementById('header').onclick = function() {
				this.style.color = 'orange';
				this.style.backgroundColor = 'red';
			};

	document.getElementById('my-form').onsubmit = function () {

			var pass = document.getElementById('pass').value;
			var passCheck = document.getElementById('pass-check').value;

			if (pass == passCheck) {
					alert('성공');
				} else {
					alert('다시 입력해주세요.')
					return false;
					}
			
		}

			
		};
</script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1 id="header">Click</h1>
		<h1 onclick = "var alpha = 10; alert(alpha)">Click</h1>
		
		<form id = "my-form">
		<label for="name">이름</label><br/>
		<input type="text" name="name" id="name" /><br/>
		<label for="pass">비밀번호</label><br/>
		<input type="password" name="pass" id="pass" /> <br/>
		<label for="pass-check">비밀번호 확인 </label> <br/>
		<input type="password" id="pass-check" /> <br/>
		<input type="submit" value="제출"/> 
		
		</form>
		
		<div onclick="alert('outer-div')">
		<div onclick="alert('inner-div')">
				<h1 onclick="alert('header')">
					<p onclick="alert('paragraph')">Paragraph</p>
				</h1>
			
</body>
</html>