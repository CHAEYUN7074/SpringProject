<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NoticeContents.jsp</title>
<style type="text/css">
#bbsArticle_header 
{
	height:40px;
	line-height:35px;
	border-bottom:2px solid #DBDBDB;
}
#bbsArticle_content 
{
    overflow: visible;
    border-bottom:1px solid #DBDBDB;
    text-align:left;
    min-height:250px;
    padding: 20px 60px 20px 60px;
    word-break:break-all;
}

</style>
</head>
<body>

<!-- 
 NoticeContents.jsp
-  관리자페이지 -  홈페이지 관리 - 공지사항 글쓰기 버튼 글릭시

 -->

<div>
	<!-- 네브 영역 -->
	<div>
		<c:import url="navAdmin.jsp"></c:import>
	</div>
	
	
	<!-- 메뉴 영역 -->
	<div>
		<c:import url="adminPageSideTab.jsp"></c:import> 
	</div>
 
 	<!-- 콘텐츠 영역 -->
 	<div  style="margin-left: 30vh;">
 		<div>
 			<h3>공지사항</h3>
 		</div>
		<form action="" >
			 <div id="bbsArticle_header">
			 	제목 <input type="text" name="subject" value="제목을 적으세요"> 
			 
			 </div>
				 
			 <div  id="bbsArticle_content">
			 	<textarea rows="10" cols="60" name="content">내용은 여기에 쓰는걸로~!</textarea>
			 </div>
			 
			 <div>
			     <input type="button" value="등록하기" class="insert"/>
			     <input type="reset" value="다시입력" class="reset"/>
			  </div>
		 
		</form>
	</div>
</div>  
	  
 
</body>
</html>