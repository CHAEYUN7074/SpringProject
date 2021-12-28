<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>B:CLE</title>
<!-- <link rel="stylesheet" href="css/main.css"> -->
<link rel="stylesheet" href="css/font-awesome.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<style>
@import
	url('https://fonts.googleapis.com/css?family=Exo+2|Noto+Sans+KR&display=swap')
	;

body {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 14px;
}
/* .info {
	width: 100vh;
	height: 30vh;
	padding : 5vh;
	
}
.ProfileInfo {
	width: 70vh;
	height: 30vh;
	margin: 10vh 0vh 0vh 70vh;
} */
.info {
	height: 80%;
	width: 70%;
	padding: 5vh;
}

.ProfileInfo {
	padding: 5vh;
	width: 30%;
	background-color: #D9D9D9;
}

.upper {
	margin: 10vh 30vh 10vh 30vh;
	position: fix;
	height: 60%;
	display: flex;
}

.nav {
	margin: 0vh 30vh 0vh 30vh;
	color: #105b63;
	font-size: 18px;
}

.nav-link {
	display: block;
	padding: 0.5rem 3rem;
	color: #0d6efd;
	text-decoration: none;
	transition: color .15s ease-in-out, background-color .15s ease-in-out,
		border-color .15s ease-in-out;
}

.nav-tabs .nav-link .tab_content {
	margin-bottom: -1px;
	background: 0 0;
	border: 1px solid transparent;
	border-top-left-radius: .25rem;
	border-top-right-radius: .25rem;
	color: #105b63;
}

ul {
	list-style: none;
}

.info ul li {
	margin: 0vh 0vh 2vh 0vh;
	border-bottom: 1px dotted #D9D9D9;
}

.col-lg-4 {
	margin: 5vh 10vh 0vh 10vh;
}

.col-lg-4 p {
	margin-left: 4vh;
}
#blink
{text-decoration: none; color: inherit;}

input[type="radio"] {
	display: none;
}

input[type="radio"]+label {
	display: inline-block;
	padding: 20px;
	background: white;
	color: #0B5FA5;
	font-size: 14pt;
	cursor: pointer;
	border: 1px solid #0B5FA5;
	border-top-left-radius: .25rem;
	border-top-right-radius: .25rem;
}

input[type="radio"]+label+a {
	display: inline-block;
	padding: 20px;
	background: white;
	color: #0B5FA5;
	font-size: 14pt;
	cursor: pointer;
	border: 1px solid #0B5FA5;
	border-top-left-radius: .25rem;
	border-top-right-radius: .25rem;
}

input[type="radio"]:checked+label+a
{
	background: #0B5FA5;
	color: white;
	border: 1px solid #0B5FA5;
	border-top-left-radius: .25rem;
	border-top-right-radius: .25rem;
}

input[type="radio"]:checked+label {
	background: #0B5FA5;
	color: white;
	border: 1px solid #0B5FA5;
	border-top-left-radius: .25rem;
	border-top-right-radius: .25rem;
}

.conbox {
	width: 100%;
	height: 100%;
	margin: 0 auto;
	display: none;
}

input[id="tab01"]:checked ~ .con1 {
	display: block;
}

input[id="tab02"]:checked ~ .con2 {
	display: block;
}

input[id="tab03"]:checked ~ .con3 {
	display: block;
}

input[id="tab04"]:checked ~ .con4 {
	display: block;
}

input[id="tab05"]:checked ~ .con5 {
	display: block;
}

input[id="tab06"]:checked ~ .con6 {
	display: block;
}

input[id="tab07"]:checked ~ .con7 {
	display: block;
}

}
label {
	border: 1px solid transparent;
	border-top-left-radius: .25rem;
	border-top-right-radius: .25rem;
}
</style>
<script type="text/javascript"
	src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="<%=cp%>/js/jquery-ui.js"></script>
<script type="text/javascript" src="<%=cp%>/js/ajax.js"></script>

<script type="text/javascript">
	$(document).ready(function() // 페이지가 로드됐을 때 제이쿼리 실행?
	{

		//$('#calendar').load('/beecalendarlist.action');
		if($("#b").val() == 'b')
		{
			$("#tab03").attr('checked', 'checked');
		}

	});
</script>

</head>

<body>

	<div class="upper">
		<div class=info>
			<ul>
				<li>카테고리: ${clubInfo.l_cat } > ${clubInfo.s_cat }</li>
				<li>타이틀: ${clubInfo.title }</li>
				<li>개설일: ${fn:substring(clubInfo.bdate, 0, 10)}</li>
				<li>인원수: ${cntMem }</li>
				<li>지역: ${clubInfo.city } - ${clubInfo.local }</li>


			</ul>
		</div>
		<div class="ProfileInfo">
					<img alt="동아리 대표사진" src="${clubInfo.url }" style="width: 100%;">
			<!-- <div class="row">
				<div class="col-lg-4">
					<svg class="bd-placeholder-img rounded-circle" width="120"
						height="120" xmlns="http://www.w3.org/2000/svg" role="img"
						aria-label="Placeholder: 140x140"
						preserveAspectRatio="xMidYMid slice" focusable="false">
						<title>Placeholder</title><rect width="100%" height="100%"
							fill="#777" />
						<text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>

				</div>

			</div> -->
					<!-- <p style="font-size: 20px;">닉네임</p> -->
		</div>
	</div>


	<div class="tab_content">

		<input type="radio" name="tabmenu" id="tab01" checked> <label
			for="tab01" style="margin-left: 30vh;">기본정보</label> 
			
			<input
			type="radio" name="tabmenu" id="tab02"> <label for="tab02">모임</label>
		
		<input type="radio" name="tabmenu" id="tab03"> <label
			for="tab03"><a id="blink" href="beenoticelist.action?cid=${cid }&b=b">게시판<%-- ${cid }&${b} --%></a></label> 
		<input type="hidden" id="b" name="b" value="${b }">
			
			<input type="radio" name="tabmenu" id="tab04">
		<label for="tab04">회계</label> <input type="radio" name="tabmenu"
			id="tab05"> <label for="tab05">사진첩</label> <input
			type="radio" name="tabmenu" id="tab06"> <label for="tab06">회의</label>
		<input type="radio" name="tabmenu" id="tab07"> <label
			for="tab07">결산</label>

		<div class="conbox con1">
			<c:import url="/clubbasicinfo.action?cid=${clubInfo.cid }"></c:import>
		</div>
		<div class="conbox con2">
			<c:import url="/beecalendarlist.action?cid=${clubInfo.cid }"></c:import>
		</div>
		<div class="conbox con3">
			<%-- <c:import url=""></c:import> --%>
		</div>
	</div>

	<!-- <script type="text/javascript">
	$('#myTab a').on('click', function (e) {
		  e.preventDefault()
		  $(this).tab('show')
		})
	</script>  -->


</body>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>


</html>