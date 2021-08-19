<%@page import="java.sql.ResultSet"%>
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
		String id = request.getParameter("id");
	
		String url_mysql = "jdbc:mysql://localhost/CRUD_test?serverTimezone=Asia/Seoul&characterEncoding=utf-8&useSSL=false";
		String id_mysql = "root";
		String pw_mysql = "qwer1234";
		
		String Userid = null;

		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
	  		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
	  		Statement stmt_mysql = conn_mysql.createStatement();
			
	  		String A = "select userid from wtest where id = " + id;
			
	  		ResultSet rs = stmt_mysql.executeQuery(A);
	  		while(rs.next()){
	  			Userid = rs.getString(1);
	  		}
	  		
	  		conn_mysql.close();
	  		session.setAttribute("ID", id);
	  		session.setAttribute("USERID", Userid);

		}catch(Exception e){
			e.printStackTrace();
		}
	%>	
	<form action="updateTest03.jsp" method="post">
		사용자 ID : <input type="text" name="userid" size="10" value="<%=Userid%>">
		<input type="submit" value="확인">
	</form>
</body>
</html>