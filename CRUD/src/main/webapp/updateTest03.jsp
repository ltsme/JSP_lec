<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
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
		String userid = request.getParameter("userid");
	
		String url_mysql = "jdbc:mysql://localhost/CRUD_test?serverTimezone=Asia/Seoul&characterEncoding=utf-8&useSSL=false";
		String id_mysql = "root";
		String pw_mysql = "qwer1234";
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		Statement stmt_mysql = conn_mysql.createStatement();
	
		PreparedStatement ps = null;
		try{
	  		String A = "update wtest set userid = ? where id = ?";
	  		
	  		ps = conn_mysql.prepareStatement(A);
	  		ps.setString(1, userid);
	  		ps.setString(2, (String)session.getAttribute("ID"));
	  		ps.executeUpdate();
	  		
	  		conn_mysql.close();
	  		session.setAttribute("NEW", userid);
			
		}catch(Exception e){
			e.printStackTrace();
		}
	
		response.sendRedirect("updateTest04.jsp");
	%>
</body>
</html>