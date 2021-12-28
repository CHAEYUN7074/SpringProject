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
<title>BoardFreeBulletinUpdateForm.jsp</title>
<!-- 이거(글쓰기) css 따로 만들어야할듯 -->
<%-- <link rel="stylesheet" href="<%=cp%>/css/BoardContents.css" /> --%>

</head>
<body>

	<!--
	BoardFreeBulletinUpdateForm.jsp
	대표게시판 - 자유게시판
-->
	<div>
		<!-- 네브 영역 -->
		<div>
			<c:import url="nav.jsp"></c:import>
		</div>


		<!-- 메뉴 영역 -->
		<div>
			<c:import url="mainSideTab.jsp"></c:import>
		</div>

		<!-- 콘텐츠 영역 -->
		<div id="content" style="margin-left: 30vh;">
			<h1>[ 자유 게시판 ]</h1>
			<hr>
			<form action="">
				<div id="bbsArticle">
					<div id="bbsArticle_header"></div>

					<div class="bbsArticle_bottomLine">
						<dl>
							<dt>제목</dt>
							<dd><input type="text" placeholder="제목을 입력하세요"></dd>
							
						</dl>
						
					</div>

					<div id="bbsArticle_content">
						<dl>
							<dt>내용</dt>
						</dl>						
						<textarea rows="10" cols="50">
							원래 작성했던 내용 그대로 적혀있고~~!!
							이거 수정페이지임
							이거 오른쪽 정렬되어있나 ???
							왼쪽 정렬 안되넴....??
						</textarea>						
					</div>
					
					<!-- 첨부 사진추가 -->
					<div>
      					<c:import url="beePicCreated.jsp"></c:import>
					</div>
					
					<div>
						<input type="button" value="글수정"> 
						<input type="button" value="취소"> 
					</div>
			</form>
		</div>
		<!-- 풋터영역 -->
      <div>
      	<c:import url="footer.jsp"></c:import>
      </div>
		
	</div>
	<!-- close #bbs -->
	
	

</body>
</html>