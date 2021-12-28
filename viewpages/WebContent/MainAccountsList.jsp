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
<title>MainAccountsList.jsp</title>
</head>
<body>
	<!-- 
	MainAccountsList.jsp
메인페이지 - 결산 - 총결산

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
			<h1>[ 총결산 목록 ]</h1>
			<hr>
			<div>
				<p>총 동아리수</p>
			</div>
			<div>
				<p>회원 수 변화</p>
				<div>
					<p>회원 수 차트</p>
					<p>복합 차트</p>
					1. 막대 그래프-회원수(레이블:회원 수)<br>
					2. 꺽은선 그래프 - 증감률(레이블 : 증감률)
				</div>
			</div>
			<div>
				<p>신규 가입자 수(당일 기준)</p>
			</div>
			<div>
				<p>신규 동아리 수(당일 기준)</p>
			</div>
			<div>
				<p>정모 수(당일 기준)</p>
			</div>
		</div>
		
		 <!-- 풋터영역 -->
	     <div>
	      	<c:import url="footer.jsp"></c:import>
	     </div>
	</div>




</body>
</html>