<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 보여지지 않고, 처리만 하는 JSP !! -->

<%
	String siteName = request.getParameter("sitename");
	switch(siteName){
	case "naver" :
		response.sendRedirect("https://www.naver.com");
		break;
	case "daum" :
		response.sendRedirect("https://www.daum.com");
		break;
	case "google" :
		response.sendRedirect("https://www.google.com");
		break;
	default:
		response.sendRedirect("http://localhost:8080/0506_JSP/response_01.jsp");
	}
%>
</body>
</html>