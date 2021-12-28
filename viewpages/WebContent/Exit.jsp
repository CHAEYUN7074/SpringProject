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
<title>exit.jsp</title>
<link rel="stylesheet" href="<%=cp %>/css/Sidebar.css" />

</head>
<body>

	<!-- 
 exit.jsp
-  동아리 관리자 페이지- 회원관리  - 강퇴자 목록

 -->

	<div class="wrap">
		<!-- 네브 영역 -->
		<div>
			<c:import url="nav.jsp"></c:import>
		</div>



		<div class="merge">
			<!-- 사이드바 영역 -->
			<div>
				<c:import url="sidebarBeeAdmin.jsp"></c:import>
			</div>

			<!-- 콘텐츠 영역 -->
			<div id="content">
				<h1>[ 강퇴자 목록 ]</h1>
				<hr>

				<div>
					<form action="">
						<input type="text" value="검색어입력" class="search" /> <input
							type="button" value="검색">
					</form>
				</div>
				<br>

				<table id="outMembers" class="table">
					<tr>
						<!-- 항목 10EA -->
						<th>번호</th>
						<th>ID</th>
						<th>이름</th>
						<th>닉네임</th>
						<th>이메일</th>
						<th>연령대</th>
						<th>지역</th>
						<th>신고횟수</th>
						<th>강퇴날짜</th>
						<th></th>
					</tr>

					<tr>
						<td>10</td>
						<td>testid01</td>
						<td>홍길동</td>
						<td>동해번쩍</td>
						<td>hong@naver.com</td>
						<td>20대</td>
						<td>서울</td>
						<td>0</td>
						<td>2021.12.03</td>
						<td><button type="button" class="btn">삭제</button>
						<td>
					</tr>
					<tr>
						<td>9</td>
						<td>testid02</td>
						<td>고길동</td>
						<td>서해번쩍</td>
						<td>go@naver.com</td>
						<td>30대</td>
						<td>서울</td>
						<td>0</td>
						<td>2021.11.20</td>
						<td><button type="button" class="btn">삭제</button>
						<td>
					</tr>
					<tr>
						<td>8</td>
						<td>testid03</td>
						<td>박길동</td>
						<td>번쩍번쩍</td>
						<td>dong@naver.com</td>
						<td>20대</td>
						<td>서울</td>
						<td>0</td>
						<td>2021.11.17</td>
						<td><button type="button" class="btn">삭제</button>
						<td>
					</tr>
					<tr>
						<td>7</td>
						<td>testid04</td>
						<td>김해리</td>
						<td>동해번쩍</td>
						<td>test111@naver.com</td>
						<td>20대</td>
						<td>서울</td>
						<td>2</td>
						<td>2021.11.16</td>
						<td><button type="button" class="btn">삭제</button>
						<td>
					</tr>
					<!-- 
           <tr>
              <td>6</td>
              <td>testid05</td>
              <td>박론</td>
              <td>빨간코끼리</td>
              <td>hong111@naver.com</td>
              <td>30대</td>
              <td>서울</td>
              <td>0</td>
              <td>2021.11.11</td>
              <td><button type="button" class="btn">삭제</button><td>
           </tr>
           <tr>
              <td>5</td>
              <td>testid06</td>
              <td>이기상</td>
              <td>노란상어</td>
              <td>hong333@naver.com</td>
              <td>40대</td>
              <td>서울</td>
              <td>0</td>
              <td>2021.11.05</td>
              <td><button type="button" class="btn">삭제</button><td>
           </tr>
           <tr>
              <td>4</td>
              <td>testid07</td>
              <td>최한결</td>
              <td>노란토끼</td>
              <td>hong444@naver.com</td>
              <td>40대</td>
              <td>서울</td>
              <td>0</td>
              <td>2021.11.05</td>
              <td><button type="button" class="btn">삭제</button><td>
           </tr>
           <tr>
              <td>3</td>
              <td>testid08</td>
              <td>김라운</td>
              <td>제주감귤</td>
              <td>hong5@naver.com</td>
              <td>20대</td>
              <td>서울</td>
              <td>0</td>
              <td>2021.11.01</td>
              <td><button type="button" class="btn">삭제</button><td>
           </tr>
           <tr>
              <td>2</td>
              <td>idtest01</td>
              <td>박둘리</td>
              <td>구공탄라면</td>
              <td>hong333@naver.com</td>
              <td>20대</td>
              <td>서울</td>
              <td>0</td>
              <td>2021.10.05</td>
              <td><button type="button" class="btn">삭제</button><td>
           </tr>
           <tr>
              <td>1</td>
              <td>idtest30</td>
              <td>최희동</td>
              <td>닉네임뭐야</td>
              <td>h555@naver.com</td>
              <td>10대</td>
              <td>서울</td>
              <td>0</td>
              <td>2021.10.03</td>
              <td><button type="button" class="btn">삭제</button><td>
           </tr>
            -->
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