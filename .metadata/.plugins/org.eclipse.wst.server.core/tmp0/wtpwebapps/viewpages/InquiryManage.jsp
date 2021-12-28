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
<title>InquiryManage.jsp</title>
</head>
<body>

<!-- 
 InquiryManage.jsp
-  동아리 페이지 - ⑧ 동아리 관리자 페이지 - 동아리관리 - 문의관리

 -->

	<div>
		<!-- 네브 영역 -->
		<div>
			<c:import url="nav.jsp"></c:import>
		</div>
		
		<!-- 메뉴 영역 -->
		<div>
			<c:import url="beeAdminPageSideTab.jsp"></c:import>
		</div>


		<!-- 콘텐츠 영역 -->
		<div id="content" style="margin-left: 30vh;">
			<h1>[ 문의글 목록 ]</h1>
			<hr>

			<div>
				
				<form action="">
					<input type="text" value="검색어입력" class="search" />
					<input type="button" value="검색">
					
				</form>
			</div>
			
			
			 <table id="inquiryList" class="table" >
 		 	<tr>
 		 		<!-- 항목 7EA -->
 		 		<th></th>
 		 		<th>순번</th>
 		 		<th>문의일</th>
 		 		<th>글제목</th>
 		 		<th>작성자</th>
 		 		<th>답변일</th>
 		 		<th>처리상태</th> 		 		
 		 	</tr>
 		 	
 		 	<tr>
 		 		<td><input type="checkbox"></td>
 		 		<td>5</td>
 		 		<td>2021.12.12</td>
 		 		<td>여기 무슨동아리인가여 ?</td>
 		 		<td>나는야문의자</td>
 		 		<td></td>
 		 		<td>답변대기</td>
 		 	</tr>
 		 	<tr>
 		 		<td><input type="checkbox"></td>
 		 		<td>4</td>
 		 		<td>2021.12.11</td>
 		 		<td>여기 회비 얼마?</td>
 		 		<td>초록나무</td>
 		 		<td>2021.12.11</td>
 		 		<td>답변완료</td>
 		 	</tr>
 		 	<tr>
 		 		<td><input type="checkbox"></td>
 		 		<td>3</td>
 		 		<td>2021.12.01</td>
 		 		<td>여기 질문이잇는디여</td>
 		 		<td>하얀다람쥐</td>
 		 		<td>2021.12.03</td>
 		 		<td>답변완료</td>
 		 	</tr>
 		 	<tr>
 		 		<td><input type="checkbox"></td>
 		 		<td>2</td>
 		 		<td>2021.11.12</td>
 		 		<td>동아리장님</td>
 		 		<td>노란달팽이</td>
 		 		<td>2021.11.15</td>
 		 		<td>답변완료</td>
 		 	</tr>
 		 	<tr>
 		 		<td><input type="checkbox"></td>
 		 		<td>1</td>
 		 		<td>2021.10.12</td>
 		 		<td>동아리에 가입하고싶은데요.......</td>
 		 		<td>초록달팽이</td>
 		 		<td>2021.10.15</td>
 		 		<td>답변완료</td>
 		 	</tr>

 		 	
 		 	</table>

 		 	<input type="button" value="게시글삭제" id="delete">
 		 	
 		 	
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