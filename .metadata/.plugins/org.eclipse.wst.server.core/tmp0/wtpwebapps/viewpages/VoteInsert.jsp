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
<title>vote.jsp</title>
</head>
<body>

<!-- 동아리 - 회의 - 투표등록 -->

<!-- nav 영역 -->
<%-- <div>
	<c:import url="nav.jsp"></c:import>
</div> --%>

<div>

	<!-- 메뉴 영역 -->
	<%-- <div>
		<c:import url="beeAdminPageSideTab.jsp"></c:import>
	</div> --%>

	<div id="content" style="margin-left: 30vh;">
		<h1>회의</h1>
		<br>
		<form action="">	
			
			<div>
				<select id="type">
					<option value="0">--선택--</option>
					<option value="1">모집</option>
					<option value="2">투표</option>
				</select> 
			</div>
			<div>
				제목 <input type="text" id="title">
			</div>
			<div>
				대상자<input type="button" value="선택">
			</div>
			<div>
				안건 <br>
				<textarea rows="10" cols="60"></textarea>
			</div>
		
			<div>
				<input type="button" value="등록하기">
			</div>
	    </form>
	</div>

</div>


</body>
</html>