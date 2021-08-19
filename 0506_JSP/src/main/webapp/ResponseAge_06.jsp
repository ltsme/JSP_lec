<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");

	int age = Integer.parseInt(request.getParameter("age"));
	String name = "";
	String possible = "";

	if(age>19){
		name = URLEncoder.encode("성인", "UTF-8");
		possible = URLEncoder.encode("가능", "UTF-8");
		response.sendRedirect("ResponseAge_07.jsp?age=" + age +"&name=" + name +"&possible=" + possible);
	} else{
		name = URLEncoder.encode("미성년자", "UTF-8");
		possible = URLEncoder.encode("불가능", "UTF-8");
		response.sendRedirect("ResponseAge_07.jsp?age=" + age +"&name=" + name +"&possible=" + possible);
	}
%>

</body>
</html>