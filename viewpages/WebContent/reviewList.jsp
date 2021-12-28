
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

<style>
@import
	url('https://fonts.googleapis.com/css?family=Exo+2|Noto+Sans+KR&display=swap')
	;
	
.contents{
margin : 5vh 34vh 5vh 30vh;
}

.card{
margin-left : 5vh;
}


.row g-0{
margin-bottom : 2vh;
border: 1px;
}

.box{
margin : 5vh 30vh 3vh 77%;
}

#search{
margin : 0vh 30vh 0vh 60%;
}

</style>
</head>
<body>
	<c:import url="nav.jsp"></c:import>
	<c:import url="meetingmain.jsp"></c:import>
	
	<div class="box">
				<div>
			<form action="" name="categoryForm" method="post">
				<select name="categoryKey" class="selectField">
					<option value="notice">공지</option>
					<option value="talk">자유글</option>
					<option value="greeting">가입인사</option>
					<option value="review">정모후기</option>
					<option value="question">문의글</option>
				</select>
			</form>
		</div>
		

		</div>
					<div id="search">
				<form action="" name="searchForm" method="post">
					<select name="searchKey" class="selectField">
						<option value="subject">제목</option>
						<option value="name">작성자</option>
					</select> <input type="text" name="searchValue" class="textField"> <input
						type="button" value="검색" class="btn2" onclick="sendIt()">
				</form>
			</div>
	
	<div class="contents">

		<div class="card mb-3">
			<div class="row g-0">
				<div class="col-md-4">
					<img src="http://artinsight.co.kr/data/tmp/1806/8a7aa7b2cc1c8658726cc7a2df93418f_Kthlez4CFNiI72tb12Chqdw.jpg" class="img-fluid rounded-start" alt="...">
				</div>
				<div class="col-md-8">
					<div class="card-body">
						<h5 class="card-title">정모제목</h5>
						<p class="card-text">정모일 작성자</p>
						<p class="card-text">
							<small class="text-muted">Last updated 3 mins ago</small>
						</p>
					</div>
				</div>
			</div>
			<br></br>
			<br></br>
			<div class="row g-0">
				<div class="col-md-4">
					<img src="http://artinsight.co.kr/data/tmp/1806/8a7aa7b2cc1c8658726cc7a2df93418f_Kthlez4CFNiI72tb12Chqdw.jpg" class="img-fluid rounded-start" alt="...">
				</div>
				<div class="col-md-8">
					<div class="card-body">
						<h5 class="card-title">정모제목</h5>
						<p class="card-text">정모일 작성자</p>
						<p class="card-text">
							<small class="text-muted">Last updated 3 mins ago</small>
						</p>
					</div>
				</div>
			</div>
			<br></br>
			<br></br>
			<div class="row g-0">
				<div class="col-md-4">
					<img src="http://artinsight.co.kr/data/tmp/1806/8a7aa7b2cc1c8658726cc7a2df93418f_Kthlez4CFNiI72tb12Chqdw.jpg" class="img-fluid rounded-start" alt="...">
				</div>
				<div class="col-md-8">
					<div class="card-body">
						<h5 class="card-title">정모제목</h5>
						<p class="card-text">정모일 작성자</p>
						<p class="card-text">
							<small class="text-muted">Last updated 3 mins ago</small>
						</p>
					</div>
				</div>
			</div>
			
			
		</div>




		<div>
			<button class="btn btn-primary btn-sm" type="button" id="insertBoard"
				onclick="location.href='boardinsertform.action'">글 등록</button>
		</div>

	</div>
</body>
</html>