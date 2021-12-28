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
<title>ClubBeforeOpenedList.jsp</title>
</head>
<body>
<!-- 
ClubBeforeOpenedList.jsp
- 메인화면(로그인 전) 페이지 2 -⑤ 회원 모집 동아리 리스트
 -->
<div class="wrap">
	<!-- nav 영역 -->
	<div>
		<c:import url="nav.jsp"></c:import>
	</div>
	
	<!-- 컨텐츠영역 -->
	<div>
		<h1>개설 예정 동아리 리스트</h1>
	</div>
	
	<div>	
		<form action="">
			<div>
				카테고리
				<select id="category1">
					<option value="1">카테고리대분류</option>
					<option value="2">2</option>
					<option value="3">3</option>
				</select>
				<select id="category2">
					<option value="1">카테고리소분류</option>
					<option value="2">2</option>
					<option value="3">3</option>
				</select>
			</div>
			<div>
				지역
				<select id="region1">
					<option value="1">지역대분류</option>
					<option value="2">2</option>
					<option value="3">3</option>
				</select>
				<select id="region1">
					<option value="1">지역소분류</option>
					<option value="2">2</option>
					<option value="3">3</option>
				</select>
			</div>
			<div>            
               <input type="text" placeholder="동아리 검색" class="search" />
               <input type="button"  value="검색">
            </div>		
		</form>		
	</div>	
	<div>
		<select>
			<!-- 동아리 정렬 방법 -->
			<option value="1" selected="selected">최신순</option>
			<option value="2">오래된순</option>
			<option value="3">회원수</option>
		</select><br>
	</div>	
	

	<div>
		<!-- 동아리 목록 -->
		<table>
			<tr>
				<td style="border:1px solid;width:200px; height:100px;">
				<!-- 대충 이렇게 사진이 들어갑니다.... -->
					<a href="">						
						<!-- <img src="" class="clubpic"> -->
						<br>
						<span>💕동아리 타이틀💕</span>
					</a>
				</td>
				<td>
					<a href="">
						<!-- <img src="images/pic1.jpg" class="clubpic"> -->
						<br>
						<span>💕동아리 타이틀💕</span>
					</a>				
				</td>
				<td>
					<a href="">
						<!-- <img src="images/pic1.jpg" class="clubpic"> -->
						<br>
						<span>💕동아리 타이틀💕</span>
					</a>				
				</td>
				<td>
					<a href="">
						<!-- <img src="images/pic1.jpg" class="clubpic"> -->
						<br>
						<span>💕동아리 타이틀💕</span>
					</a>
				</td>
			</tr>
			<tr>
				<td>
					<a href="">
						<!-- <img src="images/pic1.jpg" class="clubpic"> -->
						<br>
						<span>💕동아리 타이틀💕</span>
					</a>				
				</td>
				<td>
					<a href="">
						<!-- <img src="images/pic1.jpg" class="clubpic"> -->
						<br>
						<span>💕동아리 타이틀💕</span>
					</a>				
				</td>
				<td>
					<a href="">
						<!-- <img src="images/pic1.jpg" class="clubpic"> -->
						<br>
						<span>💕동아리 타이틀💕</span>
					</a>				
				</td>
				<td>
					<a href="">
						<!-- <img src="images/pic1.jpg" class="clubpic"> -->
						<br>
						<span>💕동아리 타이틀💕</span>
					</a>				
				</td>
			</tr>
			
		</table>	
	</div>
	
     <div>
        <p>1 Prev 21 22 23 24 25 26 27 28 29 30 Next 54</p>      
     </div>
     
      
      <!-- 풋터영역 -->
      <div>
      	<c:import url="footer2.jsp"></c:import>
      </div>

</div>



</body>
</html>