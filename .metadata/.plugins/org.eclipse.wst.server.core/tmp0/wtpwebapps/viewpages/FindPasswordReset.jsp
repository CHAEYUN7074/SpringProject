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
<title>FindPasswordReset.jsp</title>
<style type="text/css">
.outer {
	display: flex;
	align-items: center;
	flex-direction: row;
	justify-content: center;
}

.inner {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}
</style>
</head>
<body>
	<!-- 
- 비밀번호 찾기 - 새로운 비번 입력
 -->


	<!-- nav 영역 -->
	<div>
		<c:import url="subHeader.jsp"></c:import>
	</div>
	<div class="subheader">
		<p>B:CLE</p>
		<p class="title">비밀번호찾기</p>
	</div>


	<!-- 컨텐츠영역 -->
	<div class="outer">
		<div class="inner">
			<form action="">
				<div>
					<h2>새로운 비밀번호를 등록해주시기 바랍니다.</h2>
				</div>
				<div>
				<h5>새 비밀번호</h5>
				<input type="text" id="pwdInsert" placeholder="새로운 비밀번호 입력"><br>
				<h6>*특수문자, 영문(대/소문자),숫자 3가지를 조합하여 8~24자 이내로 입력하시기 바랍니다.</h6>
				<h6>*특수문자중:^,_,[,],',-,>은 사용하실 수 없습니다.*''(공백)은 사용하실 수 없습니다.</h6>
				<h5>새 비밀번호 확인</h5>
				<input type="text" id="pwdInsertCheck" placeholder="비밀번호 재입력"><br>
				</div>
				<br> 
				<input type="button" value="비밀번호 변경">
				<input type="button" value="취소">
			</form>
		</div>
	</div>


</body>
</html>