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
<title>ClubBeforeOpenedContents.jsp</title>
<style type="text/css">
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

.container {
	display: flex;
}
</style>
</head>
<body>
	<!-- 
ClubBeforeOpenedContents.jsp
- 메인화면(로그인 전) 페이지 2 -⑤ 회원 모집 동아리 상세페이지(내용)
- 개절예정 동아리(스탭프 지원(동의)받는중)
 -->
	<div class="wrap">
		<!-- 네브 영역 -->
		<div>
			<c:import url="nav.jsp"></c:import>
		</div>

		<!-- 콘텐츠 영역 -->
		<div id="content">
			<h1>[ 개설예정 동아리 ]</h1>
			<hr>
			<div>
				<p>모집마감 D-7</p>
			</div>

			<div>
				<form action="">
					<div>
						<p>
							동아리명<input type="text" value="입력된 동아리명" disabled="disabled">
						</p>
						<p>
							동아리장<input type="text" value="침착한포카칩" disabled="disabled">
							개설예정일<input type="text" value="2021/10/11" disabled="disabled">
						</p>
						<div>
							카테고리 <input type="text" value="대분류" disabled="disabled">
							<input type="text" value="소분류" disabled="disabled">
						</div>
						<p>
							가입 최대인원 설정<input type="text" value="30" disabled="disabled">
						</p>
						<div>
							<p>내용</p>
							<textarea rows="10" cols="70">
							</textarea>
						</div>

						<div>
							<h5>제한조건(옵션)</h5>
							<!-- 지역 옵션 대분류만 줄꺼? -->
							<div>
								지역&nbsp; <input type="text" value="지역대분류" disabled="disabled">
								<input type="text" value="지역소분류" disabled="disabled">
							</div>
							<div>
								연령&nbsp; <input type="text" value="20" disabled="disabled">~<input
									type="text" value="30" disabled="disabled">
							</div>

							<div>
								스텝<input type="button" value="지원하기">
								<div class="container">
									<div class="box" style="background: #BDBDBD;">
										<img class="profile" src="">
									</div>
									<div class="box" style="background: #BDBDBD;">
										<img class="profile" src="">
									</div>
									<div class="box" style="background: #BDBDBD;">
										<img class="profile" src="">
									</div>
								</div>
							</div>

							<div>
								총무<input type="button" value="지원하기">
								<div class="container">
									<div class="box" style="background: #BDBDBD;">
										<img class="profile" src="">
									</div>
									<div class="box" style="background: #BDBDBD;">
										<img class="profile" src="">
									</div>
									<div class="box" style="background: #BDBDBD;">
										<img class="profile" src="">
									</div>
								</div>
							</div>

							<div>
								<input type="button" value="목록">
							</div>

						</div>


					</div>
				</form>
			</div>
		</div>
		<!-- 풋터영역 -->
		<div>
			<c:import url="footer2.jsp"></c:import>
		</div>

	</div>




</body>
</html>