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
<title>MemberList.jsp</title>
<style type="text/css">
/* 	.left
	{
		float: left;
	}
	.right
	{
		float: right;
	}
 */
</style>
</head>
<body>

<!-- 
 MemberList.jsp
-  관리자페이지>회원관리>전체회원

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
			<h1>[ 전체회원 ]</h1>
			<hr>

			<div>
				
				<form action="">
					<span class="left">
						<select name="type">
						  	<option value="회원번호순" selected="selected">회원번호순</option>
						    <option value="신고횟수순">신고횟수순</option>
						    <option value="개월정지횟수" >1개월정지횟수</option>
						    <option value="휴면여부">휴면여부</option>
						</select>
					</span>
					<span class="right">
						<input type="text" value="검색어입력" />
						<input type="button" value="검색">
					</span>
				</form>
			</div>
		
			<table id="memberList" class="table" >
	 		 	<tr>
	 		 		<!-- 항목 8EA -->
	 		 		<th>회원번호</th>
	 		 		<th>ID</th>
	 		 		<th>이름</th>
	 		 		<th>이메일</th>
	 		 		<th>닉네임</th>
	 		 		<th>신고횟수</th>
	 		 		<th>1개월정지횟수</th>
	 		 		<th>휴면여부</th> 		 		
	 		 	</tr>
	 		 	
	 		 	<tr>
	 		 		<td>999</td>
	 		 		<td>idtest</td>
	 		 		<td>김기방</td>
	 		 		<td>kimbang@naver.com</td>
	 		 		<td>빨간토끼</td>
	 		 		<td>0</td>
	 		 		<td>0</td>
	 		 		<td>X</td> 		 		
	 		 	</tr>
	 		 	<tr>
	 		 		<td>998</td>
	 		 		<td>idididid</td>
	 		 		<td>박하유</td>
	 		 		<td>phy@naver.com</td>
	 		 		<td>파란기린</td>
	 		 		<td>0</td>
	 		 		<td>0</td>
	 		 		<td>X</td> 		 		
	 		 	</tr>
	 		 	<tr>
	 		 		<td>997</td>
	 		 		<td>teisdi</td>
	 		 		<td>홍라온</td>
	 		 		<td>hongra@gmail.com</td>
	 		 		<td>파란이구아나</td>
	 		 		<td>0</td>
	 		 		<td>1</td>
	 		 		<td>X</td> 		 		
	 		 	</tr>
	 		 	<tr>
	 		 		<td>996</td>
	 		 		<td>yeloooo</td>
	 		 		<td>김하하</td>
	 		 		<td>haha@gmail.com</td>
	 		 		<td>분홍토끼</td>
	 		 		<td>1</td>
	 		 		<td>0</td>
	 		 		<td>X</td> 		 		
	 		 	</tr>
	 		 	<tr>
	 		 		<td>995</td>
	 		 		<td>pinkkkk</td>
	 		 		<td>마동석</td>
	 		 		<td>mama@naver.com</td>
	 		 		<td>분홍솜사탕</td>
	 		 		<td>1</td>
	 		 		<td>0</td>
	 		 		<td>X</td> 		 		
	 		 	</tr>
	 		 	<tr>
	 		 		<td>994</td>
	 		 		<td>test1122</td>
	 		 		<td>소방사</td>
	 		 		<td>sooooo@gmail.com</td>
	 		 		<td>소방관이요</td>
	 		 		<td>0</td>
	 		 		<td>0</td>
	 		 		<td>O</td> 		 		
	 		 	</tr>
	 		 	<tr>
	 		 		<td>993</td>
	 		 		<td>pppap</td>
	 		 		<td>호현아</td>
	 		 		<td>tiger@naver.com</td>
	 		 		<td>호랑이다</td>
	 		 		<td>0</td>
	 		 		<td>0</td>
	 		 		<td>X</td> 		 		
	 		 	</tr>
	 		 	<tr>
	 		 		<td>992</td>
	 		 		<td>testests1</td>
	 		 		<td>김낑깡</td>
	 		 		<td>kim123@naver.com</td>
	 		 		<td>노란낑깡</td>
	 		 		<td>2</td>
	 		 		<td>0</td>
	 		 		<td>X</td> 		 		
	 		 	</tr>
	 		 	<tr>
	 		 		<td>991</td>
	 		 		<td>tethihih</td>
	 		 		<td>이하이</td>
	 		 		<td>hihi@gmail.com</td>
	 		 		<td>하이하이하</td>
	 		 		<td>0</td>
	 		 		<td>2</td>
	 		 		<td>X</td> 		 		
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