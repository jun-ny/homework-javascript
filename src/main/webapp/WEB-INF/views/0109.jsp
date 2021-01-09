<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script>
function Student(name, korean, math, english, science) {

	this.이름 = name;
	this.국어 = korean;
	this.수학 = math;
	this.영어 = english;
	this.과학 = science;

	//메서드
	this.getSum = function() {
			return this.국어 + this.수학 + this.영어 + this.과학;
		};

	this.getAverage = function() {
			return this.getSum()/4;
		};

	this.toString = function() {
			return this.이름 + '\t' + this.getSum() + '\t' + this.getAverage();	
		};
	
}

//이렇게 생성한 생성자 함수는 	

var students = [];
students.push(new Student('윤하린', 96, 98, 92, 98));
students.push(new Student('윤인아', 97, 97, 92, 98));

var output = '이름\t총점\t평균\n';
for (var i in students) {
		output += students[i].toString() + '\n';
}

alert(output);


//new키워드

function Constructor(value) {
		this.value = value;
}
var constructor = new Constructor('Hello');
alert(constructor.value);

//new키워드를 사용하지 않을 경우

function Constructor(value) {
	this.value = value;
}

var constructor = Constructor('Hello');
alert(value);

// this 키워드를 사용하면 window 객체를 나타낸다. 따라서 일반적으로 함수를 호출하듯이 new 키워드를 사용하지 않아면, 함수를 실행하는 동안 window 객체에 속성을 추가한 것이 된다. 
// 하지만 new 키워드로 함수를 호출하면 객체를 위한 공간을 만들고 this 키워드는 해당 공간을 의미하게 된다.


//캡슐화

function Rectangle(w, h) {

	var width = w;
	var height = h;

	this.getWidth = function () { return width };
	this.getHeight = function () { return height };
	this.setWidth = function (w) {
		if (w < 0 ) {
				throw '길이는 음수일 수 없습니다.';
			} else {
				width = w;
				}
		};
	this.setHeight = function (h) {
		if ( h < 0) {
				throw '길이는 음수일 수 없습니다.';
			} else {
				height = h;
				}
		};
}

Rectangle.prototype.getArea = function () {
		return this.getWidth() * this.getHeight();
};


//변수 선언
var rectangle = new Rectangle(5, 7);

alert('AREA : ' + rectangle.getArea());


//상속
function Square(length) {
	this.base = Rectangle;
	this.base(length, length);
}

Square.prototype = Rectangle.prototype;
Square.prototype.constructor = Square;

var rectangle = new Rectangle(5, 7);
var square = new Square(5);
alert(rectangle.getArea() + " : " + square.getArea());
alert(square.constructor);


//문제
function Product(n) {
	var number = n;
	this.getN = function() {return n};
	this.setN = function(n) {
		number = n;
		}
	
}
Product.prototype.calculate = function() {
	return this.getN() * 1690;	
};

var test = new Product(5);

alert(test.calculate());

function Product2(name, price, weight) {

	this.name = name;
	this.price = price;
	this.weight = weight;
}

Product2.prototype.calculate = function(weight) {
	return this.price * (weight / this.weight);
}

var test2 = new Product2("삼겹살", 1690, 100);

alert(test2.calculate(200));

</script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>