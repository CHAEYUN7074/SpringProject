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
<title>NoticeList.jsp</title>
</head>
<body>

<!-- 
 NoticeList.jsp
-  공지사항 목록 페이지.
- 비회원/회원은 읽기만 가능. 글쓰기/댓글 불가
 -->

	<div>
		<!-- 네브 영역 -->
		<div>
			<c:import url="/nav.action"></c:import>
		</div>

		<!-- 콘텐츠 영역 -->
		<div id="content" >
			<h1>[ 공지사항 ]</h1>
			<hr>

			<div>
				
				<form action="">
					<input type="text" value="검색어입력" />
					<input type="button" value="검색">
				</form>
			</div>
			
			
				 <table id="noticeList" class="table" >
	 		 	<tr>
	 		 		<!-- 항목 5EA --> 
	 		 		<!-- 작성자는 보여줄지말지 고민 -->
	 		 		<th>순번</th>
	 		 		<th>글제목</th>		 			 		
	 		 		<th>작성일</th>
	 		 		<th>작성자</th>	
	 		 		<th>조회수</th>				
	 		 	</tr>
	 		 	
	 		 	<tr> 		 		
	 		 		<td>10</td>
	 		 		<td>공지사항입니다.</td> 
	 		 		<td>2021.12.15</td>
	 		 		<td>관리자1</td>
	 		 		<td>100</td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>9</td>
	 		 		<td>공지사항입니다9</td> 
	 		 		<td>2021.12.05</td>
	 		 		<td>관리자1</td>
	 		 		<td>334</td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>8</td>
	 		 		<td>최신공지</td> 
	 		 		<td>2021.12.01</td>
	 		 		<td>관리자3</td>
	 		 		<td>543</td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>7</td>
	 		 		<td>약관공지</td> 
	 		 		<td>2021.11.25</td>
	 		 		<td>관리자1</td>
	 		 		<td>623</td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>6</td>
	 		 		<td>공지다</td> 
	 		 		<td>2021.11.05</td>
	 		 		<td>대표관리자</td>
	 		 		<td>734</td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>5</td>
	 		 		<td>공지사항입니다</td> 
	 		 		<td>2021.10.15</td>
	 		 		<td>관리자1</td>
	 		 		<td>799</td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>4</td>
	 		 		<td>공지인데 봐라</td> 
	 		 		<td>2021.10.01</td>
	 		 		<td>관리자2</td>
	 		 		<td>895</td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>3</td>
	 		 		<td>비회원보아라공지다</td> 
	 		 		<td>2021.10.01</td>
	 		 		<td>관리자5</td>
	 		 		<td>1021</td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>2</td>
	 		 		<td>공지입니다</td> 
	 		 		<td>2021.09.25</td>
	 		 		<td>관리자1</td>
	 		 		<td>1134</td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>1</td>
	 		 		<td>공지사항전달</td> 
	 		 		<td>2021.09.05</td>
	 		 		<td>대표관리자</td>
	 		 		<td>1573</td>
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