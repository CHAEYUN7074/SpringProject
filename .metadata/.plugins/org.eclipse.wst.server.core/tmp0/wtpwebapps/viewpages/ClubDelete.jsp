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
<title>ClubDelete.jsp</title>
</head>
<body>

<!-- 동아리장 페이지 - 동아리관리 - 동아리 폐쇄 -->
<!-- nav 영역 -->
<div>
	<c:import url="nav.jsp"></c:import>
</div>

<div>
	<!-- 메뉴 영역 -->
	<div>
		<c:import url="beeAdminPageSideTab.jsp"></c:import>
	</div>
	<!-- 콘텐츠 영역 -->
	<div style="margin-left: 30vh;">
		<h2>
			그동안 함께 해주셔서<br> 즐겁고 감사했습니다. <br> 다음에 또 만나요 
			<img src="image/smile.png" width="50" height="50">
		</h2>
		<br>

		<form>
		<div>
			<input type="button" value="동아리 폐쇄">
		</div>
		</form>
		
	</div>


</div>


</body>
</html>