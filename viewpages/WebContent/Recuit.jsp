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
<title>Recuit.jsp</title>
</head>
<body>

<!-- 동아리 - 회의 - 모집 등록창 -->

<!-- nav 영역 -->
<%-- <div>
	<c:import url="nav.jsp"></c:import>
</div> --%>

<div>
	<!-- 메뉴 영역 -->
	<%-- <div>
		<c:import url="beeAdminPageSideTab.jsp"></c:import>
	</div> --%>
	
	<!-- 콘텐츠 영역 -->
	<div id="content" style="margin-left: 30vh;">
		<h1>회의</h1>
		<br>
		<form action="">
			
		
			<div>
				<select id="type">
					<!-- <option value="0">--선택--</option> -->
					<option value="1" selected="selected">모집</option>
					<option value="2">투표</option>
				</select>
			</div>
			<div>
			제목<input type="text" id="title">
			</div>
			<div>
			모집 직위
			<select id="position">
				<!-- <option value="0">--선택--</option> -->
				<option value="1" selected="selected">스태프</option>
				<option value="2">총무</option>
				<option value="3">동아리장</option>
			</select>
			</div>
			<div>
			모집 인원 <input type="text" id="num">
			</div>
			<div>
			모집 기준
			<br> 
			<textarea rows="10" cols="60"></textarea>
			</div>
		
			<div>
				<button class="btn">등록하기</button>
			</div>
		</form>
	</div>
	<%-- <!-- 풋터영역 -->
    <div>
      	<c:import url="footer2.jsp"></c:import>
    </div> --%>
	
</div>

</body>
</html>