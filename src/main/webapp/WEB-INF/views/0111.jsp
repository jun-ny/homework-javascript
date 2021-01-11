<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script>
var primitiveNumber = 273;
var objectNumber = new Number(273);

var output = '';
output += typeof (primitiveNumber) + ' : ' + primitiveNumber + '\n';
output += typeof (objectNumber) + ' : ' + objectNumber;
alert(output);

var student = {
	name : '윤명월',
	grade : '대학교 1학년',
	toString: function() {
			return this.name + ' : ' + this.grade;
		}
};

	alert(student);
//자바 스크립트는 객체를 문자열로 변환할 때 자동으로 toString() 메서드를 호출한다.


var number = 273.5210332;

var output = '';
output += number.toFixed(1) + '\n';
output += number.toFixed(4);
alert(output);

var string = 'abcdefg';
string = string.toUpperCase();
alert(string);

var string = 'JavaScript';

var output = '';
output += 'anchot : ' + string.anchor() + '<br/>';
output += 'big : ' + string.big() + '<br/>';
output += 'blink : ' + string.blink() + '<br/>';
output += 'bold : ' + string.bold() + '<br/>';
output += 'fixed : ' + string.fixed() + '<br/>';
output += 'string : ' + string.fontcolor('red') + '<br/>';

document.write(output);

var output = "Hello World .. !";
//메서드 체이닝
output = output.toLowerCase();
output = output.substring(0, 10);
output = output.anchor('name');
alert(output);

// Array 객체의 메서드
// concat() : 매개변수로 입력한 배열의 요소를 모두 합쳐 배열을 만들어 리턴
// join() : 배열 안의 모든 요소를 문자열로 만들어 리턴
// pop() : 배열의 마지막 요소를 제거하고 리턴
// push() : 배열의 마지막 부분에 새로운 요소를 추가
// reverse() : 배열의 요소 순서 뒤집기
// slice() : 요소의 지정한 부분 리턴
// sort() : 배열의 요소 정렬
// splice() : 요소의 지정한 부분을 삭제하고 삭제한 요소를 리턴

</script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>