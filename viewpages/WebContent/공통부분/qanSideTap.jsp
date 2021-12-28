<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mainSideTab.jsp</title>
<style type="text/css">

/*reset*/
* {margin: 0;padding: 0;}
body {margin: 0;}
h1, h2, h3, h4, h5, h6, p, ul, ol, li, dl, dt, dd {margin: 0; padding: 0;}
h1, h2, h3, h4, h5, h6 {font-weight: 700; }
a {color: inherit; text-decoration: inherit;}
img {vertical-align: middle;}
a img {border: none;}
li {list-style: none;}
address, em, i, ul {font-style: normal;}

/*layout*/
.mo {display: none;}
.en {font-family: 'Exo 2', sans-serif;}
body {font-family: 'Noto Sans KR', sans-serif; font-size: 14px;}
.wrap {margin: 0 auto; }

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
		<li><h1>고객센터</h1></li>
		<li><a href="#">자주하는 질문(FAQ)</a></li>
		<li><a href="#">비회원 문의</a></li>
	</ul>
</div>



<div class="cd1">
	<h1>큰 제목</h1>
	<h2>작은 제목</h2>
	<p>여기에 나중에 목록 불러오면 됨</p>


</div>

</body>
</html>