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
<title>beeHelloList.jsp</title>
<style>
@import
	url('https://fonts.googleapis.com/css?family=Exo+2|Noto+Sans+KR&display=swap')
	;

#content {
	margin: 5vh 34vh 5vh 30vh;
}

/* .row g-0{
margin-bottom : 2vh;
border: 1px;
} */

.box {
	margin: 5vh 30vh 3vh 77%;
}

#search form {
	display:flex;
	margin-bottom : 3vh;
	margin-left : 15vh;
}

.enroll {
	float : right;
	margin-bottom : 5vh;
}

#footer {
	margin-left:35%;
}
</style>
</head>
<body>
	<!--  
	beeHelloList.jsp
	- 동아리 내 게시판 > 가입인사 글 목록
-->
	<div id="wrap">
		<div>
			<!-- nav 영역 -->
			<c:import url="nav.jsp"></c:import>
			<c:import url="meetingmain.jsp"></c:import>

			<!-- 게시판 이동 영역 -->


			<div class="box">
				<div>
					<form action="" name="categoryForm" method="post">
						<select name="categoryKey" class="selectField">
							<option value="notice">공지</option>
							<option value="talk">자유글</option>
							<option value="greeting">가입인사</option>
							<option value="review">정모후기</option>
							<option value="question">문의글</option>
						</select>
					</form>
				</div>


			</div>

			<!-- 사이드바 -->


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
						<td></td>
						<td>미등록</td>
					</tr>


					<tr>
						<td>999</td>
						<td>가입방법문의드립니다.</td>
						<td>신짱구</td>
						<td>2021-12-07</td>
						<td></td>
						<td>미등록</td>
					</tr>

					<tr>
						<td>999</td>
						<td>가입방법문의드립니다.</td>
						<td>신짱구</td>
						<td>2021-12-07</td>
						<td></td>
						<td>미등록</td>
					</tr>

					<tr>
						<td>999</td>
						<td>가입방법문의드립니다.</td>
						<td>신짱구</td>
						<td>2021-12-07</td>
						<td></td>
						<td>미등록</td>
					</tr>

					<tr>
						<td>999</td>
						<td>가입방법문의드립니다.</td>
						<td>신짱구</td>
						<td>2021-12-07</td>
						<td></td>
						<td>미등록</td>
					</tr>
					<tr>
						<td>999</td>
						<td>가입방법문의드립니다.</td>
						<td>신짱구</td>
						<td>2021-12-07</td>
						<td></td>
						<td>미등록</td>
					</tr>
					<tr>
						<td>999</td>
						<td>가입방법문의드립니다.</td>
						<td>신짱구</td>
						<td>2021-12-07</td>
						<td></td>
						<td>미등록</td>
					</tr>
					<tr>
						<td>999</td>
						<td>가입방법문의드립니다.</td>
						<td>신짱구</td>
						<td>2021-12-07</td>
						<td></td>
						<td>미등록</td>
					</tr>
				</table>

				<div class="enroll">
					<button class="btn btn-primary btn-sm" type="button"
						id="insertBoard" onclick="location.href='boardinsertform.action'">글
						등록</button>
				</div>
				<div id="footer">
					<p>1 Prev 21 22 23 24 25 26 27 28 29 30 Next 54</p>

				</div>

			</div>


		</div>


		<!-- 푸터 영역 -->
		<!-- 푸터 적용하니까 css가 다 엉망이 되요.. -->




	</div>




</body>
</html>





