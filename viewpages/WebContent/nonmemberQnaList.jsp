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
<title>nonmemberQnaList.jsp</title>
<style type="text/css">

#content{
margin: 10vh 0vh 10vh 10vh;
}

.merge{
display : flex;
}
</style>
</head>
<body>
<!--  
	nonmemberQnaList.jsp
	-  고객센터 - 비회원 문의
-->
<div id="wrap">
	<div>
		<!-- nav 영역 -->
		<c:import url="nav.jsp"></c:import>

		<!-- 게시판 이동 영역 -->


		
		<div class="merge">
		<!-- 사이드바 -->
		<div>
			<c:import url="sidebarQna.jsp"></c:import>
		</div>


		<!-- 콘텐츠 영역 -->
		<div id="content">
			<h1>문의글</h1>
			<hr>
			
			<div id="search">
				<form action="" name="searchForm" method="post">
					<select name="searchKey" class="selectField">
						<option value="subject">제목</option>
						<option value="name">작성자</option>
					</select> <input type="text" name="searchValue" class="textField">
					<input type="button" value="검색" class="btn2" onclick="sendIt()">
				</form>
			</div>

			<table id="questionList" class="table">
				<tr>
					<th>순번</th>
					<th>글제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>답변일</th>
					<th>처리상태</th>
				</tr>

				<tr>
					<td>999</td>
					<td>가입방법문의드립니다.</td>
					<td>신짱구</td>
					<td>2021-12-07</td>
					<td>2021-12-08</td>
					<td></td>
					<td>미등록</td>
				</tr>


				<tr>
					<td>999</td>
					<td>가입방법문의드립니다.</td>
					<td>신짱구</td>
					<td>2021-12-07</td>
					<td>2021-12-08</td>
					<td></td>
					<td>미등록</td>
				</tr>

				<tr>
					<td>999</td>
					<td>가입방법문의드립니다.</td>
					<td>신짱구</td>
					<td>2021-12-07</td>
					<td>2021-12-08</td>
					<td></td>
					<td>미등록</td>
				</tr>

				<tr>
					<td>999</td>
					<td>가입방법문의드립니다.</td>
					<td>신짱구</td>
					<td>2021-12-07</td>
					<td>2021-12-08</td>
					<td></td>
					<td>등록</td>
				</tr>
				
				<tr>
					<td>999</td>
					<td>가입방법문의드립니다.</td>
					<td>신짱구</td>
					<td>2021-12-07</td>
					<td>2021-12-08</td>
					<td></td>
					<td>미등록</td>
				</tr>
				<tr>
					<td>999</td>
					<td>가입방법문의드립니다.</td>
					<td>신짱구</td>
					<td>2021-12-07</td>
					<td>2021-12-08</td>
					<td></td>
					<td>등록</td>
				</tr>
				<tr>
					<td>999</td>
					<td>가입방법문의드립니다.</td>
					<td>신짱구</td>
					<td>2021-12-07</td>
					<td>2021-12-08</td>
					<td></td>
					<td>미등록</td>
				</tr>
				<tr>
					<td>999</td>
					<td>가입방법문의드립니다.</td>
					<td>신짱구</td>
					<td>2021-12-07</td>
					<td>2021-12-08</td>
					<td></td>
					<td>미등록</td>
				</tr>
				<tr>
					<td>999</td>
					<td>가입방법문의드립니다.</td>
					<td>신짱구</td>
					<td>2021-12-07</td>
					<td>2021-12-08</td>
					<td></td>
					<td>미등록</td>
				</tr>
				<tr>
					<td>999</td>
					<td>가입방법문의드립니다.</td>
					<td>신짱구</td>
					<td>2021-12-07</td>
					<td>2021-12-08</td>
					<td></td>
					<td>미등록</td>
				</tr>
			</table>

			<div class="enroll">
				<button class="btn btn-primary btn-sm" type="button"
					id="insertBoard" onclick="location.href='boardinsertform.action'">문의하기</button>
			</div>
			<div id="footer">
				<p>1 Prev 21 22 23 24 25 26 27 28 29 30 Next 54</p>

			</div>

		</div>
	</div>

	</div>


	<!-- 푸터 영역 -->
	<c:import url="footer.jsp"></c:import>
	



</div>

</body>
</html>