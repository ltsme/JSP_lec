<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력 결과</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String name, id, pw, protocol;
		String[] hobbies, majors;
		
		name = request.getParameter("name");
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		hobbies = request.getParameterValues("hobby");
		majors = request.getParameterValues("major");
		protocol = request.getParameter("protocol");
	%>
	
	이름 : <%=name %> <br>
	아이디 : <%=id %> <br>
	패스워드 : <%=pw %> <br>
	취미 : <%=Arrays.toString(hobbies) %> <br>
	전공 : <%=Arrays.toString(majors) %> <br>
	protocol : <%=protocol %> <br>
	
</body>
</html>