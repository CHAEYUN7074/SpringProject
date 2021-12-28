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
<title>MyClub.jsp</title>
<style>
  .container {
	display: flex;
}
</style>
</head>
<body>
<!-- 
MyClub.jsp
- 마이페이지 - 나의 동아리 보기
 -->

<div>
	<!-- 네브 영역 -->
	<div>
		<c:import url="nav.jsp"></c:import>
	</div>


	<!-- 메뉴 영역 -->
	<div>
		<!-- 마이페이지 사이드탭 아직 미완성 -->
		<%-- <c:import url="mainSideTab.jsp"></c:import> --%>
	</div>

<!-- ※ table,div 스타일 영역 구분 위해서 임의로 설정해둔거임. 무시하면 됨. ※-->
	<!-- 콘텐츠 영역 -->
	<div id="content" style="margin-left: 30vh;"><!-- 이 스타일만 유효 -->
		<h1>[ 나의 동아리 ]</h1>
		<hr>

		<div class="container">
			<div>
				<select>
					<option selected="selected">활동중</option>
					<option>활동 종료</option>
				</select>
				<p>- 전체</p>
				<p><a>- A동아리</a></p>
				<p><a>- B동아리</a></p>
			</div>
			<div>
				<table style="display:block; width:350px; height:500px;  border:1px #000000 solid;">
					달력영역
				</table>				
			</div>
		</div>
		 
		<div style="display:block; width:600px; height:250px;  border:1px blue solid;">
			<div>
				<select>
						<option selected="selected">전체</option>
						<option>운영하는 동아리</option>
						<option>운영했던 동아리</option>
						<option>가입한 동아리</option>
						<option>가입했던 동아리</option>
						<option>가입신청 동아리</option>
						<option>개설 동의 동아리</option>
				</select>
			</div>
			<div >
				<div class="container">
					<div>
						<a href="" >
							<img src="" alt="" style="display:block; width:150px; height:100px;  border:1px #000000 solid;"/>														
							<p>동아리제목1</p>
						</a>					
					</div>
					<div>
						<a href="">
							<img src="" alt="" style="display:block; width:150px; height:100px;  border:1px #000000 solid;"/>
							<p>동아리제목2</p>
						</a>					
					</div>
					<div>
						<a href="" >
							<img src="" alt="" style="display:block; width:150px; height:100px;  border:1px #000000 solid;"/>
							<p>동아리제목3</p>
						</a>					
					</div>
				</div>
				<a href="">더 보기</a>
			</div>
		</div>
		
		<div style="display:block; width:600px; height:350px;  border:1px green solid;">
			<p>내 동아리 결산</p>
			<div>
				<select>
						<option selected="selected">▼동아리선택</option>
						<option>내 동아리1</option>
						<option>내 동아리2</option>
						<option>내 동아리3</option>						
				</select>
				현재◎ 1개월○ 3개월○ 6개월○
			</div>
			<div style="display:block; width:500px; height:250px;  border:1px pink solid;">
				<p>정모수</p>
				<p>나의 정모 참여율</p>
				<p>회원수/회원증가율</p>
				<p>정모평가개수</p>
				<p>인 당 평균회비</p>
				<p>내가 받은 평가</p>
				<p>총지출</p>
				<p>내가 작성한 게시글</p>
				<p>내가 작성한 댓글</p>
			</div>
		</div>
		
	</div>
	<!-- 풋터영역 -->
      <div>
         <c:import url="footer.jsp"></c:import>
      </div> 
</div>
 

</body>
</html>