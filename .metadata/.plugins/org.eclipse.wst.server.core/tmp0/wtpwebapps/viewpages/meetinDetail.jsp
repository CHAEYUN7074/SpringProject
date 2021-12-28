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
<link rel="stylesheet" href="css/font-awesome.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">


<link rel="stylesheet" type="text/css"
	href="semantic/dist/semantic.min.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"
	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	crossorigin="anonymous"></script>
<script src="semantic/dist/semantic.min.js"></script>




<style>
@import
	url('https://fonts.googleapis.com/css?family=Exo+2|Noto+Sans+KR&display=swap')
	;

body {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 14px;
}

.participate {
	margin: 2vh 30vh 0vh 30vh;
	display: flex;
}

.participate>h3  {
	margin-right: 5vh;
}

.enroll {
	margin-top: 2vh;
	margin-left: 45%;
	margin-right: auto;
}

/* 프로필 사진 관련 */
.profile_box {
	width: 10vh;
	height: 10vh;
	border-radius: 70%;
	overflow: hidden;
}

.profile {
	width: 100%;
	height: 100%;
	object-fit: cover;
}

.bottom {
	margin: 2vh 30vh 0vh 30vh;
	display: flex;
}

.bottom>.attendence_profile {
	margin-right: 3vh;
}

</style>
<body>
	<div>
		<c:import url="subHeader.jsp"></c:import>
		<c:import url="meetingmain.jsp"></c:import>
	</div>
	<br>
	<br>

	<form method="post">

		<div class="participate">
			<h3>참여자를 확인해보세요!</h3>
			<button type="button" class="btn btn-warning" id="submitButton">참여하기</button>
		</div>
		<div class="bottom">
			<div class="attendence_profile">
				<div class="profile_box" style="background: #BDBDBD;">
					<img class="profile" src="images/profile.png">
				</div>
				<p>닉네임</p>
			</div>

			<div class="attendence_profile">
				<div class="profile_box" style="background: #BDBDBD;">
					<img class="profile" src="images/profile.png">
				</div>
				<p>닉네임</p>
			</div>

			<div class="attendence_profile">
				<div class="profile_box" style="background: #BDBDBD;">
					<img class="profile" src="images/profile.png">
				</div>
				<p>닉네임</p>
			</div>


		</div>
	</form>

	<div class="enroll">
		<button type="button" class="btn btn-secondary">닫기</button>
	</div>


</body>
</html>