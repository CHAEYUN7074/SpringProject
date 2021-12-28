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
<title>QuestionList.jsp</title>
</head>
<body>

<!-- - 관리자 페이지- 문의관리 - 자주하는 질문 관리-->
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
		<h1>[ 자주하는 질문 관리 ]</h1>
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
				<th>순번</th>
				<th>관리자ID</th>
				<th>글제목</th>
				<th>작성일</th>
				<!--<th>내용</th> 내용을..?-->

			</tr>
			<tr>
				<td>1</td>
				<td>admin1</td>
				<td>비밀번호를 잃어버렸어요</td>
				<td>2021-01-01</td>
				<!--<td>비밀번호를 잃어...</td> -->
			</tr>
		</table>

		<div>
			<form action="">
				<input type="button"  value="자주하는 질문등록">
			</form>	
		</div>
		
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