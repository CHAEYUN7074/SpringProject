<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mainSideTab.jsp</title>
<style type="text/css">


.sidebardiv 
{
	list-style-type: none;
	padding: 0px;
	margin: 0px;
	width: 30vh;
	background: #FFFAD5;
	height: 100%;
	overflow: auto;
	position: fixed;
	text-align: center;
}
ul.subSidebar
{
	font-size: small;
}
ul.sidebar, ul.subSidebar
{
	list-style: none;
	padding: 0px;
}
.sidebar li a 
{
	text-decoration: none;
	padding: 10px;
	display: block;
	color: #000;
	font-weight: bold;
}

.sidebar li a:hover 
{
	background: #ffd34e;
	color: #fff;
}

/* 나중에 여기에 내용 적을 때 적용 css */
.cd1 
{
	margin-left: 30vh;
}
</style>

</head>
<body>

<div class="sidebardiv">
	<ul class="sidebar">
		<li><h1>대표 게시판</h1></li>
		<li><a href="#">자유글</a></li>
		<li><a href="#">모임홍보</a></li>
		<li><a href="#">카테고리</a>
			<ul class="subSidebar">
				<li><a href="#">1. 여행</a></li>
				<li><a href="#">2. 요리/베이킹</a></li>
				<li><a href="#">3. 건강/운동</a></li>
				<li><a href="#">4. 공연/축제</a></li>
				<li><a href="#">5. 음악</a></li>
				<li><a href="#">6. 라이프</a></li>
				<li><a href="#">7. 교육/스터디</a></li>
				<li><a href="#">8. 창작/디자인</a></li>
				<li><a href="#">9. 사진/영상</a></li>
				<li><a href="#">10. 게임/오락</a></li>
				<li><a href="#">11. 자유주제</a></li>
			</ul>
		</li>
	</ul>
</div>

<!-- 이부트스트랩을 다하고 발견했는데....드롭다운형식으로 사이드바 설정할지...
	 그냥 서브메뉴 다 보여지게할지몰라서 우선..둡니당..
<ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
	<li><a class="dropdown-item" href="#">Action</a></li>
	<li><a class="dropdown-item" href="#">Another action</a></li>
	<li><hr class="dropdown-divider"></li>
	<li><a class="dropdown-item" href="#">Something else here</a></li>
</ul>
-->

<div class="cd1">
	<h1>큰 제목</h1>
	<h2>작은 제목</h2>
	<p>여기에 나중에 목록 불러오면 됨</p>


</div>

</body>
</html>