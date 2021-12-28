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
<title>NonactivationClubList.jsp</title>
</head>
<body>

<!-- 
 NonactivationClubList.jsp
-  관리자페이지-  동아리관리 - 비활성화동아리

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
			<h1>[ 비활성화 동아리 ]</h1>
			<hr>

			<div>
				
				<form action="">
					<select name="type">
						  	<option value="전체" selected="selected">전체</option>
						    <option value="신고">신고</option>
						    <option value="휴면동아리" >휴면동아리</option>
					</select>
					<input type="text" value="검색어입력"  />
					<button type="button">검색</button>
				</form>
			</div>
			
			
				 <table id="nonactivationClubList" class="table" >
	 		 	<tr>
	 		 		<!-- 항목 5EA --> 
	 		 		<th>구분</th>
	 		 		<th>순번</th>
	 		 		<th>동아리명</th>
	 		 		<th>개설일</th>
	 		 		<th>추가일</th>	
	 		 	</tr>
	 		 	
	 		 	<tr> 		 
	 		 		<td>신고</td>		
	 		 		<td>1099</td>
	 		 		<td>함께달려요~~~!!달리자!</td> 
	 		 		<td>2019.12.15</td>
	 		 		<td>2020.12.15</td>
	 		 	</tr>
	 		 	<tr> 
	 		 		<td>신고</td>			 		
	 		 		<td>1096</td>
	 		 		<td>영화관람동아리^^</td> 
	 		 		<td>2018.01.10</td>
	 		 		<td>2020.12.01</td>
	 		 	</tr>
	 		 	<tr> 		
	 		 		<td>휴면동아리</td>	 		
	 		 		<td>1091</td>
	 		 		<td>공방에서만들기하자</td> 
	 		 		<td>2020.02.10</td>
	 		 		<td>2020.09.19</td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>신고</td>	
	 		 		<td>1098</td>
	 		 		<td>야구보러가자!야구직관동아리</td> 
	 		 		<td>2019.10.15</td>
	 		 		<td>2020.10.15</td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>신고</td>	
	 		 		<td>1097</td>
	 		 		<td>맛난디저트 만들어봐요</td> 
	 		 		<td>2018.12.10</td>
	 		 		<td>2020.12.15</td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>신고</td>	
	 		 		<td>1094</td>
	 		 		<td>런닝메이트구합니당</td> 
	 		 		<td>2018.09.10</td>
	 		 		<td>2020.08.19</td>
	 		 	</tr>	 		 	
	 		 	<tr> 		 		
	 		 		<td>휴면동아리</td>	
	 		 		<td>1095</td>
	 		 		<td>운동같이하는동아리</td> 
	 		 		<td>2018.05.10</td>
	 		 		<td>2020.07.19</td>
	 		 	</tr>
	 		 	
	 		 	<tr> 		 		
	 		 		<td>휴면동아리</td>	
	 		 		<td>1093</td>
	 		 		<td>뮤지컬너무잼잼잼</td> 
	 		 		<td>2019.07.10</td>
	 		 		<td>2020.05.19</td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>휴면동아리</td>	
	 		 		<td>1092</td>
	 		 		<td>인스타감성카페투어모임</td> 
	 		 		<td>2019.11.11</td>
	 		 		<td>2020.07.03</td>
	 		 	</tr>
	 		 	
	 		 	<tr> 		 		
	 		 		<td>휴면동아리</td>	
	 		 		<td>1090</td>
	 		 		<td>영화보는게 제일조아</td> 
	 		 		<td>2017.12.31</td>
	 		 		<td>2020.03.03</td>
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