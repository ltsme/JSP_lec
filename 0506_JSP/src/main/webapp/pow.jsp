

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>2
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>

	<% 
		for(int i=1; i<=5; i++){
			out.println("2 ^ " + i + " = " + power(2, i) + "<br>");
		}
	%>
	
<%-- 	
	2 ^ 1 = <%= power(2,1) %> <br>
	2 ^ 2 = <%= power(2,2) %> <br>
	2 ^ 3 = <%= power(2,3) %> <br>
	2 ^ 4 = <%= power(2,4) %> <br>
	2 ^ 5 = <%= power(2,5) %> <br>
--%>

</body>
</html>
	<%!
		private int power(int num1, int num2){
		/* int sum = 1;
			for(int i=1; i<=num2; i++){
				sum *= num1;
			}
			return sum;
		*/
			return (int)Math.pow((int)num1, (int)num2);
		}
	%>