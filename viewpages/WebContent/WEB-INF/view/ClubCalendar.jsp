
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
<title>Insert title here</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- jQuery -->
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- <link rel="stylesheet" href="css/list.css"> -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
@import
	url('https://fonts.googleapis.com/css?family=Exo+2|Noto+Sans+KR&display=swap')
	;

body {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 14px;
}

.contents {
	margin: 5vh 34vh 5vh 30vh;
}

#calendar {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 14px;
	font-weight: bold;
	margin-top: 5vh;
}

#detail {
	width: 60%;
	height: 520px;
	text-align: left;
	margin: 3vh 30vh 10vh 35vh;
}

#detail p {
	font-weight: bold;
}

table {
	border: 1px;
}
/* 캘린더 추가 */
.elegant-calencar {
	max-width: 200vh;
	text-align: center;
	position: relative;
	overflow: hidden;
	border-radius: 5px;
	-webkit-box-shadow: 0px 19px 27px -20px rgb(0 0 0/ 16%);
	-moz-box-shadow: 0px 19px 27px -20px rgba(0, 0, 0, 0.16);
	box-shadow: 0px 19px 27px -20px rgb(0 0 0/ 16%);
}

.ftco-section {
	padding: 0em 0;
	margin-left: 45vh;
}

.calendar-wrap {
	width: 65%;
	height: 100%;
	background: #fff;
	padding: 40px 20px 20px 20px;
	margin-bottom: 10vh;
}

#accountSelect {
	margin: 10vh 0vh 10vh 40vh;
	display: flex;
}

.btn-warning{
margin-left : 5vh;
}
/* tr{
margin-bottom : 5vh;
} 적용안됨 */
</style>
</head>
<body>
	<c:import url="/nav.action"></c:import>
	<c:import url="meetingmain.jsp"></c:import>

	<div id="accountSelect">
		<div>
			<form action="" name="accountForm" method="post">
				<select name="accountKey" class="selectField"  
		            onchange="if(this.value) location.href=(this.value);">
		               <!-- value값 변경해야함.. -->
		               <option value="beecalendar.action" selected="selected">캘린더</option>
		               <option value="beecalendarlist.action" >리스트</option>
		            </select>
				<div></div>
			</form>
		</div>
		<!-- 동아리원에게만 보이는 버튼 -->
		<button type="button" class="btn btn-warning" 
		onclick="location.href='beeinsertform.action'">모임개설</button>
	</div>
	<!-- 달력 -->
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center"></div>
			<div class="row">
				<div class="col-md-12">
					<div class="elegant-calencar d-md-flex">
						<div class="calendar-wrap">
							<div class="w-100 button-wrap">
								<div
									class="pre-button d-flex align-items-center justify-content-center">
									<i class="fa fa-chevron-left"></i>
								</div>
								<div
									class="next-button d-flex align-items-center justify-content-center">
									<i class="fa fa-chevron-right"></i>
								</div>
							</div>
							<table id="calendar" table class="table table-bordered">
								<thead>
									<tr>
										<th>Sun</th>
										<th>Mon</th>
										<th>Tue</th>
										<th>Wed</th>
										<th>Thu</th>
										<th>Fri</th>
										<th>Sat</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>

									</tr>
									<tr>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- 달력 끝 -->



	<script src="js/jquery.min.js"></script>
	<script src="js/popper.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/c_main.js"></script>

</body>

</html>