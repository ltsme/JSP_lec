<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="0">
		<form action="edit.do" method="post">
			<!--  <input type="hidden" name="bId" value="${content_view.bId }">-->
			<tr>
				<td>번호</td>
				<td><input type="text" name="bId" readonly="readonly" value="${content_view.bId }"></td>
			</tr>
		
			<tr>
				<td>이름</td>
				<td><input type="text" name="bName" size="20" value="${content_view.bName }"></td>
			</tr>
			
			<tr>
				<td>제목</td>
				<td><input type="text" name="bTitle" size="50" value="${content_view.bTitle }"></td>
			</tr>
			
			<tr>
				<td>내용</td>
				<td><textarea rows="10" cols="50" name="bContent">${content_view.bContent }</textarea></td>  <!--  내용 출 --> 
			</tr>
			
			<tr>
				<td colspan="2"><input type="submit" value="수정">&nbsp;&nbsp;&nbsp;<a href="write.do">작성&nbsp;&nbsp;&nbsp;</a><a href="list.do">목록보기</a>
				&nbsp;&nbsp;&nbsp;<a href="delete.do?bId=${content_view.bId }">삭제</a></td>
			</tr>
		</form>
	</table>

</body>
</html>
</body>
</html>