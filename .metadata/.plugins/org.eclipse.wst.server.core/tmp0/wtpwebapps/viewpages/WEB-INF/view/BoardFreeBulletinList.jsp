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
<title>BoardFreeBulletinList.jsp</title>

</head>
<body>
<!-- 
 - BoardFreeBulletinList.jsp
-  대표게시판-자유글(메인)
 -->

	<div>
		<!-- 네브 영역 -->
		<div>
			<c:import url="/nav.action"></c:import>
		</div>
		
		
		<!-- 메뉴 영역 -->
		<div>
			<c:import url="mainSideTab.jsp"></c:import>
		</div>
		
		


		<!-- 콘텐츠 영역 -->
		<div id="content" style="margin-left: 30vh;">
			<h1>[ 자유글 ]</h1>
			<hr>

			<div>
				
				<form action="">
					<!-- 스토리보드에 셀박있는데 필요없을듯. -->
					<!-- <select>
						<option value="전체" selected="selected">전체</option>
						<option value="제목" >전체</option>
						<option value="전체" >전체</option>
					</select> -->
					
					<input type="text" value="검색어입력" />
					<input type="button" value="검색">
				</form>
			</div>
			
			
			<table id="BoardFreeBulletinList" class="table" >
	 		 	<tr>
	 		 		<!-- 항목 7EA --> 
	 		 		<th>순번</th>
	 		 		<th>글제목</th>
	 		 		<th>닉네임</th>
	 		 		<th>작성일</th>		 			 		
	 		 		<th>댓글수</th>		 			 		
	 		 		<th>조회수</th>	
	 		 		<th></th> 		
	 		 	</tr>
	 		 	
	 		 	<tr> 		 		
	 		 		<td>1099</td>
	 		 		<td>함께달려요~~~!!달리자!</td> 
	 		 		<td>성수동불주먹</td>
	 		 		<td>2021.12.15</td>
	 		 		<td>3</td>
	 		 		<td>11</td>
	 		 		<td><input type="button" value="신고"></td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>1098</td>
	 		 		<td>야구보러가는사람?</td> 
	 		 		<td>나는야도깨비</td>
	 		 		<td>2021.12.05</td>
	 		 		<td>10</td>
	 		 		<td>20</td>
	 		 		<td><input type="button" value="신고"></td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>1097</td>
	 		 		<td>맛난디저트 만들어봤어여</td> 	 		 		
	 		 		<td>성수동불주먹</td>
	 		 		<td>2021.12.05</td>
	 		 		<td>3</td>
	 		 		<td>53</td>
	 		 		<td><input type="button" value="신고"></td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>1096</td>
	 		 		<td>영화관람동아리 같이들어갈사람</td> 	 		 		
	 		 		<td>보노보노</td>
	 		 		<td>2021.11.25</td>
	 		 		<td>2</td>
	 		 		<td>33</td>
	 		 		<td><input type="button" value="신고"></td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>1095</td>
	 		 		<td>자유게시판 첨이네요</td> 	 		 		
	 		 		<td>포로리</td>
	 		 		<td>2021.11.05</td>
	 		 		<td>0</td>
	 		 		<td>5</td>
	 		 		<td><input type="button" value="신고"></td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>1094</td>
	 		 		<td>런닝메이트구합니당</td> 	 		 		
	 		 		<td>방가방가</td>
	 		 		<td>2021.10.15</td>
	 		 		<td>1</td>
	 		 		<td>32</td>
	 		 		<td><input type="button" value="신고"></td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>1093</td>
	 		 		<td>이 뮤지컬너무잼잼잼</td> 	 		 		
	 		 		<td>햄토리</td>
	 		 		<td>2021.10.01</td>
	 		 		<td>2</td>
	 		 		<td>62</td>
	 		 		<td><input type="button" value="신고"></td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>1092</td>
	 		 		<td>인스타감성카페투어햇어용</td>	 		 		
	 		 		<td>빨간망토</td> 
	 		 		<td>2021.10.01</td>
	 		 		<td>2</td>
	 		 		<td>31</td>
	 		 		<td><input type="button" value="신고"></td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>1091</td>
	 		 		<td>공방체험해봄</td> 	 		 		
	 		 		<td>차차</td>
	 		 		<td>2021.09.25</td>
	 		 		<td>3</td>
	 		 		<td>30</td>
	 		 		<td><input type="button" value="신고"></td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>1090</td>
	 		 		<td>영화보는게 제일조아!!!</td> 	 		 		
	 		 		<td>영화덕후</td>
	 		 		<td>2021.09.05</td>
	 		 		<td>0</td>
	 		 		<td>46</td>
	 		 		<td><input type="button" value="신고"></td>
	 		 	</tr>
 		 	</table>
 		 	
 		<div id="footer">
			<p>1 Prev 21 22 23 24 25 26 27 28 29 30 Next 54</p>		
		</div>	
 		 	
 		</div>
		
		 <!-- 풋터영역 -->
	     <div>
	      	<c:import url="footer.jsp"></c:import>
	     </div>
		

	

</div>


</body>
</html>