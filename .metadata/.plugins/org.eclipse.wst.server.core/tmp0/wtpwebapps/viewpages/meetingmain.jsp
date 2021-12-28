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
body {font-family: 'Noto Sans KR', sans-serif; font-size: 14px;}
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
	padding : 5vh;
}
.ProfileInfo {
padding : 5vh;
width: 30%;
background-color : #D9D9D9;
}
.upper {
	margin: 10vh 30vh 0vh 30vh;
	position: fix;
	height: 60%;
	display: flex;
}
.nav{
margin:0vh 30vh 0vh 30vh;
color : #105b63;
font-size : 18px;
}
.nav-link {
    display: block;
    padding: 0.5rem 3rem;
    color: #0d6efd;
    text-decoration: none;
    transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out;
}
.nav-tabs .nav-link {
    margin-bottom: -1px;
    background: 0 0;
    border: 1px solid transparent;
    border-top-left-radius: .25rem;
    border-top-right-radius: .25rem;
    color : #105b63;
}
ul{
   list-style:none;
   }
   
.info ul li{
margin : 0vh 0vh 2vh 0vh;
border-bottom : 1px dotted #D9D9D9;
}
.col-lg-4{
margin : 5vh 10vh 0vh 10vh;
}
.col-lg-4 p{
margin-left : 4vh;
}
</style>
</head>

<body>

	<div class="upper">
		<div class=info>
		<ul>
		<li>카테고리 대분류>소분류</li>
				<li>동아리 타이틀</li>
						<li>개설일</li>
								<li>인원수</li>
										<li>지역</li>
		</ul>
		</div>
		<div class="ProfileInfo">
		<div class="row">
			<div class="col-lg-4">
			  <svg class="bd-placeholder-img rounded-circle" width="120" height="120" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>
	  
			  <p style= "font-size : 20px;">닉네임</p>
			</div>
	
		</div>
		</div>
	</div>

	
	<nav>
		<div class="nav nav-tabs" id="nav-tab" role="tablist">
			<a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab"
				aria-controls="nav-home" aria-selected="true">기본정보</a> 
				<a class="nav-item nav-link" 
				id="nav-profile-tab" data-toggle="tab"
				href="beecalendarlist.action" role="tab" aria-controls="nav-profile"
				aria-selected="false">캘린더</a> 
				<a class="nav-item nav-link"
				id="nav-contact-tab" data-toggle="tab" href="#nav-contact"
				role="tab" aria-controls="nav-contact" aria-selected="false">게시판</a>
								<a class="nav-item nav-link"
				id="nav-contact-tab" data-toggle="tab" href="#nav-contact"
				role="tab" aria-controls="nav-contact" aria-selected="false">회계</a>
								<a class="nav-item nav-link"
				id="nav-contact-tab" data-toggle="tab" href="#nav-contact"
				role="tab" aria-controls="nav-contact" aria-selected="false">사진첩</a>
								<a class="nav-item nav-link"
				id="nav-contact-tab" data-toggle="tab" href="#nav-contact"
				role="tab" aria-controls="nav-contact" aria-selected="false">회의</a>
								<a class="nav-item nav-link"
				id="nav-contact-tab" data-toggle="tab" href="#nav-contact"
				role="tab" aria-controls="nav-contact" aria-selected="false">결산</a>
		</div>
	</nav>
	<script type="text/javascript">
	$('#myTab a').on('click', function (e) {
		  e.preventDefault()
		  $(this).tab('show')
		})
	</script>


	
</body>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


</html>