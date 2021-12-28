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
<title>DeleteCommentList.jsp</title>
</head>
<body>

	<!-- 
 DeletePostList.jsp
-  동아리 페이지 - 관리자 페이지 - 삭제 댓글 

 -->

<!-- nav 영역 -->
<div>
	<c:import url="navAdmin.jsp"></c:import>
</div>

<div>
	<!-- 메뉴 영역 -->
	<div>
		<c:import url="adminPageSideTab.jsp"></c:import>
	</div>

	<!-- 콘텐츠 영역 -->
	<div id="content" style="margin-left: 30vh;">
		<h1>[ 삭제 댓글 ]</h1>
		<hr>

		<div>

			<form action="">
				<input type="text" value="검색어입력"  />
				<inpyt type="button" value="검색">
			</form>
		</div>
		<br>

		<table id="List" class="table">
			<tr>
				<!-- 항목 7EA -->
				<th>순번</th>
				<th>신고일</th>
				<th>글번호</th>
				<th>작성자ID</th>
				<th>작성자닉네임</th>
				<th>신고사유</th>
				<th>삭제일</th>
			</tr>
			<tr>
				<td>1</td>
				<td>2021-12-04</td>
				<td>23</td>
				<td>minji1004</td>
				<td>민지다</td>
				<td>폭력성</td>
				<td>2021-12-05</td>
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