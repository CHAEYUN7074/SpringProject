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

/* #accountSelect{
margin : 10vh 0vh 10vh 40vh;
} */
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="<%=cp%>/js/jquery-ui.js"></script>

</head>
<body>
<!--  
clubCalendarList.jsp
- 동아리 페이지 - 캘린더 리스트
1. id, 동아리코드 받아와서 사람마다 리스트 다르게 출력하기
-->
	 <%-- <c:import url="/nav.action"></c:import>
	 <c:import url="meetingmain.jsp"></c:import> --%>
	
<div>
	<div style="float: left; margin : 5vh 30vh 3vh 18%;">
			<button type="button" class="btn btn-warning" 
			onclick="location.href='beeinsertform.action?cid=${cid}'">모임개설</button>
			
			<%-- onclick="location.href='beeinsertform.action?id=${id}'">모임개설</button> --%>
															<!-- 여기에다가 세션에서 설정한 id 넣기 -->
			
		</div>
</div>
	<div class="box">
		
		<div id="accountSelect">
		      <!-- <div>
		         <form action="" name="accountForm" method="post">
		            <select name="accountKey" class="selectField"  
		            onchange="if(this.value) location.href=(this.value);">
		               value값 변경해야함..
		               <option value="beecalendar.action" >캘린더</option>
		               <option value="beecalendarlist.action" selected="selected">리스트</option>
		            </select>
		            <div></div>
		         </form>
		      </div>
		      
		      <div>
		         <form action="" name="accountForm" method="post">
		            <select name="accountKey" class="selectField">
		               <option value="">전체보기</option>
		               <option value="">예정모임</option>
		               <option value="">지난모임</option>
		            </select>
		            <div></div>
		         </form>
		      </div>
			 -->
		 </div>
		

		</div>
					
	
	<div class="contents">

		<div class="card mb-3">
		
		<c:forEach  var="bee" items="${beeList }">
			<a href="beedetailpage.action?beeId=${bee.beeId}&cid=${cid}" style="text-decoration: none;">
			<div class="row g-0">
				<div class="col-md-4">
					<img src="http://artinsight.co.kr/data/tmp/1806/8a7aa7b2cc1c8658726cc7a2df93418f_Kthlez4CFNiI72tb12Chqdw.jpg" class="img-fluid rounded-start" alt="...">
				</div>
				<div class="col-md-8">
					<div class="card-body">
						<h5 class="card-title">${bee.title }</h5>
						
						<p class="card-text">모임 시간 : ${bee.beeTime } </p>
						<p class="card-text">게시자 ${bee.nickName }</p>
						<p class="card-text">
							<small class="text-muted">작성일 ${bee.beeDate }</small>
						</p>
						<p class="card-text">인원수 : (${bee.reqCnt } / ${bee.max })</p>
						 
					</div>
				</div>
			</div>
			</a>
			<br></br>
			<br></br>
		</c:forEach>
			<!-- 
			<div class="row g-0">
				<div class="col-md-4">
					<img src="http://artinsight.co.kr/data/tmp/1806/8a7aa7b2cc1c8658726cc7a2df93418f_Kthlez4CFNiI72tb12Chqdw.jpg" class="img-fluid rounded-start" alt="...">
				</div>
				<div class="col-md-8">
					<div class="card-body">
						<h5 class="card-title">✨ 마포구 달리기</h5>
						<p class="card-text">정모일 작성자</p>
						<p class="card-text">
							<small class="text-muted">Last updated 3 mins ago</small>
						</p>
						<p class="card-text">인원수 : (7 / 35)</p>
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
						<h5 class="card-title">11회차 영화 감상 예정</h5>
						<p class="card-text">정모일 작성자</p>
						<p class="card-text">
							<small class="text-muted">Last updated 3 mins ago</small>
						</p>
						<p class="card-text">인원수 : (5 / 30)</p>
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
						<h5 class="card-title">정모후기</h5>
						<p class="card-text">정모일 작성자</p>
						<p class="card-text">
							<small class="text-muted">Last updated 3 mins ago</small>
						</p>
						<p class="card-text">참석자 수 : 30명 </p>
					</div>
				</div>
			</div>
			 -->
			
		</div>


	</div>
</body>
</html>