<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<title>B.CLE</title>

<style>
body {
	margin: 0;
	padding: 0;
}

header {
	letter-spacing: -1px;
	background: rgb(111, 108, 221);
	color: black;
	padding: 0%;
	margin: 0%;
	height: 10vh;
}

.info {
	background-color: orange;
	width: 70vh;
	height: 30vh;
}

.ProfileInfo {
	background-color: yellow;
	width: 70vh;
	height: 30vh;
	margin: 10vh 0vh 0vh 70vh;
}

.upper {
	display: flex;
	background-color: gray;
}

.subinfo {
	background-color: green;
	height : 70vh;
	overflow : scroll;
}

</style>
</head>

<body>




	<header> 헤더 </header>



	<div class=upper>
		<div class=info>.</div>
	</div>

	
	<nav>
		<div class="nav nav-tabs" id="nav-tab" role="tablist">
			<a class="nav-item nav-link active" id="nav-home-tab"
				data-toggle="tab" href="#nav-home" role="tab"
				aria-controls="nav-home" aria-selected="true">Home</a> <a
				class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab"
				href="#nav-profile" role="tab" aria-controls="nav-profile"
				aria-selected="false">Profile</a> <a class="nav-item nav-link"
				id="nav-contact-tab" data-toggle="tab" href="#nav-contact"
				role="tab" aria-controls="nav-contact" aria-selected="false">Contact</a>
		</div>
	</nav>

	<div class="subinfo">
	하단내용 입력
	</div>

</body>

</html>