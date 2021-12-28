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
<title>MyBreakawayConfirm.jsp</title>
</head>
<body>

<!-- 
MyBreakawayConfirm.jsp
탈퇴 확인 페이지
 -->
<div>
	<c:import url="subHeader.jsp"></c:import>
</div>
<div class="subheader">
		<p>B:CLE</p>
		<p class="title">회원탈퇴 완료</p>
	</div>

<!-- 컨텐츠영역 -->

<div class="outer">
	<div class="inner">
		<form action="">
			<div>			
				<img src="" width="50" height="50">	
				<h1>BE:CLE</h1>
				<h2>회원 탈퇴가 완료 되었습니다.</h2>
				<h3>그동안 이용해주셔서 감사합니다.</h3>
			</div>
			<br>
		
			<input type="button" value="홈으로">
		</form>
	</div>
</div>
 
 

</body>
</html>