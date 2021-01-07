<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script>

	var person = {
		name : '윤인성',
		eat : function (food) {
				alert(this.name + '은' + food + '을/를 먹습니다.')
			}	
	};
	 person.eat('밥');



	 var product = {
			name : 'Microsoft Visual Studio 2015 Ultimate',
			price : '15,000,000원',
			language : '한국어',
			supportOS : 'Win 32/64',
			subscription : true

			 };

	 var output = '';
	for (var key in product) {
		output += '*' + key + ':' + product[key] + '\n';
 		}

	alert(output);


	 var output2 = '';
	 var student = {
			이름 : '연하진',
			국어 : 92, 수학 : 98,
			영어 : 96, 과학 : 98
			 };

	 output2 += "'이름' in student : " + ('이름' in student) + '\n';
	 output2 += "'성별' in student : " + ('성별' in student);
	 alert(output2);
	 


	 function makeStudent(name, korean, math, english, science) {
		var willReturn = {
		// 속성
		이름 : name,
		국어 : korean,
		수학 : math,
		영어 : english,
		과학 : science,

		//메서드
		getSum : function () {
			return this.국어+this.수학+this.영어+this.과학;
			},
		getAverage : function() {
			return this.getSum() / 4;
			},
		toString : function() {
			return this.이름 + '\t' + this.getSum() + '\t' + this.getAverage();
			}
		};
		return willReturn;
				}

	 	alert(makeStudent('윤인성',87,90,95,100))
		var students = [];

		students.push(makeStudent('윤인성',87,90,95,100));

		var output = '이름\t총점\t평균\n';
		for (var i in students) {
				output += students[i].toString() +'\n';
			}

		alert(output);
		 
</script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>