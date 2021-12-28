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
<title>DormancyList.jsp</title>
</head>
<body>

<!-- 
 DormancyList.jsp
-  관리자페이지>회원관리>휴면회원 

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
			<h1>[ 휴면회원 ]</h1>
			<hr>

			<div>
				
				<form action="">
					<input type="text" value="검색어입력"/>
					<button type="button">검색</button>
				</form>
			</div>
			
			
			 <table id="dormancyList" class="table" >
	 		 	<tr>
	 		 		<!-- 항목 5EA -->
	 		 		<th>번호</th> 
	 		 		<th>ID</th>
	 		 		<th>닉네임</th>
	 		 		<th>휴면회원전환일</th>
	 		 		<th>휴면일로부터D+day</th>		 		
	 		 	</tr>
	 		 	
	 		 	<tr> 	
	 		 		<td>10</td>	 		
	 		 		<td>idtest</td>
	 		 		<td>빨간토끼</td> 
	 		 		<td>2021.12.05</td>		
	 		 		<td>1</td>
	 		 	</tr>
	 		 	<tr> 	
	 		 		<td>9</td>		 		
	 		 		<td>idididid</td>
	 		 		<td>파란기린</td> 
	 		 		<td>2021.12.01</td>		
	 		 		<td>5</td>
	 		 	</tr>
	 		 	<tr> 
	 		 		<td>8</td>			 		
	 		 		<td>teisdi</td>
	 		 		<td>빨간토끼</td> 
	 		 		<td>2021.12.05</td>		
	 		 		<td>1</td>
	 		 	</tr>
	 		 	<tr> 	
	 		 		<td>7</td>		 		
	 		 		<td>idtest</td>
	 		 		<td>파란이구아나</td> 
	 		 		<td>2021.11.25</td>		
	 		 		<td>10</td>
	 		 	</tr>
	 		 	<tr> 		
	 		 		<td>6</td>	 		
	 		 		<td>yeloooo</td>
	 		 		<td>분홍토끼</td> 
	 		 		<td>2021.11.15</td>		
	 		 		<td>21</td>
	 		 	</tr>
	 		 	<tr> 	
	 		 		<td>5</td>		 		
	 		 		<td>pinkkkk</td>
	 		 		<td>분홍솜사탕</td> 
	 		 		<td>2021.11.05</td>		
	 		 		<td>20</td>
	 		 	</tr>
	 		 	<tr> 		
	 		 		<td>4</td>	 		
	 		 		<td>pppap</td>
	 		 		<td>호랑이다</td> 
	 		 		<td>2021.10.05</td>		
	 		 		<td>39</td>
	 		 	</tr>
	 		 	<tr> 	
	 		 		<td>3</td>		 		
	 		 		<td>testests1</td>
	 		 		<td>노란낑깡</td> 
	 		 		<td>2021.09.05</td>		
	 		 		<td>52</td>
	 		 	</tr>
	 		 	<tr> 		
	 		 		<td>2</td>	 		
	 		 		<td>tes1231</td>
	 		 		<td>노란바나나</td> 
	 		 		<td>2021.08.05</td>		
	 		 		<td>82</td>
	 		 	</tr>
	 		 	<tr> 
	 		 		<td>1</td>			 		
	 		 		<td>12343id</td>
	 		 		<td>붉은개</td> 
	 		 		<td>2021.07.05</td>		
	 		 		<td>109</td>
	 		 	</tr>
 		 	
 		 	</table>
 		 	
 		 	
 		 <div id="footer">
			<p>1 Prev 21 22 23 24 25 26 27 28 29 30 Next 54</p>
		
		
		</div>	
 		 	
 		 	
 		</div>
		
		
		


	</div>




</body>
</html>