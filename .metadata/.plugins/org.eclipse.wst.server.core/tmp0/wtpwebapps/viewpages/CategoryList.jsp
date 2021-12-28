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
<title>CategoryList.jsp</title>
<style>
  .category{
    width: 50%;
    border: 3px solid #444444;
    
  }
  .container {
	display: flex;
}
</style>
</head>
<body>


<!-- 
CategoryList.jsp
- 관리자 페이지 - 홈페이지 관리 -  카테고리


 -->

 <div>
	<c:import url="navAdmin.jsp"></c:import>
</div>


<div>
	<!-- 메뉴 영역 -->
	<div>
		<c:import url="adminPageSideTab.jsp"></c:import>
	</div>

	<!-- 콘텐츠 영역 -->
	<div style="margin-left: 30vh;">
		<form action="">
			<input type="button" value="대분류추가" />
			<input type="button" value="소분류추가">
			<input type="button" value="삭제">
		</form>
	</div>
	
	<div id="content" style="margin-left: 30vh;" class="container">		
		
		<div>
			<table id="category" class="category">
				<tr>
					<th>카테고리 전체보기(00개)</th>
				</tr>
				<tr>
					<th>1.영화</th>
				</tr>
				<tr>
					<td>-소분류</td>
				</tr>
				<tr>
					<td>-소분류</td>
				</tr>
				<tr>
					<td>-소분류</td>
				</tr>
				<tr>
					<th>2.대분류</th>
				</tr>
				<tr>
					<td>-소분류</td>
				</tr>
				<tr>
					<td>-소분류</td>
				</tr>
				<tr>
					<th>3.대분류</th>
				</tr>
				<tr>
					<td>-소분류</td>
				</tr>
				<tr>
					<td>-소분류</td>
				</tr>
				<tr>
					<td>-소분류</td>
				</tr>
				<tr>
					<th>11.대분류</th>
				</tr>
				<tr>
					<td>-소분류</td>
				</tr>
				<tr>
					<td>-소분류</td>
				</tr>
				<tr>
					<td>-소분류</td>
				</tr>
				<tr>
					<td>-소분류</td>
				</tr>
				<tr>
					<td>-소분류</td>
				</tr>
			</table>	
	
		<span>※드래그앤드랍으로 카테고리의 순서를 변경할 수 있습니다.</span>
		</div>
	<!-- <div>
		카테고리명<br><input type="text" value="변경할 이름">
		<form action="">
			<input type="button" value="수정">
			<input type="button" value="삭제">
		</form>
	</div> -->
	
	
	</div>
	
	
	
	 <!-- 풋터영역 -->
      <div>
         <c:import url="footer2.jsp"></c:import>
      </div> 
	
</div>
 

</body>
</html>