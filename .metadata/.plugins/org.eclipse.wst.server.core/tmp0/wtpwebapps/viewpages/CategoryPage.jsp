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
<title>CategoryPage.jsp</title>
<style>
/* body {
	margin: 0;
	padding: 0;
}

.header {
	letter-spacing: -1px;
	color: black;
	padding: 0%;
	margin: 0%;
	height: 10vh;
}

.info {
	background-color: orange;
	width: 70vh;
	height: 30vh;
}

.ProfileInfo {
	background-color: yellow;
	width: 70vh;
	height: 30vh;
	margin: 10vh 0vh 0vh 70vh;
}

.upper {
	display: flex;
	background-color : gray;
}

.my-box {border:1px solid; padding:10px;} */
</style>


</head>
<body>

<!-- 
- 메인화면(로그인 전) 페이지 2 -③ 카테고리 상세 페이지 

 -->
 
<!-- nav 영역 -->
<div>
	<c:import url="nav.jsp"></c:import>
</div>

<!-- 컨텐츠 영역 -->
<div>
	<form>
	
		<h1>1.여행</h1>
		
		<select id="minicategory" style="width:100px;height:22px;">
			<option value="0" selected="selected">전체보기(소분류)</option>
			<option value="1">스포츠</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
			<option value="8">8</option>
			<option value="9">9</option>
			<option value="10">10</option>
			<option value="11">11</option>
		</select>
		
		<select id="sort" style="width:100px;height:22px;">
			<option value="0" selected="selected">정렬</option>
			<option value="1">동아리원 수</option>
			<option value="2">모집중</option>
		</select>
		
		<input type="text" placeholder="동아리명 검색">
		<input type="button" value="검색">
	</form>
	
	<form>
		<div>
			<div>
				<a href="">
					
					<div style="border:1px solid;width:200px; height:100px; float:left"><!-- <img src="images/pic1.jpg" class="clubpic"> --></div>
				</a>
			</div>
			<div>			
				<span>2021.05.14</span><br>
				<a href="">
					<span>💕동아리 타이틀💕</span>
				</a><br>
				<span>서울 - 강동구</span><br>
				<span>동아리원 : 69명</span>			
			</div>		
		</div>
		<hr>
		<div>
			<div>
				<a href="">
					<div style="border:1px solid;width:200px; height:100px; float:left"></div>
				</a>
			</div>
			<div>			
				<span>2020.10.11</span><br>
				<a href="">
					<span>🐾동아리 타이틀🐾</span>
				</a><br>
				<span>서울 - 강북구</span><br>
				<span>동아리원 : 34명</span>			
			</div>		
		</div>
		<hr>		
		<div>
			<div>
				<a href="">
					<div style="border:1px solid;width:200px; height:100px; float:left"></div>
				</a>
			</div>
			<div>			
				<span>2020.09.31</span><br>
				<a href="">
					<span>달려라 왕바우~~!!!</span>
				</a><br>
				<span>인천 - 계양구</span><br>
				<span>동아리원 : 15명</span>			
			</div>		
		</div>
		<hr>
		<div>
			<div>
				<a href="">
					<div style="border:1px solid;width:200px; height:100px; float:left"></div>
				</a>
			</div>
			<div>			
				<span>2020.07.11</span><br>
				<a href="">
					<span>국내여행 정복하자!</span>
				</a><br>
				<span>부산 - 해운대구</span><br>
				<span>동아리원 : 15명</span>			
			</div>		
		</div>
		<hr>
		<div>
			<div>
				<a href="">
					<div style="border:1px solid;width:200px; height:100px; float:left"></div>
				</a>
			</div>
			<div>			
				<span>2019.12.25</span><br>
				<a href="">
					<span>여행을 떠나요</span>
				</a><br>
				<span>서울 - 강서구</span><br>
				<span>동아리원 : 105명</span>			
			</div>		
		</div>
	</form>
	
	
	<hr>
	 <div>            
        <p>1 Prev 21 22 23 24 25 26 27 28 29 30 Next 54</p>      
     </div>
     
    <!-- 풋터영역 --> 
    <div>
    	<c:import url="footer.jsp"></c:import>    
    </div> 

</div>
</body>
</html>