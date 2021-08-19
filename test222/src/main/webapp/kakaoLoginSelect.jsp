<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    request.setCharacterEncoding("utf-8");
    String email = request.getParameter("uemail");

	String url_mysql = "jdbc:mysql://localhost/LazyGaGa?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
 	String id_mysql = "root";
 	String pw_mysql = "qwer1234";
    
    int result = 0; // 입력 확인 
    int count = 0; // 값 받을 때 사용

    PreparedStatement ps = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
        Statement stmt_mysql = conn_mysql.createStatement();

        ResultSet rs = null;

        String query = "SELECT uemail FROM userhelper WHERE uemail = ?";

        ps = conn_mysql.prepareStatement(query);
        ps.setString(1, email);
        
        rs = ps.executeQuery();

%>
		{ 
  			"user"  : [ 
<%
        while (rs.next()) {
            if (count == 0) {

            }else{
%>
            , 
<%
            }
%>            
			{
			"uemail" : "<%=rs.getString(1) %>"
			}

<%		
        count++;
        }
%>
		  ] 
		} 
<%		
        conn_mysql.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
	
%>