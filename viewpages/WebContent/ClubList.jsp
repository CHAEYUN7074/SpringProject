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
<title>ClubReportList.jsp</title>
</head>
<body>

<!-- 
 ClubReportList.jsp
-  관리자페이지- 동아리관리 - 전체 동아리  

 -->

	<div>
		<!-- 네브 영역 -->
		<div>
			<c:import url="navAdmin.jsp"></c:import>
		</div>
		
		
		<!-- 메뉴 영역 -->
		<div>
			<c:import url="adminPageSideTab.jsp"></c:import>
		</div>


		<!-- 콘텐츠 영역 -->
		<div id="content" style="margin-left: 30vh;">
			<h1>[ 전체 동아리 목록 ]</h1>
			<hr>

			<div>
				
				<form action="">
					<input type="text" value="검색어입력" />
					<input type="button" value="검색">
				</form>
			</div>
			
			
				 <table id="clubList" class="table" >
	 		 	<tr>
	 		 		<!-- 항목 6EA --> 
	 		 		<th>순번</th>
	 		 		<th>동아리명</th>
	 		 		<th>개설일</th>
	 		 		<th>가입자수</th>		 			 		
	 		 		<th>지역</th>		 			 		
	 		 		<th>카테고리</th>	 		
	 		 	</tr>
	 		 	
	 		 	<tr> 		 		
	 		 		<td>1099</td>
	 		 		<td>함께달려요~~~!!달리자!</td> 
	 		 		<td>2021.12.15</td>
	 		 		<td>33</td>
	 		 		<td>서울</td>
	 		 		<td>운동</td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>1098</td>
	 		 		<td>야구보러가자!야구직관동아리</td> 
	 		 		<td>2021.12.05</td>
	 		 		<td>50</td>
	 		 		<td>서울</td>
	 		 		<td>관람</td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>1097</td>
	 		 		<td>맛난디저트 만들어봐요</td> 
	 		 		<td>2021.12.05</td>
	 		 		<td>33</td>
	 		 		<td>부산</td>
	 		 		<td>베이킹</td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>1096</td>
	 		 		<td>영화관람동아리^^</td> 
	 		 		<td>2021.11.25</td>
	 		 		<td>23</td>
	 		 		<td>강원도</td>
	 		 		<td>문화</td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>1095</td>
	 		 		<td>운동같이하는동아리</td> 
	 		 		<td>2021.11.05</td>
	 		 		<td>63</td>
	 		 		<td>인천</td>
	 		 		<td>운동</td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>1094</td>
	 		 		<td>런닝메이트구합니당</td> 
	 		 		<td>2021.10.15</td>
	 		 		<td>15</td>
	 		 		<td>경기도</td>
	 		 		<td>운동</td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>1093</td>
	 		 		<td>뮤지컬너무잼잼잼</td> 
	 		 		<td>2021.10.01</td>
	 		 		<td>25</td>
	 		 		<td>서울</td>
	 		 		<td>문화</td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>1092</td>
	 		 		<td>인스타감성카페투어모임</td> 
	 		 		<td>2021.10.01</td>
	 		 		<td>20</td>
	 		 		<td>경기도</td>
	 		 		<td>문화</td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>1091</td>
	 		 		<td>공방에서만들기하자</td> 
	 		 		<td>2021.09.25</td>
	 		 		<td>30</td>
	 		 		<td>대전</td>
	 		 		<td>체험</td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>1090</td>
	 		 		<td>영화보는게 제일조아</td> 
	 		 		<td>2021.09.05</td>
	 		 		<td>100</td>
	 		 		<td>서울</td>
	 		 		<td>문화</td>
	 		 	</tr>
 		 	</table>
 		 	
 		<div id="footer">
			<p>1 Prev 21 22 23 24 25 26 27 28 29 30 Next 54</p>		
		</div>	
 		 	
 		</div>
		
		 <!-- 풋터영역 -->
	     <div>
	      	<c:import url="footer2.jsp"></c:import>
	     </div>
		


	</div>




</body>
</html>