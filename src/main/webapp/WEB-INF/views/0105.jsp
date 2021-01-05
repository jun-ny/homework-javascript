<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script>
	var arrayA = [0, 1, 2, 3];
	var arrayB = [0, 1, 2, 3, 4, 5, 6];

	alert("length of A : " + arrayA.length);
	alert("length of B : " + arrayB.length);

	//push() 메서드
	
	var array = [0, 1];

	array.push(2);
	alert(array);

	//while 반복문
	
	var value = 0;
	while(value<5) {
		alert(value + '번째 반복');
		value++;
		}

	//for 반복문
	
	for (var value = 0; value < 5; value++) {
		alert(value + '번째 반복문');
		}

	var array = ['포도', '사과', '바나나', '망고'];
	for (var i = array.length-1; i >= 0; i--) {
		alert(array[i]);
		}

	var startTime = new Date().getTime();

	for(var cps = 0; new Date().getTime() < startTime + 1000; cps++) { }
	alert('초 당 연산 횟수 : ' + cps);

	var array = ['포도', '사과', '바나나', '망고'];

	for(var i in array) {
			alert(array[i]);
		}

	//문제 : [52, 273, 103, 32, 57, 103, 31, 2]와 같은 숫자 배열이 주어질 때, 배열 내부에서의 최대값과 최소값을 찾는 코드를 작성해보세요.
	
	var a = [52, 273, 103, 32, 57, 103, 31, 2];

	for(var i = 0; i<8; i++) {
		for (var j = i+1; j<8; j++) {

			if(a[i]>a[j]) {
				var b = a[i];
				a[i]= a[j];
				a[j] = b;
				}
			}
		}

	alert('최소값 :' + a[0])
	alert('최대값 :' + a[7])
	
</script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>