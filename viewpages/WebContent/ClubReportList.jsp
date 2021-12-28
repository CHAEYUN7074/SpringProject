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
-  관리자페이지 -  신고관리- 동아리 신고 접수

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
			<h1>[ 동아리 신고접수 ]</h1>
			<hr>

			<div>
				
				<form action="">
					<select name="type">
					  	<option value="회원번호순" selected="selected">오래된신고일순</option>
					</select>
					<input type="text" value="검색어입력"  />
					<button type="button">검색</button>
				</form>
			</div>
			
			
			 <table id="clubReportList" class="table" >
	 		 	<tr>
	 		 		<!-- 항목 10EA --> 
	 		 		<th>신고코드</th>
	 		 		<th>동아리번호</th>
	 		 		<th>동아리명</th>
	 		 		<th>신고항목</th>
	 		 		<th>신고횟수</th>
	 		 		<th>신고날짜</th>
	 		 		<th>신고자</th>		 		
	 		 		<th>신고사유</th>	
	 		 		<th></th>
	 		 		<th></th>	 		
	 		 	</tr>
	 		 	
	 		 	<tr> 	
	 		 		<td>599</td>	 		
	 		 		<td>3002</td>
	 		 		<td>함께 달려요~!!</td> 
	 		 		<td>반짝</td>
	 		 		<td>1</td>
	 		 		<td>2021.12.05</td>
	 		 		<td>파란감자칩</td>		
	 		 		<td>1</td>
	 		 		<td><input type="button" value="승인"></td>
	 		 		<td><input type="button" value="반려"></td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>598</td>	
	 		 		<td>102</td>
	 		 		<td>카페투어 동아리~!!!</td> 
	 		 		<td>반짝</td>
	 		 		<td>2</td>	
	 		 		<td>2021.12.01</td>	
	 		 		<td>양감자칩</td>		
	 		 		<td>5</td>
	 		 		<td><input type="button" value="승인"></td>
	 		 		<td><input type="button" value="반려"></td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>597</td>	
	 		 		<td>5502</td>
	 		 		<td>연극같이보러갈사람있어요?!</td> 
	 		 		<td>반짝</td>
	 		 		<td>1</td>
	 		 		<td>2021.12.05</td>	
	 		 		<td>신고자닉넴</td>		
	 		 		<td>1</td>
	 		 		<td><input type="button" value="승인"></td>
	 		 		<td><input type="button" value="반려"></td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>596</td>	
	 		 		<td>5302</td>
	 		 		<td>맛집투어하자</td> 
	 		 		<td>정모</td>
	 		 		<td>1</td>
	 		 		<td>2021.11.25</td>	
	 		 		<td>네잎클로버</td>		
	 		 		<td>1</td>
	 		 		<td><input type="button" value="승인"></td>
	 		 		<td><input type="button" value="반려"></td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>595</td>	
	 		 		<td>1402</td>
	 		 		<td>함께 달려요~!!</td> 
	 		 		<td>반짝</td>
	 		 		<td>2</td>
	 		 		<td>2021.11.15</td>	
	 		 		<td>까악아악</td>		
	 		 		<td>1</td>
	 		 		<td><input type="button" value="승인"></td>
	 		 		<td><input type="button" value="반려"></td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>594</td>	
	 		 		<td>101</td>
	 		 		<td>러닝메이트!!</td> 
	 		 		<td>정모</td>
	 		 		<td>1</td>
	 		 		<td>2021.11.05</td>	
	 		 		<td>파란감자칩</td>		
	 		 		<td>2</td>
	 		 		<td><input type="button" value="승인"></td>
	 		 		<td><input type="button" value="반려"></td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>593</td>	
	 		 		<td>3011</td>
	 		 		<td>쿠킹쿠킹해보자</td> 
	 		 		<td>반짝</td>
	 		 		<td>1</td>
	 		 		<td>2021.10.05</td>	
	 		 		<td>환상나라</td>		
	 		 		<td>3</td>
	 		 		<td><input type="button" value="승인"></td>
	 		 		<td><input type="button" value="반려"></td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>592</td>	
	 		 		<td>3002</td>
	 		 		<td>주식투자공부같이해요!</td> 
	 		 		<td>정모</td>
	 		 		<td>3</td>	
	 		 		<td>2021.09.05</td>		
	 		 		<td>환상나라</td>	
	 		 		<td>2</td>
	 		 		<td><input type="button" value="승인"></td>
	 		 		<td><input type="button" value="반려"></td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>591</td>	
	 		 		<td>3002</td>
	 		 		<td>독서감상문 함께 적어용~~~</td> 
	 		 		<td>반짝</td>
	 		 		<td>1</td>	
	 		 		<td>2021.08.05</td>	
	 		 		<td>수첩수집가</td>		
	 		 		<td>2</td>
	 		 		<td><input type="button" value="승인"></td>
	 		 		<td><input type="button" value="반려"></td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>590</td>	
	 		 		<td>3002</td>
	 		 		<td>인스타감성 카페가보자</td> 
	 		 		<td>반짝</td>
	 		 		<td>1</td>
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