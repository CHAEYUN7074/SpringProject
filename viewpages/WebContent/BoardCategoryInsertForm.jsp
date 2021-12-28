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
<title>BoardCategoryInsertForm .jsp</title>
<!-- 이거(글쓰기) css 따로 만들어야할듯 -->
<%-- <link rel="stylesheet" href="<%=cp%>/css/BoardContents.css" /> --%>

</head>
<body>

	<!--
	BoardCategoryInsertForm.jsp
	대표게시판 - 카테고리별 글쓰기
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
			<h1>[ 카테고리 ]</h1>
			<hr>
			<form action="">
				<div id="bbsArticle">
					<div id="bbsArticle_header"></div>

					<div class="bbsArticle_bottomLine">
						<dl>
							<dt>제목</dt>
							<dd><input type="text" placeholder="제목을 입력하세요"></dd>
							<dt>카테고리 선택</dt>
							<dd>
								<select>
									<option value="카테고리1">여행</option>
									<option value="카테고리2">요리/베이킹</option>
									<option value="카테고리3">건강/운동</option>
									<option value="카테고리4">공연/축제</option>
									<option value="카테고리5">음악</option>
									<option value="카테고리6">라이프</option>
									<option value="카테고리7">교육/스터디</option>
									<option value="카테고리8">창작/디자인</option>
									<option value="카테고리9">사진/영상</option>
									<option value="카테고리10">게임/오락</option>
									<option value="카테고리11">자유주제</option>									
								</select>	
							</dd>
						</dl>
						
					</div>

					<div id="bbsArticle_content">
						<dl>
							<dt>내용</dt>
						</dl>
						<textarea rows="10" cols="50">
							여기 내용 작성하는거임.
							근데 정렬 왜이래?
						</textarea>	
					</div>
					
					<!-- 첨부 사진추가 -->
					<div>
      					<c:import url="beePicCreated.jsp"></c:import>
					</div>
					
					
					<div>
						<input type="button" value="글등록"> 
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