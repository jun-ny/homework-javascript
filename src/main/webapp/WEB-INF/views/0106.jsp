<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script>
	var 함수 = function() {
		var output = prompt('숫자를 입력하세요.', '숫자');
		alert(output);
		};

		함수();

	function f(x) { return x * x;}
	alert(f(3));


	var array1 = Array();
	var array2 = Array(10);
	var array3 = Array(273, 103, 57, 32);

	alert(array1 + '\n' + array2 + '\n' + array3);

	//내부 함수
	function pythagoras(width, height) {
		function square(x) {
			return x * x;
		}

		return Math.sqrt(square(width) + square(height));
		}

	//3초 후에 함수 실행
	setTimeout(function() {
		alert('3초가 지났습니다.'); 

		}, 3000);	

	//parseInt(), parseFloat()은 숫자로 변환할 수 있는 부분까지는 전부 숫자로 변환이 가능
	var won = '1000원';
	alert(parseInt(won));

	function test(a, b, c) {
		b = b || 52;
		c = c || 273;

		alert(a + ':' + b + ':' + c);
		}

	test(1,2);
</script>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


</body>
</html>