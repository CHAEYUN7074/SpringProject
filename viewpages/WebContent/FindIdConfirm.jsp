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
<title>FindIdConfirm.jsp</title>
<style>
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
  transform: translate(-50%,-50%);
}

</style>
</head>
<body>

<!-- nav 영역 -->
<div>
	<c:import url="subHeader.jsp"></c:import>
</div>
<div class="subheader">
		<p>B:CLE</p>
		<p class="title">아이디찾기</p>
	</div>

<!-- 컨텐츠영역 -->

<div class="outer">
	<div class="inner">
		<form action="">
			<div>고객님의 등록된 아이디는 아래와 같습니다.<br> testid (2021/12/02가입) </div>
			<br>
		
			<input type="button" value="비밀번호찾기">		
			<input type="button" value="로그인">
		</form>
	</div>
</div>

</body>
</html>