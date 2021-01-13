<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script>
		window.onload = function () {

/* 		// 변수 선언
	var header = document.createElement('h1');
	var textNode = document.createTextNode('Hello DOM');
		// 노드 연결
	header.appendChild(textNode);
	document.body.appendChild(header);


		// 변수 선언
	var img = document.createElement('img');
	img.setAttribute('src', 'https://papago.naver.com/97ec80a681e94540414daf2fb855ba3b.svg');
	img.setAttribute('width', 100);
	img.setAttribute('height', 100);

	document.body.appendChild(img);


		var output = '';
		output += '<ul>';
		output += '		<li>JavaScript</li>'
		output += '		<li>jQuery</li>'
		output += '		<li>Ajax</li>'
		output += '</ul>';

		document.body.innerHTML = output;
		document.body.innerHTML += '<h1>Document Object Model</h1>'
		

	 	//문서 객체를 가져온 후 문서 객체의 속성을 변경하는 것
			var header1 = document.getElementById('header-1');
			var header2 = document.getElementById('header-2');
			header1.innerHTML = 'with getElementById();'
			header2.innerHTML = 'with getElementById();'

	 	//문서 객체를 가져온 후 문서 객체의 속성을 변경하는 것2
				var headers = document.getElementsByTagName('h2');
			for (var i = 0; i < headers.length; i++) {
					headers[i].innerHTML = 'with getElementsByTagName()';
				} */

		var sun = document.getElementById('sun');
		var earth = document.getElementById('earth');
		var moon = document.getElementById('moon');

		sun.style.position = 'absolute';
		earth.style.position = 'absolute';
		moon.style.position = 'absolute';
		sun.style.left = 250 + 'px';
		sun.style.top = 200 + 'px';

		var earthAngle = 0;
		var moonAngle = 0;

		setInterval(function(){
			var earthLeft = 250 + 150 * Math.cos(earthAngle);
			var earthTop = 250 + 150 * Math.sin(earthAngle);
			var moonLeft = earthLeft + 50 * Math.cos(moonAngle);
			var moonTop = earthTop + 50 * Math.sin(moonAngle);

			earth.style.left = earthLeft + 'px';
			earth.style.top = earthTop + 'px';
			moon.style.left = moonLeft + 'px';
			moon.style.top = moonTop + 'px';

			earthAngle += 0.1;
			moonAngle += 0.3;

			
			}, 1000 / 30);
		};
	

</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- <h1 id="header-1">HEADER</h1>
	<h1 id="header-2">HEADER</h1>
	
	<h2>Header</h2>
	<h2>Header</h2> -->
	
	<h1 id = "sun">@</h1>
	<h1 id = "earth">0</h1>
	<h1 id = "moon">*</h1>
</body>
</html>