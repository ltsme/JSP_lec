<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력 화면</title>
</head>
<body>

	<form action="requestParameterDan.jsp" method="post">
	
	<input type="text" name="num1" size="5"> + 
	<input type="text" name="num2" size="5"> <br> <br>
	
	<select name="select1">
	<% 
	for (int i=1; i<=999; i++){
		%> <option value = <%=i %> ><%=i%></option>
	<% }	
	%>
	</select> x 
	
	<select name="select2">
	<% 
	for (int i=1; i<=999; i++){
		%> <option value =<%=i%>><%=i%></option>
	<%}%>
	</select>
	 
	<input type="submit" value="OK">
	
	</form>
</body>
</html>