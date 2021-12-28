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
<title>MyActivityWriting.jsp</title>
<link rel="stylesheet" href="<%=cp %>/css/Sidebar.css" />


</head>
<body>
	<!-- 
 - MyActivityWriting.jsp
-  마이페이지 - 나의 활동보기 -작성글/작성 댓글
 -->

	<div class="wrap">
		<!-- 네브 영역 -->
		<div>
			<c:import url="nav.jsp"></c:import>
		</div>

		<div class="merge">
			<!-- 메뉴 영역 -->
			<div>
				<c:import url="sidebarMypage.jsp"></c:import>
			</div>


			<!-- 콘텐츠 영역 -->
			<div id="content">
				<h1>[ 나의 활동보기 - 작성글/작성댓글 ]</h1>
				<hr>

				<table id="BoardCategoryList" class="table">
					<tr>
						<!-- 항목 6EA -->
						<th>순번</th>
						<th>게시글번호</th>
						<th>제목or내용</th>
						<th>작성일</th>
						<th>댓글수</th>
						<th>조회수</th>
					</tr>

					<tr>
						<td>4</td>
						<td>11</td>
						<td><a href=""> 함께달려요~~~!!달리자!</a></td>
						<td>2021.12.15</td>
						<td>3</td>
						<td>23</td>
					</tr>
					<tr>
						<td>3</td>
						<td>20</td>
						<td><a href="">야구보러가는사람?? 손들어봐</a></td>
						<td>2021.12.05</td>
						<td>10</td>
						<td>102</td>
					</tr>
					<tr>
						<td>2</td>
						<td>53</td>
						<td><a href="">맛난디저트 만들어봤어용~! 무나합니당^^</a></td>
						<td>2021.12.05</td>
						<td>3</td>
						<td>39</td>
					</tr>
					<tr>
						<td>1</td>
						<td>33</td>
						<td><a href="">영화관람동아리 같이들어갈사람???</a></td>
						<td>2021.11.25</td>
						<td>2</td>
						<td>102</td>
					</tr>

				</table>

				<div>
					<p>1 Prev 21 22 23 24 25 26 27 28 29 30 Next 54</p>
				</div>

			</div>
		</div>
		<!-- 풋터영역 -->
		<div>
			<c:import url="footer.jsp"></c:import>
		</div>
	</div>

</body>
</html>