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
<title>MainAccounts.jsp</title>
<style type="text/css">
.bg
{
	position: relative;	
} 
</style>
</head>
<body>
	<!-- 
	MainAccountsList.jsp
메인페이지 - 결산 - 총결산

 -->

	<div class="bg">
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
				<p></p>
			</div>
			<div>
				<p>회원 수 변화</p>
				<div>
					1. 막대 그래프-회원수(레이블:회원 수) 누적 : 
					<c:forEach var="summary" items="${summaryList }">
					${summary.perTimeMemCnt1 }&nbsp;
					${summary.perTimeMemCnt2 }&nbsp;
					${summary.perTimeMemCnt3 }&nbsp;
					${summary.perTimeMemCnt4 }&nbsp;
					${summary.perTimeMemCnt5 }&nbsp;
					${summary.perTimeMemCnt6 }&nbsp;
					</c:forEach>
					<br>
					2. 꺽은선 그래프 - 증감률(레이블 : 증감률)
					<c:forEach var="summary" items="${psummaryList }">
					${summary.p_TimerMemCnt1 }&nbsp;
					${summary.p_TimerMemCnt2 }&nbsp;
					${summary.p_TimerMemCnt3 }&nbsp;
					${summary.p_TimerMemCnt4 }&nbsp;
					${summary.p_TimerMemCnt5 }&nbsp;
					${summary.p_TimerMemCnt6 }&nbsp;
					</c:forEach>
					<br>
				</div>
			</div>
			<div>
				<p>신규 가입자 수(당일 기준) : ${newbiecnt }</p>
			</div>
			<div>
				<p>신규 동아리 수(당일 기준) : ${newclubcnt }</p>
			</div>
			<div>
				<p>정모 수(당일 기준) : ${beecnt }</p>
			</div>
		</div>
		
		 <!-- 풋터영역 -->
	     <div style="">
	      	<c:import url="footer.jsp"></c:import>
	     </div>
	</div>




</body>
</html>