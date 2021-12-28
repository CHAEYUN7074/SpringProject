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
<title>FindPasswordConfirm.jsp</title>
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
		<p class="title">비밀번호 찾기</p>
	</div>

<!-- 컨텐츠영역 -->

<div class="outer">
	<div class="inner">
	<div class="row register-form">
		<form action="">
				<div class="form-group col-md-12 col-sm-12">
					고객님의 등록된 비밀번호는 아래와 같습니다.<br> 
					${checkPassword}
				</div>
			<br>
			
			<input type="button" value="아이디찾기" class="btn"
			onclick="javascript:location.href='<%=cp%>/findid.action'">		
			<input type="button" value="로그인" class="btn"
			onclick="javascript:location.href='<%=cp%>/loginpage.action'">
		</form>
	</div>	
	</div>
</div>
<%-- 
<div>
	<c:import url="footer.jsp"></c:import>
</div>
 --%>
</body>
</html>