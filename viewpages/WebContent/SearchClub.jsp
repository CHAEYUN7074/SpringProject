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
<title>SearchClub.jsp</title>
<!-- <style type="text/css">
.contents
{
	margin-top: 150px;
	margin-left: 10%;
	margin-right: 10%;
	width: 80%;
}

.clubpic {
	width: 300px;
	object-fit: cover;
	display: inline-block;
}

.club_lists {
	margin-top: 50px;
}

.club_info {
	display: inline-block;
	vertical-align: middle;
}
</style> -->

<!-- <link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
	 -->
	
</head>
<body>
<!-- 
메인화면(로그인 전) 페이지 2 -⑧ 동아리검색

 -->

<!-- nav 영역 -->
<div>
	<c:import url="nav.jsp"></c:import>
</div>

<!-- 콘텐츠영역 -->
<div>

	<div class="contents">
	
		<div>
			<form action="">
				<select>
					<option value="">-- 분류 --</option>
					<option value="전체">전체 동아리</option>
					<option value="개설된동아리">개설된 동아리</option>
					<option value="개설예정동아리">개설 예정 동아리</option>
				</select> 

				<input type="text" placeholder="동아리제목 검색"> 
				<input type="button" value="검색">
			</form>
		</div>
	
		<div>
			<div class="club_lists">
				<div style="display: inline-block;">
					<a href=""> <!-- <img src="images/pic1.jpg" class="clubpic"> --> <br>

					</a>
				</div>
				<div class="club_info">
					<span>2021-06-08</span><br> <span>💕 동아리 타이틀 💕</span><br>
					<span>🌏 서울 강남구</span><br> <span>54명 가입중!</span><br>
				</div>
			</div>
			<div class="club_lists">
				<div style="display: inline-block;">
					<a href=""> <!-- <img src="images/pic1.jpg" class="clubpic"> --> <br>

					</a>
				</div>
				<div class="club_info">
					<span>2021-01-01</span><br> <span>💕 동아리 타이틀 💕</span><br>
					<span>🌏 서울 강서구</span><br> <span>125명 가입중!</span><br>
				</div>
			</div>
			<div class="club_lists">
				<div style="display: inline-block;">
					<a href=""><!--  <img src="images/pic1.jpg" class="clubpic"> --> <br>

					</a>
				</div>
				<div class="club_info">
					<span>2021-06-08</span><br> <span>💕 동아리 타이틀 💕</span><br>
					<span>🌏 서울 강남구</span><br> <span>54명 가입중!</span><br>
				</div>
			</div>
			<div class="club_lists">
				<div style="display: inline-block;">
					<a href=""> <!-- <img src="images/pic1.jpg" class="clubpic"> --> <br>

					</a>
				</div>
				<div class="club_info">
					<span>2021-06-08</span><br> <span>💕 동아리 타이틀 💕</span><br>
					<span>🌏 서울 강남구</span><br> <span>54명 가입중!</span><br>
				</div>
			</div>
			<div class="club_lists">
				<div style="display: inline-block;">
					<a href=""> <!-- <img src="images/pic1.jpg" class="clubpic"> --> <br>

					</a>
				</div>
				<div class="club_info">
					<span>2021-06-08</span><br> <span>💕 동아리 타이틀 💕</span><br>
					<span>🌏 서울 강남구</span><br> <span>54명 가입중!</span><br>
				</div>
			</div>
			<div class="club_lists">
				<div style="display: inline-block;">
					<a href=""> <!-- <img src="images/pic1.jpg" class="clubpic">  --><br>

					</a>
				</div>
				<div class="club_info">
					<span>2021-06-08</span><br> <span>💕 동아리 타이틀 💕</span><br>
					<span>🌏 서울 강남구</span><br> <span>54명 가입중!</span><br>
				</div>
			</div>
		</div>
	
	
		<div id="footer">
			<p>1 Prev 21 22 23 24 25 26 27 28 29 30 Next 54</p>	
		</div>
	
	 	<!-- 풋터영역 -->
	     <div>
	      	<c:import url="footer.jsp"></c:import>
	     </div>
	
	</div>
	
	
	
</body>
</html>