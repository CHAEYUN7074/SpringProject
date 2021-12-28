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
<title>Notice.jsp</title>
</head>
<body>

<!-- 
 Notice.jsp
-  관리자페이지 -  홈페이지 관리 - 공지사항 등록/수정/삭제 폼
 -->
 
 <div>
		<!-- 메뉴 영역 -->
		<div>
			<c:import url="adminPageSideTab.jsp"></c:import> 
		</div>


		<!-- 콘텐츠 영역 -->
		<div id="content" style="margin-left: 30vh;">
			<h1>[ 공지사항 ]</h1>
			<hr>

			<div>
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
							<textarea rows="10" cols="60" name="content">글내용은 여기~!!~~fgfjkgjaklfadfdㅇㅇddfjhasdfjhawjekhfkeslfhdksajfksdjfakjsdkfjaslk;jfalsd~</textarea>
						</td>
					</tr>
				</table>
			</div>
	 	
	 		<div>
	 			<input type="button" value="등록" id="insert">
	 			<input type="button" value="수정" id="update">
	 			<input type="button" value="삭제" id="delete">
	 		</div>
 		 	
 		</div>



	</div>
 


</body>
</html>