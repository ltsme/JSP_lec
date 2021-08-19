<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	//2021.05.19 권효은 파일 업로드 작업
	
    // 파일이 저장되는 경로
    String path = request.getSession().getServletContext().getRealPath("review"); 
	//상대경로 : 아래와 같은 방법으로도 가능
	/* String path = "/upload/image/"
	String realPath = request.getServletContext().getRealPath(path); */
 	// String path = request.getRealPath("fileUpload");
	System.out.println(path);
  	
  	System.out.println("fileFolder 접근 완료");
  	
    int size = 1024 * 1024 * 10; // 업로드 할 최대 파일 크기 (몇 메가바이트까지인지)
    String file = ""; // 업로드 한 파일의 이름(이름이 변경될수 있다)
    String originalFile = ""; // 이름이 변경되기 전 실제 파일 이름 (옛날께 이름바꿨다고 삭제 되지 않게)
    String str="";
	String reid=""; //이렇게 해야 try안에서만 사용 하지 않고 전체로 사용 가능
	String retitle="";
	String recontent="";
    // 실제 파일 업로드하는 과정 : 파일 올리는 라이브러리 MultipartRequest 객체 생성 -> 자동으로 파일이 올라간다
    try{
        MultipartRequest multi = new MultipartRequest(request, path, size, "UTF-8", new DefaultFileRenamePolicy());
		//실제 path, max size, defaulFileRenamePolicy : 오리지날파일 어떻게 하겠느냐 : 파일뒤에 1,2 3 붙음 (덮어씌우기 방지 )
		//name값 받아와보기
		multi.getParameter("reid") ;
		multi.getParameter("retitle");
		request.getParameter("recontent");
		 
		
		//파일 이름 가져오기
        Enumeration<String> files = multi.getFileNames();
        str = (String)files.nextElement(); // 파일 이름을 받아와 string으로 저장
        
        file = multi.getFilesystemName(str); // 업로드 된 파일 이름 가져옴(실제 파일 이름)
        originalFile = multi.getOriginalFileName(str); // 원래의 파일이름 가져옴
		session.setAttribute("file", file);
		
		System.out.println("실제 파일명 :"+file+"업로드 성공");
        
    } catch (Exception e) {
        e.printStackTrace();
    }
//파일 정보를 수정 - 번호, 파일명


//DB에 파일 정보 수정
    
    
    
%>

<html>
<head>
<meta charset="UTF-8">
<title>file upload</title>
<script type="text/javascript">

/* 	function WinClose()
	 {
	   window.open('','_self').close();     
	} */
</script>
<body>
	

	
	<h3>파일 업로드 성공</h3>
	업로드 된 파일 이름: <%=path %><br>

	문서번호 : <%=reid %>
	제목 : <%=retitle %>

	<form action="fileupload.jsp"  method="post" enctype="multipart/form-data">
		파일 첨부 : <input type="file" name="file"> <br>  
		<!-- 사용자가 전송한(업로드한) 파일이 name명 대로 (file) 전송됨 -->
		<input type="submit"  value="파일첨부" ><br>
	</form>
	<input type="button" value="확인">
	<form method="post" enctype="multipart/form-data">
	
	<img src="fileFoler/<%=file %>">   
	</form>
</body>
</html>