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
<title>BoardPromotionContents.jsp</title>
<link rel="stylesheet" href="<%=cp%>/css/BoardContents.css" />

</head>
<body>
	<!-- 
 - BoardPromotionContents.jsp
-  대표게시판- 동아리 홍보 상세 페이지
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
			<h1>[ 동아리 홍보 ]</h1>
			<hr>
			<form action="">
				<div class="bbsArticle_bottomLine">
					<a href="">목록</a> <a href="">이전글</a> <a href="">다음글</a>
					<input type="button" value="좋아요">
				</div>
				
				
				<div>
					<!-- 작성자만 보임 -->
					<input type="button" value="수정"> <input type="button"
						value="삭제"> 
					<!-- 신고버튼은 다 보임 -->
					<input type="button" value="신고">
				</div>
				
				<div id="bbsArticle">
					<div id="bbsArticle_header">게시물의 제목입니다.</div>

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
								<td
									style="padding: 10px 40px 10px 10px; vertical-align: top; height: 150">
									어쩌구 저쩌구 이러쿵 저러쿵 내용입니다.<br>
									내용입니다~~~~~~~~~~~~~!!!!!!!!!!!!!!!!<br>
								</td>
							</tr>
						</table>
					</div>

				</div>
				<!-- close #bbsArticle -->
				<div>
					<div>댓글 0개</div>
					<div>
						<font size="2">닉네임</font>&nbsp;<font>댓글내용~~</font>&nbsp;<font size="2">2021.11.20 22:02</font>
						<input type="button" value="좋아요">
						<input type="button" value="신고">
					</div>
					<div style="display: inline-block;">
						<input type="text" style="width: 600px; height: 80px;"
							placeholder="댓글내용쓰기">
					</div>
					<div>
						<input type="button" value="댓글달기">
					</div>
				</div>

				
			</form>
		</div>
	
	<!-- close #bbs -->
<!-- 풋터영역 -->
      <div>
      	<c:import url="footer.jsp"></c:import>
      </div>
</div>



</body>
</html>