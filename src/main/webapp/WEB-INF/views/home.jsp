<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<script>

	//-----시간을 사용한 조건 분기-----//
//변수 선언
var date = new Date();
var hour = date.getHours();

//if 조건문
if(hour < 12) {
	alert('오전입니다.');
}

if(hour >= 12) {
	alert('오후입니다.');
}

	//----if else 조건문-----//
var date = new Date();
var hour = date.getHours();

//if 조건문
if(hour < 12) {
	alert('오전입니다.');
} else {
	alert('오후입니다.');
}

	//-----논리 연산자와 조건문-----//
	
var score = Number(prompt('학점을 입력하세요.', '학점'));
	if(4.0 < score && score < 4.5) {
	alert('👍');
		}

	//-----switch 조건문-----//
	var input = Number(prompt('숫자를 입력하세요.', '숫자'));

	switch (input%2) {
	case 0 :
		alert('짝수입니다.');
		break;
	case 1 :
		alert('홀수입니다.');
		break;
	default :
		alert('숫자가 아닙니다.');
		break;
	}

	//-----삼항 연산자-----//
	// <불 표현식> ? <참일 때 실행하는 문장> : <거짓일 때 실행하는 문장>
	var input = prompt('숫자를 입력해 주세요.', '');
	var number = Number(input);

	//조건문
	(number > 0) ? alert('자연수입니다.') : alert('자연수가 아닙니다.');

	//짧은 조건문
	// <불 표현식> || <불 표현식이 거짓일 때 실행할 문장>
	
	var input = Number(prompt('숫자를 입력해주세요.', '숫자'));

	input % 2 == 0 || alert('홀수입니다.');
	input % 2 == 0 && alert('짝수입니다.');


	//문제 : prompt()함수로 문자를 입력받아 "안녕"이 들어가 있으면 "안녕하세요","잘자", "잘 자"를 입력하면 "안녕히 주무세요" 출력
	
	var hello = String(prompt('문자를 입력하세요.', '문자'));
	var num1 = hello.indexOf("안녕");
	var num2 = hello.indexOf("잘자");
	var num3 = hello.indexOf("잘 자");

	
	if(num1 != -1) {
	alert('안녕하세요');
		} else if(num2 != -1 || num3 != -1) {
	alert('안녕히 주무세요');
			}
</script>

<head>
	<title>Home</title>
</head>
<body>


</body>
</html>
