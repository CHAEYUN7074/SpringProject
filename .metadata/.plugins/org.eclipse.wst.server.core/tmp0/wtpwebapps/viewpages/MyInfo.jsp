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
<title>MyInfo.jsp</title>
<style>
.container {
	display: flex;
}
.box {
    width: 150px;
    height: 150px; 
    border-radius: 70%;
    overflow: hidden;
}
.profile {
    width: 100%;
    height: 100%;
    object-fit: cover;
}
</style>
</head>
<body>
	<!-- 
- MyInfo.jsp
- 마이페이지 - 회원정보
 -->

	<div>
		<!-- 네브 영역 -->
		<div>
			<c:import url="nav.jsp"></c:import>
		</div>


		<!-- 메뉴 영역 -->
		<div>
			<!-- 마이페이지 사이드탭 아직 미완성 -->
			<%-- <c:import url="mainSideTab.jsp"></c:import> --%>
		</div>


		<!-- 콘텐츠 영역 -->
		<div id="content" style="margin-left: 30vh;">
			<h1>[ 내정보 ]</h1>
			<hr>

			<div class="container">
				<div class="box" style="background: #BDBDBD;">
					프로필 사진 영역<img class="profile" src="">
				</div>
				<div>
					<p>초록달팽이님, 반가워요!</p>
					<form action="">
						<input type="button" value="회원정보 수정" />
					</form>
				</div>
			</div>

			<div>
				<p>내 지역</p>
				<input type="text" vlaue="내지역1"> <input type="text"
					vlaue="내지역2"> <input type="text" vlaue="내지역3">
			</div>

			<div>
				<p>관심카테고리</p>
				<input type="text" vlaue="내카테고리1"> <input type="text"
					vlaue="내카테고리2"> <input type="text" vlaue="내카테고리3">
				<input type="text" vlaue="내카테고리4"> <input type="text"
					vlaue="내카테고리5">
			</div>

		</div>
		<!-- 풋터영역 -->
		<div>
			<c:import url="footer.jsp"></c:import>
		</div>
	</div>




</body>
</html>