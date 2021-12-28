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
<title>MyInquiryUpdateForm.jsp</title>
</head>
<body>

	<!-- 
MyInquiryInsertForm.jsp
- 마이페이지 - 1:1 문의 수정 폼
 -->

<!-- 네브 영역 -->
<div>
	<c:import url="nav.jsp"></c:import>
</div>

<div>
	<!-- 메뉴 영역 -->
	<div>
		<!-- 마이페이지 사이드탭 아직 미완성 -->
		<%-- <c:import url="mainSideTab.jsp"></c:import> --%>
	</div>


	<!-- 콘텐츠 영역 -->
	<div id="content" style="margin-left: 30vh;">
		<h1>[ 1:1문의 ]</h1>
		<hr>
			
		<form action="">
				<div id="bbsArticle">
					<div id="bbsArticle_header"></div>

					<div class="bbsArticle_bottomLine">
						<dl>
							<dt>제목</dt>
							<dd><input type="text" value="내가 적었던 제목"></dd>
							
						</dl>
						
					</div>

					<div id="bbsArticle_content">
						<dl>
							<dt>내용</dt>
						</dl>
						<textarea rows="10" cols="50">
							내가 적었던 문의내용이 여기에~!!~!
							근데 답변 달리면 수정/삭제 버튼 비활성화임
							수정 안돼~!~!!!!!!
							이거.... 정렬좀 어케 해쥬ㅝ.....
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
	
	<!-- close #bbs -->
	
	<!-- 풋터영역 -->
      <div>
      	<c:import url="footer.jsp"></c:import>
      </div>
</div>


</body>
</html>