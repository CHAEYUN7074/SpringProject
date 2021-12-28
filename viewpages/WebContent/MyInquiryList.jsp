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
<title>MyInquiryList.jsp</title>
</head>
<body>
	<!-- 
MyInquiryList.jsp
- 마이페이지 - 1:1 문의 목록
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
		<h1>[ 1:1 문의 ]</h1>
		<hr>
		
		<form action="">
			<div>
				<input type="text" value="검색어입력" >
				<input type="button" value="검색">
			</div>
		</form>
		
		<br>
		<table id="List" class="table">
			<tr>
				<!-- 항목 5EA -->
				<th>순번</th>
				<th>문의일</th>
				<th>글제목</th>
				<th>답변일</th>
				<th>답변상태</th>
			</tr>

			<tr>
				<td>2</td>
				<td>2021-12-05</td>
				<td>카테고리 문의합니다</td>	
				<td>2021-12-05</td>
				<td>답변완료</td>
			</tr>
			<tr>
				<td>1</td>
				<td>2021-11-25</td>
				<td>이거 문의합니다</td>	
				<td>2021-11-26</td>
				<td>답변완료</td>
			</tr>
		</table>

		<div>
			<p>1 Prev 21 22 23 24 25 26 27 28 29 30 Next 54</p>
		</div>

	</div>
	<!-- 풋터영역 -->
    <div>
       <c:import url="footer.jsp"></c:import>
    </div> 
	
</div>


</body>
</html>