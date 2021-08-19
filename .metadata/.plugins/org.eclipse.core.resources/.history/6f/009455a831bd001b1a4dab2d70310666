<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
  
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>공지 상세 페이지</title>
</head>
<body>

	<div style="width: 700px; height: 50px; margin:0 auto; background-color: orange;"></div>

	 <table width="700" cellspacing="0" cellpadding="5" border="0" style="background-color: #eeeeee; text-align: center; margin:0 auto;">
			<thead>
				<tr>
					<th colspan="2" style="background-color: #FFEBCD; text-align: center;">공지 상세 페이지</th>
				</tr>
			</thead>
			<tr>
				<td>No.</td>
				<td><input type="text" name="noid" size="80" readonly="readonly" value="${noticedetail.noid}"></td>
			
			</tr> 
<%-- 			<tr>
				<td>관리자</td>
				<td><input type="text" name="adid" size="80" readonly="readonly" value="${noticedetail.adid}"></td>
			
			</tr>  --%>
			<tr>
				<td>조회수</td>
				<td><input type="text" name="nohit" size="80" readonly="readonly" value="${noticedetail.nohit}"></td>
			
			</tr> 
				
			<tr>
				<td>제목</td>
				<td><input type="text" name="notitle" size="80" readonly="readonly" value="${noticedetail.notitle}"></td>
			
			</tr>
			<tr>
				<td>날짜</td>
				<td><input type="text" name="nodate" size="80" readonly="readonly"  value="${noticedetail.nodate}"></td>
			
			</tr>
		
			<tr>
				<td>내용</td>
				<td><textarea rows="10" cols="80" name="nocontent" readonly="readonly">${noticedetail.nocontent}</textarea>>
			
			</tr>
			<tr>
				<td></td>			
				<td><button type="button" style="color:#F5DEB3; background:#FFA500; font-size:1em; border-radius:4px;" onclick="location.href='noticelist.wd'">확인</button></td>
			</tr>
			
			<!-- 입력이 안됐을때 첫 화면으로 돌아가게 하기 위해서 하이퍼 링크 달아주기 -->

			<tr>
				<td><a href = "noticelist.wd">목록으로</a></td>
			</tr>	
	</table> 


</body>
</html>