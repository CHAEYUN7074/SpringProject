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
<link rel="stylesheet" href="<%=cp %>/css/BoardContents.css" />

</head>
<body>

<!-- 
 NoticeContents.jsp
-  관리자페이지 -  홈페이지 관리 - 공지사항 등록/수정/삭제 폼
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
		<div id="content" style="margin-left: 30vh;">
			<h1>[ 공지사항 ]</h1>
			<hr>
			
			<div class="bbsArticle_bottomLine">
				목록
				이전글
				다음글
			</div>
			
			<div id="bbsArticle">
	
		<div id="bbsArticle_header">
			게시물의 제목입니다.
		</div>
		
		<div class="bbsArticle_bottomLine">
			<dl>
				<dt>작성자</dt>
				<dd>비클러</dd>
				
				<dt>댓글수</dt>
				<dd>20</dd>
			</dl>
		</div>
		
		<div class="bbsArticle_bottomLine">
			<dl>
				<dt>등록일</dt>
				<dd>2021-12-06</dd>
				
				<dt>조회수</dt>
				<dd>251</dd>
			</dl>
		</div>
		
		<div id="bbsArticle_content">
			<table style="width: 600">
				<tr>
					<td style="padding: 10px 40px 10px 10px; vertical-align: top; height: 150">
						어쩌구 저쩌구 이러쿵 저러쿵 내용입니다.<br>
						내용입니다~~~~~~~~~~~~~!!!!!!!!!!!!!!!!<br>
					</td>
				</tr>
			</table>
		</div>
		
		<div>
 			<input type="button" value="수정" id="update">
 			<input type="button" value="삭제" id="delete">
	 	</div>
		
	</div><!-- close #bbsArticle -->

			
</div><!-- close #bbs -->

			<!-- <div>
				<a>목록</a>
				<a>이전글</a>
				<a>다음글</a>
			</div>
			
			
			<div>
				제목은 여기에~~
			</div>
			<div>
				<dl>
					<dt>작성자</dt>
					<dt>댓글수</dt>
					<dt>글등록일</dt>
					<dt>조회수</dt>
				</dl>
			</div>
			<div>
				<table>
					<tr>
						<td>
							<textarea rows="10" cols="60" name="content">글내용은 여기~!!</textarea>
						</td>
					</tr>
				</table>
			</div>
	 	
	 		<div>
	 			<input type="button" value="등록" id="insert">
	 			<input type="button" value="수정" id="update">
	 			<input type="button" value="삭제" id="delete">
	 		</div>
 		 	
 		</div> -->
	</div>

</body>
</html>