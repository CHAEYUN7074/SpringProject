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
<title>ContentsReportList.jsp</title>
</head>
<body>
<!-- 
 ContentsReportList.jsp
-  관리자페이지 -  신고관리- 컨텐츠 신고 접수

 -->

	<div>
	
		<!-- 네브 영역 -->
		<div>
			<c:import url="nav.jsp"></c:import>
		</div>
		
		
		<!-- 메뉴 영역 -->
		<div>
			<c:import url="adminPageSideTab.jsp"></c:import>
		</div>


		<!-- 콘텐츠 영역 -->
		<div id="content">
			<h1>[ 컨텐츠 신고접수 ]</h1>
			<hr>

			<div>
				
				<form action="">
					<input type="text" value="검색어입력" class="search" />
					<button type="button">검색</button>
				</form>
			</div>
			
			
			 <table id="contentsReportList" class="table" >
	 		 	<tr>
	 		 		<!-- 항목 10EA --> 
	 		 		<th>신고코드</th>
	 		 		<th>ID</th>
	 		 		<th>닉네임</th>
	 		 		<th>게시글번호</th>
	 		 		<th>신고횟수</th>
	 		 		<th>신고날짜</th>
	 		 		<th>최신신고접수일</th>
	 		 		<th>신고자</th>		 		
	 		 		<th>신고사유</th>	
	 		 		<th></th>
	 		 		<th></th>	 		
	 		 	</tr>
	 		 	
	 		 	<tr> 	
	 		 		<td>399</td>	 		
	 		 		<td>idtest</td>
	 		 		<td>빨간토끼</td> 
	 		 		<td>1902</td>
	 		 		<td>1</td>
	 		 		<td>2021.12.05</td>
	 		 		<td>2021.12.05</td>
	 		 		<td>파란감자칩</td>		
	 		 		<td>1</td>
	 		 		<td><input type="button" value="승인"></td>
	 		 		<td><input type="button" value="반려"></td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>398</td>	
	 		 		<td>idididid</td>
	 		 		<td>파란기린</td> 
	 		 		<td>19022</td>
	 		 		<td>1</td>
	 		 		<td>2021.12.01</td>	
	 		 		<td>2021.12.01</td>	
	 		 		<td>양감자칩</td>		
	 		 		<td>5</td>
	 		 		<td><input type="button" value="승인"></td>
	 		 		<td><input type="button" value="반려"></td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>397</td>	
	 		 		<td>teisdi</td>
	 		 		<td>빨간사과</td> 
	 		 		<td>900</td>
	 		 		<td>2</td>	 		
	 		 		<td>2021.12.05</td>	
	 		 		<td>2021.12.05</td>	
	 		 		<td>신고자닉넴</td>		
	 		 		<td>1</td>
	 		 		<td><input type="button" value="승인"></td>
	 		 		<td><input type="button" value="반려"></td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>396</td>	
	 		 		<td>idtest</td>
	 		 		<td>파란이구아나</td> 
	 		 		<td>1002</td>
	 		 		<td>1</td>
	 		 		<td>2021.11.25</td>	
	 		 		<td>2021.11.25</td>	
	 		 		<td>네잎클로버</td>		
	 		 		<td>1</td>
	 		 		<td><input type="button" value="승인"></td>
	 		 		<td><input type="button" value="반려"></td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>395</td>	
	 		 		<td>yeloooo</td>
	 		 		<td>분홍토끼</td> 
	 		 		<td>3302</td>
	 		 		<td>2</td>
	 		 		<td>2021.11.15</td>	
	 		 		<td>2021.11.15</td>	
	 		 		<td>까악아악</td>		
	 		 		<td>1</td>
	 		 		<td><input type="button" value="승인"></td>
	 		 		<td><input type="button" value="반려"></td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>394</td>	
	 		 		<td>pinkkkk</td>
	 		 		<td>분홍솜사탕</td> 
	 		 		<td>190</td>
	 		 		<td>1</td>
	 		 		<td>2021.11.05</td>	
	 		 		<td>2021.11.05</td>	
	 		 		<td>파란감자칩</td>		
	 		 		<td>2</td>
	 		 		<td><input type="button" value="승인"></td>
	 		 		<td><input type="button" value="반려"></td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>393</td>	
	 		 		<td>pppap</td>
	 		 		<td>호랑이다</td> 
	 		 		<td>113</td>
	 		 		<td>1</td>
	 		 		<td>2021.10.05</td>	
	 		 		<td>2021.10.05</td>	
	 		 		<td>환상나라</td>		
	 		 		<td>3</td>
	 		 		<td><input type="button" value="승인"></td>
	 		 		<td><input type="button" value="반려"></td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>392</td>	
	 		 		<td>testests1</td>
	 		 		<td>노란낑깡</td> 
	 		 		<td>2192</td>
	 		 		<td>1</td>
	 		 		<td>2021.09.05</td>		
	 		 		<td>2021.09.05</td>		
	 		 		<td>환상나라</td>	
	 		 		<td>2</td>
	 		 		<td><input type="button" value="승인"></td>
	 		 		<td><input type="button" value="반려"></td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>391</td>	
	 		 		<td>tes1231</td>
	 		 		<td>노란바나나</td> 
	 		 		<td>315</td>
	 		 		<td>2</td>
	 		 		<td>2021.08.05</td>	
	 		 		<td>2021.08.05</td>	
	 		 		<td>수첩수집가</td>		
	 		 		<td>2</td>
	 		 		<td><input type="button" value="승인"></td>
	 		 		<td><input type="button" value="반려"></td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>390</td>	
	 		 		<td>12343id</td>
	 		 		<td>붉은개</td> 
	 		 		<td>4902</td>
	 		 		<td>2</td>
	 		 		<td>2021.07.05</td>
	 		 		<td>2021.07.05</td>
	 		 		<td>파란기린</td>			
	 		 		<td>1</td>
	 		 		<td><input type="button" value="승인"></td>
	 		 		<td><input type="button" value="반려"></td>
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