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
<title>JoinConfirm.jsp</title>
</head>
<body>

<!-- 
oinConfirm.jsp
- 회원가입 완료 페이지
 -->
 
 <!-- nav 영역 -->
<div>
	<c:import url="subHeader.jsp"></c:import>
</div>
<div class="subheader">
		<p>B:CLE</p>
		<p class="title">회원가입 완료</p>
	</div>

<!-- 컨텐츠영역 -->

<div class="outer">
	<div class="inner">
		<form action="">
			<div>				
				<h1>BE:CLE</h1>
				<h2>회원가입이 완료 되었습니다.</h2>
				<h3><span>따뜻한통감자</span>님의 회원가입을 축하합니다.</h3>
				<h3>비클의 새로운 아이디는 <span>testid1004</span>입니다.</h3>
			</div>
			<br>
		
			<input type="button" value="홈으로">		
			<input type="button" value="로그인">
		</form>
	</div>
</div>


</body>
</html>