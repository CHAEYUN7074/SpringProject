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
	font-size: 16px;
}

.contents {
	margin: 2vh 30vh 0vh 35vh;
}

.contents_top {
	margin-top: 10vh;
	margin-bottom: 10vh;
	display: flex;
	font-size: 16px;
	font-weight: bold;
}

.box {
	width: 150px;
	height: 150px;
	border-radius: 70%;
	overflow: hidden;
}

.score>p, .IMade>p {
	font-size: 16px;
	font-weight: bold;
}

.detail_info {
	display: flex;
	margin-bottom : 10vh;
}

.score {
	width: 45%;
	margin-right: 5%;
	padding: 5%;
	border: 1px solid lightgray;
	border-radius: 10%;
}

.IMade {
	padding: 5%;
	width: 45%;
	border: 1px solid lightgray;
	border-radius: 10%;
}

/* 생략 */
</style>
<body>
	<div>
		<c:import url="nav.jsp"></c:import>
		<c:import url="meetingmain.jsp"></c:import>
	</div>
	<div class="contents">


		<div class="contents_top">
			<div class="box" style="background: #BDBDBD;">
				<img class="profile" src="/images/이미지.JPG">
			</div>

			<div>
				<ul>
					<li>오늘도챗바퀴(동아리명)</li>
					<li>차가운감자(닉네임)</li>
					<li>나이</li>
					<li>지역</li>
				</ul>
			</div>
		</div>

		<div class="detail_info">
			<div class="score">
				<p>받은 개인 평가</p>
				<ul>
					<li>시간약속을 잘 지켜요</li>
					<li>친절하고 매너가 좋아요</li>
					<li>다른 회원의 말에 귀 기울여줘요</li>
					<li>회원들을 재밌게 해줘요</li>
					<li>동아리 분위기를 잘 띄워줘요</li>
				</ul>
				<ul>
					<li>동아리 활동을 지연 시켜요</li>
					<li>불친절하고 매너가 좋지 못해요</li>
					<li>소극적으로 참여해요</li>
					<li>다른 회원을 무시해요</li>
					<li>금전적인 문제를 일으켜요</li>
					<li>타인에게 지나친 관심을 표현해요</li>
				</ul>
			</div>
			<div class="IMade">
				<p>개설한 동아리</p>
			</div>
		</div>
	</div>
	
</body>
</html>