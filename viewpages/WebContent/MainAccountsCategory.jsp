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
<title>MainAccountsCategory.jsp</title>
</head>
<body>
	<!-- 
	MainAccountsCategory.jsp
메인페이지 - 결산 - 카테고리 별

 -->

	<div>
		<!-- 네브 영역 -->
		<div>
			<c:import url="nav.jsp"></c:import>
		</div>


		<!-- 메뉴 영역 -->
		<div>
			<!-- 결산 사이드바 아직 미완성 -->
			<%-- <c:import url="mainSideTab.jsp"></c:import> --%>
		</div>

		<!-- 콘텐츠 영역 -->
		<div id="content" style="margin-left: 30vh;">
			<!-- 소분류 카테고린 선택하면 아래가 해당 카테고리명으로 바뀜  -->	
			<h1>[ 1. 여행 ]</h1>
			<hr>
			<div>
				<p>평균 동아리원 수 변화</p>
				<div>
					<p>동아리원 수 차트</p>
					<p>복합 차트</p>
					1. 막대 그래프-회원수(레이블:회원 수)<br> 2. 꺽은선 그래프 - 증감률(레이블 : 증감률)
				</div>
			</div>
			<div>
				<p>신규 가입자 수</p>
			</div>
			<div>
				<p>신규 동아리 수</p>
			</div>
			<div>
				<p>카테고리별 평균정기 회비</p>
			</div>
			<div>
				<p>평균 정모 수</p>
			</div>
			<div>
				<p>카테고리별 만남지역 Top5</p>
			</div>
			<div>
				막대그래프 영역
			</div>
		</div>

		<!-- 풋터영역 -->
		<div>
			<c:import url="footer.jsp"></c:import>
		</div>
	</div>


</body>
</html>