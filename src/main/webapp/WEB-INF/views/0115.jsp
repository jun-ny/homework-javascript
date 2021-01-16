<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script>
	try {
			willExcept.byeBye(); //willExcept도 존재하지 않고 byeBye() 메서드도 존재하지 않음
		} catch (exception) {
			alert('예외가 발생했습니다.');
			} finally {
			alert('예외 발생 가능 부분을 통과했습니다.');
				}
			

	try {
			var array = new Array(99999999999999999);
		} catch (exception) {
			var output = '';
			for (var i in exception) {
					output += i + ': ' + exception[i] + '\n';
				}
			alert(output);
			}

		//예외 강제 발생
		
	try {
			throw 'DivideByZeroException';
		} catch (exception) {
			if (exception == 'DivideByZeroException') {
					alert("!!");
				}
			}


		//finally 구문 : try catch 구문 내부에서 return 키워드를 만날 때, break 또는 continue 키워드를 만날 때
</script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>