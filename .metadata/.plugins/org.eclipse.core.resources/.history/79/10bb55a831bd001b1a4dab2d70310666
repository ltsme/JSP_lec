
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>후기 목록</title>
<style>
li{
	display: table;
	margin-left: auto;
	margin-right: auto;
	color: orange;
	}

th, td {
	text-align: center;
	}
b{
	background-color: orange;	
}
button {
 	display: block;
 	margin:auto;
 	width: 100px;
 	height: 40px;
 	text-align:center;
 	font-size:13px;
	border-radius: 15px;
	outline: none;
	background-color: orange;
}



</style>
</head>
<body>
	<!-- 선택 (공지/ 후기) ---------------------------------------->
	<nav style="margin:auto;"> 
		<ul class="nav-container" > 
		<li class="nav-item"> <a href="noticelist.wd">공지</a></li>
		<li class="nav-item"> <a href="reviewlist.wd">후기</a></li>	
		</ul>
		
	</nav>
		
		<!-- 오렌지색 줄 ---------------------------------------->
	<div style="width: 700px; height: 50px; margin:0 auto; background-color: orange;"></div>
	<br><br>
		<!-- 검색창 ---------------------------------------->
	<div class="row" style="clear:right;width:500px; margin:0 auto;">
		<div class="col-lg-12">
			<form id="searchForm" action="reviewlist.wd" method="post">
				<select name="searchCategory">
					<option value="all">전체</option>
					<option value="title">제목</option>
					<option value="content">내용</option>
				</select>
				<input type="text" name="searchWord" value="" placeholder="검색어를 입력해주세요"/>
				<input type="submit" value="검색">
			</form>
		</div>
	</div>
	<!-- 검색창 -->

	<h3 align="center">후기 목록</h3>
	<!-- table list  -->
	<table  width="700" cellspacing="0" cellpadding="5" border="1" style=" margin:0 auto;" class="table"> 
	<colgroup>
    	<col width="5%"/>
    	<col width="18%"/>
    	<col width="32%"/>
    	<col width="15%"/>
    	<col width="8%"/>
     </colgroup>
		<thead class="thead-light">
			<tr>
				<th scope="col">No.</th>
				<th scope="col">제목</th>
				<th scope="col">내용</th>
				<th scope="col">날짜</th>
				<th scope="col">조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items = "${reviewlist }" var="ReviewDto" >
				<tr>
					<td>${ReviewDto.reid}</td>
					<td>${ReviewDto.retitle}</td>
					<td><a href="reviewdetail.wd?reid=${ReviewDto.reid}" >${ReviewDto.recontent}</a></td>
					<td>${ReviewDto.redate}</td>
					<td>${ReviewDto.rehit}</td>
			
				</tr>

			</c:forEach>
		
		
		<!-- 2021.05.19 페이징 구현 -->
			<tr>
				<td colspan="5" align="center">
					<!-- 페이징 부분 -->
					<c:forEach items="${pagelist }" var="page">
						<a href="reviewlist.wd?page=${page }">${page}</a>
					</c:forEach>
				</td>
	   		</tr>
	</tbody>			
	</table>
	<div >
	<button class="button" onClick="location.href='review.wd'" >후기작성</button>
	</div>
	
</body>
</html>