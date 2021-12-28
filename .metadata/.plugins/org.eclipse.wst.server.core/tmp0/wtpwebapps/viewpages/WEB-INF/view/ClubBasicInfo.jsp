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

</head>
<body>
	<div class="contents_top">
		<p>상세설명</p>
		<br> 
		<span style="font-weight: lighter;">${clubInfo.content }</span><br> <br> <br> <br>
		<div class="enroll">
			<!-- <form>
				<button type="button" class="btn btn-secondary">가입하기</button>
			</form> -->
		</div>
		<br> <br>
		<p>전체 회원 프로필(${cntMem }명)</p>
	</div>



	<div class="contents container">
		<c:forEach var="cml" items="${clubmemlist }">
			<div class="profile" style="">
				<!-- <div class="box" style="background: lightgray;">
				</div> -->
					<img style="border-radius: 10px; width: 100px; " class="profile" src="${cml.url }">
				<p style="/* text-align: center; */">${cml.nickname }</p>
			</div>
		</c:forEach>


		<!-- <div class="profile">
			<div class="box" style="background: lightgray;">
				<img class="profile" src="/images/이미지.JPG">
			</div>
			<p>닉네임</p>
		</div>

		<div class="profile">
			<div class="box" style="background: lightgray;">
				<img class="profile" src="/images/이미지.JPG">
			</div>
			<p>닉네임</p>
		</div>

		<div class="profile">
			<div class="box" style="background: lightgray;">
				<img class="profile" src="/images/이미지.JPG">
			</div>
			<p>닉네임</p>
		</div>
	</div>

	<div class="contents">

		<div class="profile">
			<div class="box" style="background: lightgray;">
				<img class="profile" src="/images/이미지.JPG">
			</div>
			<p>닉네임</p>
		</div>

		<div class="profile">
			<div class="box" style="background: lightgray;">
				<img class="profile" src="/images/이미지.JPG">
			</div>
			<p>닉네임</p>
		</div>

		<div class="profile">
			<div class="box" style="background: lightgray;">
				<img class="profile" src="/images/이미지.JPG">
			</div>
			<p>닉네임</p>
		</div>

		<div class="profile">
			<div class="box" style="background: lightgray;">
				<img class="profile" src="/images/이미지.JPG">
			</div>
			<p>닉네임</p>
		</div> -->
	</div>
</body>
</html>