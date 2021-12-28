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
<title>beeAdminMemberList.jsp</title>
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
	beeAdminMemberList.jsp
	- 동아리 관리자 페이지- 회원관리 - 회원관리 - 동아리원 목록
-->
<div class="wrap">

	<div id="content">
	     	<div>
	         <h1>동아리원 목록</h1>
			</div>
			
			<div class="boxsearch">
							
				<div id="search">
					<form action="" name="searchForm" method="post">
						<input type="text" name="searchValue" class="textField"> <input
								type="button" value="검색" class="btn2" onclick="sendIt()">
					</form>
				</div>
				
				
				<div class="box">
					<div>
						<form action="" method="post">
							<table class="table">
								<tr>
									<th>프로필 사진</th>
									<th>
										<select name="adminMemberList"  class="selectField">
											<option value="all" selected="selected">전체</option>
											<option value="leader">동아리장</option>
											<option value="manager">총무</option>
											<option value="staff">스태프</option>
											<option value="member">동아리원</option>
										</select>
									</th>
									<th>
										<select name="adminMemberList"  class="selectField">
											<option value="asc" selected="selected">정모참여 오름차순</option>
											<option value="desc">정모참여 내림차순</option>
										</select>
									</th>
									<th>
										<select name="adminMemberList"  class="selectField">
											<option value="asc" selected="selected">반짝모임참여 오름차순</option>
											<option value="desc">반짝모임참여 내림차순</option>
										</select>
									</th>
									<th>
										<select name="adminMemberList"  class="selectField">
											<option value="asc" selected="selected">게시글 오름차순</option>
											<option value="desc">게시글 내림차순</option>
										</select>
									</th>
									<th>
										<select name="adminMemberList"  class="selectField">
											<option value="asc" selected="selected">댓글 오름차순</option>
											<option value="desc">댓글 내림차순</option>
										</select>
									</th>
									<th>
										<select name="adminMemberList"  class="selectField">
											<option value="asc" selected="selected">신고 오름차순</option>
											<option value="desc">신고 내림차순</option>
										</select>
									</th>
									<th colspan="2"></th>
								</tr>
								
								<tr>
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
									<td>동아리장</td>
									<td>10</td>
									<td>20</td>
									<td>5</td>
									<td>15</td>
									<td>1</td>
									<td><input type="button" class="btn" value="강등"></td>
									<td><input type="button" class="btn" value="강퇴"></td>
								</tr>
								
								<tr>
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
									<td>동아리장</td>
									<td>10</td>
									<td>20</td>
									<td>5</td>
									<td>15</td>
									<td>1</td>
									<td><input type="button" class="btn" value="강등"></td>
									<td><input type="button" class="btn" value="강퇴"></td>
								</tr>
								
								<tr>
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
									<td>동아리장</td>
									<td>10</td>
									<td>20</td>
									<td>5</td>
									<td>15</td>
									<td>1</td>
									<td><input type="button" class="btn" value="강등"></td>
									<td><input type="button" class="btn" value="강퇴"></td>
								</tr>
								
								<tr>
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
									<td>동아리장</td>
									<td>10</td>
									<td>20</td>
									<td>5</td>
									<td>15</td>
									<td>1</td>
									<td><input type="button" class="btn" value="강등"></td>
									<td><input type="button" class="btn" value="강퇴"></td>
								</tr>
								
								<tr>
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
									<td>동아리장</td>
									<td>10</td>
									<td>20</td>
									<td>5</td>
									<td>15</td>
									<td>1</td>
									<td><input type="button" class="btn" value="강등"></td>
									<td><input type="button" class="btn" value="강퇴"></td>
								</tr>
								
								<tr>
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
									<td>동아리장</td>
									<td>10</td>
									<td>20</td>
									<td>5</td>
									<td>15</td>
									<td>1</td>
									<td><input type="button" class="btn" value="강등"></td>
									<td><input type="button" class="btn" value="강퇴"></td>
								</tr>
								
								<tr>
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
									<td>동아리장</td>
									<td>10</td>
									<td>20</td>
									<td>5</td>
									<td>15</td>
									<td>1</td>
									<td><input type="button" class="btn" value="강등"></td>
									<td><input type="button" class="btn" value="강퇴"></td>
								</tr>
								
								<tr>
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
									<td>동아리장</td>
									<td>10</td>
									<td>20</td>
									<td>5</td>
									<td>15</td>
									<td>1</td>
									<td><input type="button" class="btn" value="강등"></td>
									<td><input type="button" class="btn" value="강퇴"></td>
								</tr>
								
								<tr>
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
									<td>동아리장</td>
									<td>10</td>
									<td>20</td>
									<td>5</td>
									<td>15</td>
									<td>1</td>
									<td><input type="button" class="btn" value="강등"></td>
									<td><input type="button" class="btn" value="강퇴"></td>
								</tr>
								
								<tr>
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
									<td>동아리장</td>
									<td>10</td>
									<td>20</td>
									<td>5</td>
									<td>15</td>
									<td>1</td>
									<td><input type="button" class="btn" value="강등"></td>
									<td><input type="button" class="btn" value="강퇴"></td>
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