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
<title>AdminList.jsp</title>
</head>
<body>

<!-- 
 AdminList.jsp
-  관리자페이지 -  관리자 계정 관리 - 관리자 목록 페이지
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
			<h1>[ 관리자 목록 ]</h1>
			<hr>
			
			<div>
				ID<input type="text">
				PW<input type="password">
				E-mail<input type="text">
				관리자명<input type="text">
				<input type="button" value="추가">
			</div>
			<table id="adminList" class="table" >
	 		 	<tr>
	 		 		<!-- 항목 5EA --> 
	 		 		<th>순번</th>
	 		 		<th>ID</th>
	 		 		<th>비밀번호</th>
	 		 		<th>이메일</th>		 			 		
	 		 		<th>관리자명</th>	
	 		 	</tr>
	 		 	
	 		 	<tr> 		 		
	 		 		<td>6</td>
	 		 		<td>admin6</td> 
	 		 		<td>******</td>
	 		 		<td>admin@naver.com</td>
	 		 		<td>관리자6</td>
	 		 		<td><input type="button" value="수정"></td>
	 		 		<td><input type="button" value="완료" disabled="disabled"></td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>5</td>
	 		 		<td>admin5</td> 
	 		 		<td>*******</td>
	 		 		<td>admin1@naver.com</td>
	 		 		<td>관리자5</td>
	 		 		<td><input type="button" value="수정"></td>
	 		 		<td><input type="button" value="완료" disabled="disabled"></td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>4</td>
	 		 		<td>admin4</td> 
	 		 		<td>******</td>
	 		 		<td>admin2@naver.com</td>
	 		 		<td>관리자4</td>
	 		 		<td><input type="button" value="수정"></td>	 		 		
	 		 		<td><input type="button" value="완료" disabled="disabled"></td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>3</td>
	 		 		<td>admin3</td> 
	 		 		<td>******</td>
	 		 		<td>admin3@naver.com</td>
	 		 		<td>관리자3</td>
	 		 		<td><input type="button" value="수정"></td>
	 		 		<td><input type="button" value="완료" disabled="disabled"></td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>2</td>
	 		 		<td>admin2</td> 
	 		 		<td>******</td>
	 		 		<td>admin4@naver.com</td>
	 		 		<td>관리자2</td>
	 		 		<td><input type="button" value="수정"></td>
	 		 		<td><input type="button" value="완료" disabled="disabled"></td>
	 		 	</tr>
	 		 	<tr> 		 		
	 		 		<td>1</td>
	 		 		<td>admin</td> 
	 		 		<td>******</td>
	 		 		<td>admin00@gmail.com</td>
	 		 		<td>대표관리자</td>
	 		 		<td><input type="button" value="수정"></td>
	 		 		<td><input type="button" value="완료" disabled="disabled"></td>
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