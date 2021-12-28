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
<title>StopList.jsp</title>
</head>
<body>

<!-- 
 StopList.jsp
-  관리자페이지>회원관리>영구정지회원  
- 

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
			<h1>[ 영구정지회원 ]</h1>
			<hr>

			<div>
				<form action="">
					<input type="text" value="검색어입력" />
					<button type="button">검색</button>
				</form>
			</div>
			
			
			 <table id="stopList" class="table" >
	 		 	<tr>
	 		 		<!-- 항목 5EA --> 
	 		 		<th>번호</th>
	 		 		<th>ID</th>
	 		 		<th>닉네임</th>
	 		 		<th>이메일</th>
	 		 		<th>영구정지일</th>		 			 		
	 		 	</tr>
	 		 	
	 		 	<tr> 		
	 		 		<td>10</td> 		
	 		 		<td>idtest</td>
	 		 		<td>빨간토끼</td> 
	 		 		<td>red@gmail.com</td>
	 		 		<td>2021.12.05</td>

	 		 	</tr>
	 		 	<tr> 	
	 		 		<td>9</td> 	 		
	 		 		<td>idididid</td>
	 		 		<td>파란기린</td> 
					<td>bbbbb@gmail.com</td>
	 		 		<td>2021.12.05</td>
	 		 	</tr>
	 		 	<tr> 	
	 		 		<td>8</td> 	 		
	 		 		<td>teisdi</td>
	 		 		<td>빨간토끼</td> 
	 		 		<td>rrdd@gmail.com</td>
	 		 		<td>2021.12.01</td>
	 		 	</tr>
	 		 	<tr> 		
	 		 		<td>7</td>  		
	 		 		<td>idtest</td>
	 		 		<td>파란이구아나</td> 
	 		 		<td>biddd@gmail.com</td>
	 		 		<td>2021.12.05</td>
	 		 	</tr>
	 		 	<tr> 		
	 		 		<td>6</td>  		
	 		 		<td>yeloooo</td>
	 		 		<td>분홍토끼</td> 
	 		 		<td>radddd@naver.com</td>
	 		 		<td>2021.12.05</td>
	 		 	</tr>
	 		 	<tr> 		
	 		 		<td>5</td>  		
	 		 		<td>pinkkkk</td>
	 		 		<td>분홍솜사탕</td> 
	 		 		<td>pink@gmail.com</td>
	 		 		<td>2021.11.25</td>
	 		 	</tr>
	 		 	<tr> 		 
	 		 		<td>4</td> 		
	 		 		<td>pppap</td>
	 		 		<td>호랑이다</td> 
	 		 		<td>tiger@gmail.com</td>
	 		 		<td>2021.11.15</td>
	 		 	</tr>
	 		 	<tr> 		 	
	 		 		<td>3</td> 	
	 		 		<td>testests1</td>
	 		 		<td>노란낑깡</td> 
	 		 		<td>yesss@naver.com</td>
	 		 		<td>2021.11.01</td>
	 		 	</tr>
	 		 	<tr> 		
	 		 		<td>2</td>  		
	 		 		<td>tes1231</td>
	 		 		<td>노란바나나</td> 
	 		 		<td>ddabb@gmail.com</td>
	 		 		<td>2021.10.11</td>
	 		 	</tr>
	 		 	<tr> 	
	 		 		<td>1</td> 	 		
	 		 		<td>12343id</td>
	 		 		<td>붉은개</td> 
	 		 		<td>doggggg@naver.com</td>
	 		 		<td>2021.10.09</td>
	 		 	</tr>
 		 	
 		 	</table>
 		 	
 		</div>
		
		
		<div id="footer">
			<p>1 Prev 21 22 23 24 25 26 27 28 29 30 Next 54</p>
		
		
		</div>
		
		<!-- 풋터영역 -->
	     <div>
	      	<c:import url="footer2.jsp"></c:import>
	     </div>
		

	</div>




</body>
</html>