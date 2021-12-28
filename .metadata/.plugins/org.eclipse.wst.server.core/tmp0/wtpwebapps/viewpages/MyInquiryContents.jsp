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
<title>MyInquiryContents.jsp</title>

<link rel="stylesheet" href="<%=cp%>/css/BoardContents.css" />
</head>
<body>

	<!-- 
 - MyInquiryContents.jsp
-  마이페이지 - 1:1 문의 상세페이지
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
			<h1>[ 1:1문의 ]</h1>
			<hr>
			<form action="">
				<div class="bbsArticle_bottomLine">
					<a href="">목록</a> <a href="">이전글</a> <a href="">다음글</a>
				</div>
				
				<div>
					<!-- 작성자만 보임, 관리자 답변 달리면 비활성화됨 -->
					<input type="button" value="수정"> 
					<input type="button" value="삭제"> 
				</div>
				
				<div id="bbsArticle">
					<div id="bbsArticle_header">문의글의 제목입니다.</div>


					<div class="bbsArticle_bottomLine">
						<dl>
							<dt>등록일</dt>
							<dd>2021-12-06</dd>

							<dt>답변여부</dt>
							<dd>답변완료</dd>
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
				<!-- 1대1문의에서는 회원입장 댓글창 따로 필요없음 -->
					<div>댓글 1개</div>
					<div>
						<font size="2">관리자1</font>&nbsp;<font>이것은 답변내용~~~~~~</font>&nbsp;<font size="2">2021.11.20 22:02</font>
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