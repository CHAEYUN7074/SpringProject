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
<title>FindingPassword.jsp</title>
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
		<p class="title">비밀번호찾기</p>
	</div>


<!-- 컨텐츠영역 -->
<div class="outer">
	<div class="inner">
		<form action="">
			아이디 <input type="text" placeholder="아이디 입력"/>
			<!-- <span id="err">아이디를 입력해주세요.</span> --><br>
			이메일 <input type="text"  placeholder="이메일 입력">
			<!-- <span id="err">이메일을 입력해주세요.</span> -->
			<input type="button" value="발송"><br>
			이메일 인증 코드 <input type="text">
			<!-- <span id="err">인증코드가 일치하지 않습니다.</span>  -->
			<input type="button" value="확인"><br><br>
			
			<input type="button" value="비밀번호찾기">		
			<input type="button" value="취소">
		</form>
	</div>
</div>


</body>
</html>