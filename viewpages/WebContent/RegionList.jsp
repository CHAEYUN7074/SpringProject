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
<title>RegionList.jsp</title>
<style>
  .region{
    width: 100%;
    border: 3px solid #444444;
    
  }
  .container {
	display: flex;
	justify-content: space-between;
	
}
</style>
</head>
<body>

<!-- 
RegionList.jsp
- 관리자 페이지 - 홈페이지 관리 - 지역 관리

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
	<div id="content" style="margin-left: 30vh;" class="container">			
		<div>
		<span>* 시를 선택해주세요.</span>
			<table id="region" class="region">
				<tr>
					<th>서울</th>
				</tr>
				<tr>
					<th>경기</th>
				</tr>
				<tr>
					<th>강원</th>
				</tr>
				<tr>
					<th>인천</th>
				</tr>
			</table>
			
			<form action="">
				<input type="button" value="추가">
				<input type="button" value="수정">
				<input type="button" value="삭제">
			</form>			
		</div>	
		
		
		<div>
		<!-- 서울시 클리 하면 서울의 구만.. -->
		<span>구 설정</span>
			<table id="region" class="region">
				<tr>
					<td>강남구</td>
				</tr>
				<tr>
					<td>강동구</td>
				</tr>
				<tr>
					<td>강서구</td>
				</tr>
				<tr>
					<td>강북구</td>
				</tr>
			</table>
			
			<form action="">
				<input type="button" value="추가">
				<input type="button" value="수정">
				<input type="button" value="삭제">
			</form>			
		</div>		
	
	</div>
	
	<div style="margin-left: 90vh;" >
		<form action="">
			<input type="button" value="수정">
			<input type="button" value="취소">
		</form>
	</div>
	
	
	 <!-- 풋터영역 -->
     <div>
         <c:import url="footer2.jsp"></c:import>
      </div>
	
</div>
 
 
 
 

</body>
</html>