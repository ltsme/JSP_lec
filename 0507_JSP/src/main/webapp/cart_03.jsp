<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>상품 선택 저장 결과</h2>
	<%
		String str = request.getParameter("result");
		if(str.equals("success")){
			out.println("저장되었습니다. <br><br><br>");
		}else {
			out.println("파일에 문제가 발생했습니다.");
		}
	
	%>
	
	<form action="cart_04.jsp" method="get">
	<input type="submit" value="저장결과 불러오기">
	</form>
</body>
</html>