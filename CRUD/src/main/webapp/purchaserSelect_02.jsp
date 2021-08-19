<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객명단 수정 및 삭제</title>
</head>
<body>
	<h4>고객명단 수정 및 삭제</h4>
	
<%
	request.setCharacterEncoding("utf-8");
	String userid = request.getParameter("userid");
	
	String url_mysql = "jdbc:mysql://127.0.0.1/wtest?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=FALSE";
	//get방식을 사용
	String id_mysql = "root";
	String pw_mysql = "qwer1234";
	String name = "";
	String tel = "";
	String address = "";
	
	String whereStatement = "select name, tel, address from wtest.purchaserinfo where userid = '" + userid + "'";
	
	try{
		
		PreparedStatement ps = null;
		
		Class.forName("com.mysql.cj.jdbc.Driver"); // jdbc 드라이버를 로딩
		Connection conn_mysql = DriverManager.getConnection(url_mysql,id_mysql,pw_mysql); //DB환경 연결&로그인
		Statement stmt_mysql = conn_mysql.createStatement(); // DB에서 데이터를 불러옴
				
		ResultSet rs = stmt_mysql.executeQuery(whereStatement);
		while(rs.next()){
			name = rs.getString(1);
			tel = rs.getString(2);
			address = rs.getString(3);
		}
		
		
		conn_mysql.close(); //DB 연결 끊기
		
		
	}catch(Exception e){
		e.printStackTrace(); // 화면에 에러코드 보여주기
	}

%>

	<form action="putchasertSelect_03.jsp" method="post">
	<table>
	<tr><td align="right">User ID : </td>
	<td><input type="text" name="userid" size="10" value="<%=userid%>" readonly="readonly"></td></tr>
	<tr><td align="right">성명 : </td>
	<Td><input type="text" name="userid" size="10" value="<%=name%>" ></Td></tr>
	<tr><Td align="right">전화번호 : </Td>
	<td><input type="text" name="userid" size="10" value="<%=tel%>" ></td></tr>
	<tr><td align="right">주소 : </td>
	<td><input type="text" name="userid" size="40" value="<%=address%>" ></td></tr>
	
	<tr><td rowspan="2"><br></td>
	
	<Td><input type="button" value="수정" onclick="purchasertSelect_03.jsp"></Td></tr>
	<tr><td><input type="button" value="삭제" onclick="purchasertSelect_04.jsp"></td></tr>
	</table>
	
	
	
	</form>

</body>
</html>