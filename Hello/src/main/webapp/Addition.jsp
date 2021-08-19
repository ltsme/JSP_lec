
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Addition</title>
</head>
<body>
	<%
		int a = 30;
		int b = 20;
		
		int addition = a+b;			// 덧셈
		int subtraction = a-b;		// 뺄셈
		int multiplication = a*b;	// 곱셈
		int division = a/b;			// 나눗셈
		int remainder = a%b;		// 나머지
		
		
		out.println(a + "+" + b + "=" + (a+b));
	%>
	<br>
	<%=a %> + <%=b %> = <%=addition %><br> <%-- <%= %> :: 출력 --%>
	<%=a %> - <%=b %> = <%=subtraction %><br>
	<%=a %> * <%=b %> = <%=multiplication %><br>
	<%=a %> / <%=b %> = <%=division %><br>
	<%=a %> % <%=b %> = <%=remainder %><br>
</body>
</html>