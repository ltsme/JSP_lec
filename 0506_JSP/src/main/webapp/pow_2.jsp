<%@page import="java.util.Arrays"%> <!-- 자동으로 임포트 됨  -->

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
	for(int i = 1; i <=5; i++){
		out.print("2 ^ " + i + " = " + power(2, i) + "<br>" );
	}
%>
	------------------------ <br>
	2 ^ 1 = <%=power(2,1) %> <br>
	2 ^ 2 = <%=power(2,2) %> <br>
	2 ^ 3 = <%=power(2,3) %> <br>
	
<%
	//지시자
	int[] iArr = {10,20,30};
	out.print(Arrays.toString(iArr)); // 자동으로 Arrays가 임포트 된다. 
%>


</body>
</html>

<%! 
	private int power(int a, int b){
		int result = 1;
		for(int i = 0; i < b; i++){
			result *= a;
		}
		return result;
}
%>