<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>출력 화면</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		int num1, num2, select1, select2;
		
		num1 = Integer.parseInt(request.getParameter("num1"));
		num2 = Integer.parseInt(request.getParameter("num2"));
		select1 = Integer.parseInt(request.getParameter("select1"));
		select2 = Integer.parseInt(request.getParameter("select2"));
	%>
	
		첫번째 결과 : <% out.println(num1+num2); %> <br>
		두번째 결과 : <% out.println(select1*select2); %>
		
</body>
</html>