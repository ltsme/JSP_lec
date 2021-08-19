<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단(2단)</title>
</head>
<body>
	<%
	//for문 구구단
	out.println("<h3>for문 구구단</h3>");
	int dan = 2;		
	for(int i=1; i<=9; i++){
		out.println(dan + "X" + i + "=" + dan*i + "<br>" + "============" + "<br>"); // 서블릿(Servlet) =  Java + HTML 
	}
	
	
	//while문 구구단
	out.println("<br>"+"<h3>while문 구구단</h3>");
	int j = 1;
	while(j<=9){
		out.println((dan) + "X" + j + "=" + dan*j + "<br>" + "============" + "<br>");
		j++;
	}
	
	%>
</body>
</html>