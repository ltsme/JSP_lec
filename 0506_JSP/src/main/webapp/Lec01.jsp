<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	<%-- 	<%
			out.println("1 + 2 + 3 + ..... + 99 + 100 = ");
			
			int num =100;
			int sum = 0;
			for(int i=1; i<=num; i++){
				sum = sum + i; 
			}
			out.println(sum); 
		%> --%>
		
		<%
			int sum = 0;
			
			out.println("1부터 100까지의 합 = ");
			for(int i=1; i<=100; i++){ sum = sum + i;}
			out.println(sum + "<br>"); 
			
			out.println("1부터 200까지의 합 = ");
			for(int i=100; i<=200; i++){ sum = sum + i;}
			out.println(sum);
		%>

	</body>
</html>