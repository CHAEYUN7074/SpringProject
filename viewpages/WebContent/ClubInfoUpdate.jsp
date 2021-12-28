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
<title>ClubInfoUpdate.jsp</title>
</head>
<body>

<!-- 동아리장 페이지 - 동아리 페이지- 동아리 수정-->

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
	<div>
		<h1>동아리 정보 수정</h1>
		<hr>
	</div>		
	<form action="">
		<div id="content" style="margin-left: 30vh;">
			<div>
				동아리명 <input type="text" class="txt">
			</div>
			<div>
				동아리장 <input type="text" class="txt" disabled="disabled" value="동아리장이름">
				개설일 <input type="text" class="txt" disabled="disabled" value="개설날짜">
			</div>
			<div>
				가입 최대 인원 <input type="text" class="txt"><br>
				<span id="msg">* 가입 최대 인원은 200으로 제한되어 있습니다.</span>
			</div>
			<div>
				소개 및 내용
				<br> 
				<textarea rows="10" cols="60"></textarea>
			</div>
			<div>
				동아리 가입 시 제한 조건(옵션)<br>
				<div>
					지역
					<select id="region">
						<option value="0">--선택--</option>
						<option value="1">서울</option>
						<option value="2">경기</option>
					</select>
				</div>	
				<div>				
					연령
					최소 <input type="text" class="txt"> &nbsp;최대 <input type="text" class="txt"><br>
					<span id="msg">* 동아리장이 성인이라면 10대만 모집하는 것은 불가능합니다.</span><br>
				</div>
			</div>
			
			<div>
			<input type="button" value="수정">
			<input type="button" value="취소">
			</div>
			
		</div>
	</form>
	


</div>

</body>
</html>