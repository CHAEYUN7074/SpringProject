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
<title>beeAdminWaiting.jsp</title>
<style type="text/css">


.circle
{
	width: 80px;
	height: 80px;
	border-radius:50%;
	background:orange;
	margin : 10%;
}

.table
{
   border-collapse: collapse;
   width: 100%
}


.table th, .table td
{
	border: 1px solid gray;
	border-left: 0px;
	border-right: 0px;
	
	padding: 3px;
	line-height: 150%;
	text-align: center;
}

.table th
{
	font-weight: bold;
	background-color: #FFD34E;
}

.table td
{
	font-size: 12pt;
	
}
.btn
{
	cursor: pointer;
	font-family: 맑은 고딕;
	font-weight: bold;
}

.btn:hover
{
	color: orange;
}

</style>

</head>
<body>

<!--  
	beeAdminWaiting.jsp
	- 동아리 관리자 페이지- 회원관리 - 가입대기 목록 리스트
-->
<div class="wrap">

	<div id="content">
	     	<div>
	         <h1>가입대기 목록</h1>
			</div>
			
			
			<div class="boxsearch">
							
				<div class="box">
					<div>
						<form action="" method="post">
							<table class="table">
								<tr>
									<th>신청일</th>
									<th>프로필 사진</th>
									<th>
										나이
									</th>
									<th>
										성별
									</th>
									<th>
										지역
									</th>
									<th colspan="2"></th>
								</tr>
								
								<tr>
									<td>12/12</td>
									<td>
										<div class="profile">
											<div class="circle">
												<img alt="프로필이미지" src="">
											</div>
											
											<div>
												닉네임
											</div>
										</div>
									</td>
									<td>30대</td>
									<td>여자</td>
									<td>서울</td>
									<td><input type="button" class="btn updateBtn" value="수락"></td>
									<td><input type="button" class="btn deleteBtn" value="거절"></td>
								</tr>
								
								<tr>
									<td>12/12</td>
									<td>
										<div class="profile">
											<div class="circle">
												<img alt="프로필이미지" src="">
											</div>
											
											<div>
												닉네임
											</div>
										</div>
									</td>
									<td>20대</td>
									<td>남자</td>
									<td>경기</td>
									<td><input type="button" class="btn" value="수락"></td>
									<td><input type="button" class="btn" value="거절"></td>
								</tr>
								
								
								
							</table>
						</form>
					</div>
				</div>
				
	      	</div>
	</div>

	<!-- 푸터 영역 -->
	<div>
		<c:import url="footer2.jsp"></c:import>	
	</div>

</div>
</body>
</html>