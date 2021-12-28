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
<title>CategoryBoardList.jsp</title>
</head>
<body>

<!-- 관리자 페이지 - 대표게시판관리- 카테고리 자유글-->

<!-- nav 영역 -->
<div>
	<c:import url="navAdmin.jsp"></c:import>
</div>

<div >
	<!-- 메뉴 영역 -->
	<div>
		<c:import url="adminPageSideTab.jsp"></c:import>
	</div>


	<!-- 콘텐츠 영역 -->
	<div id="content" style="margin-left: 30vh;">
		<h1>카테고리 자유글</h1>
		<hr>

		<div>

			<form action="">
				<input type="text" value="검색어입력" />
				<input type="button" value="검색">
			</form>
		</div>
		<br>

		<table id="List" class="table">
			<tr>
				<!-- 항목 7EA -->
				<th>순번</th>
				<th>말머리</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>댓글수</th>
				<th>조회수</th>
			</tr>

			<tr>
				<td>1</td>
				<td>운동</td>
				<td>요즘 영화 추천좀요</td>
				<td>minji1004</td>
				<td>2021-12-05</td>
				<td>0</td>
				<td>1</td>
			</tr>


		</table>

		<div id="footer">
			<p>1 Prev 21 22 23 24 25 26 27 28 29 30 Next 54</p>
		</div>

	</div>
	<!-- 풋터영역 -->
     <div>
      	<c:import url="footer2.jsp"></c:import>
     </div>
</div>
</body>
</html>