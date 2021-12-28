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
<title>SearchMainPage.jsp</title>
</head>
<body>
<!-- 
메인화면(로그인 전) 페이지 2 -⑦ 전체검색

 -->

<div>
    <!-- 네브 영역 -->
     <div>
        <c:import url="nav.jsp"></c:import>
     </div>
     
     <!-- 콘텐츠 영역 -->
     <div>
	     <div>
	         <form action="">
	            <input type="text" value="검색한 [동아리]검색어" class="search" />
	            <input type="button"  value="검색">
	         </form>
	     </div>

		<div>
			<form action="">
				<table class="table" >
				<!-- 대표게시판 검색 결과 -->
		           <tr>
		              <!-- 항목 5EA -->
		              <th>순번</th>
		              <th>글제목</th>
		              <th>작성자</th>
		              <th>작성일</th>
		              <th>조회수</th>
		           </tr>
		           
		           <tr>
		              <td>1</td>
		              <td>동아리는 어케 가입해염?</td>
		              <td>홍길동</td>
		              <td>2021.12.11</td>
		              <td>3</td>
		           </tr>
		           <tr>
		              <td>2</td>
		              <td>우리 동아리 오셈</td>
		              <td>고길동</td>
		              <td>2021.12.10</td>
		              <td>13</td>
		           </tr>
		           <tr>
		              <td>3</td>
		              <td>이 동아리 사이트는....</td>
		              <td>나는야닉네임</td>
		              <td>2021.12.11</td>
		              <td>10</td>
		           </tr>
		           <tr>
		             <td>4</td>
		              <td>동아리추천해볼게요~~~~~</td>
		              <td>노랑병아리</td>
		              <td>2021.12.01</td>
		              <td>5</td>
		           </tr>
				</table>
				<div>
					<a href="">
		           		<p>대표게시판 검색 결과 더보기 >></p>
		           	</a>
				</div>		
			</form>	
		</div>
	
		<div>
			<form action="">
				<table class="table" >
				<!-- 동아리 검색 결과 -->
		           <tr>
		              <!-- 항목 5EA -->
		              <th>순번</th>
		              <th>동아리명</th>
		              <th>동아리개설일</th>
		              <th>동아리 지역</th>
		              <th>동아리원수</th>
		           </tr>
		           
		           <tr>
		              <td>1</td>
		              <td>동아리명~!~!</td>
		              <td>2021.12.11</td>		              
		              <td>서울</td>
		              <td>23</td>
		           </tr>
		           <tr>
		              <td>2</td>
		              <td>우리 동아리는 달리자동아리</td>
		              <td>2021.12.10</td>		              
		              <td>인천</td>
		              <td>13</td>
		           </tr>
		           <tr>
		              <td>3</td>
		              <td>주식동아리</td>		              
		              <td>2021.12.11</td>
		              <td>서울</td>
		              <td>110</td>
		           </tr>
		           <tr>
		             <td>4</td>
		              <td>노래 동아리~~~~~</td>
		              <td>2021.12.01</td>
		              <td>대전</td>
		              <td>5</td>
		           </tr>
				</table>
				<div>
					<a href="">
		           		<p>동아리 검색 결과 더보기 >></p>
		           	</a>
				</div>		
			</form>	
		</div>
		
		<div>
			<form action="">
				<table class="table" >
				<!-- 예비 동아리 검색 결과 -->
		           <tr>
		              <!-- 항목 5EA -->
		              <th>순번</th>
		              <th>동아리명</th>
		              <th>발의일</th>
		              <th>동아리 지역</th>
		              <th>카테고리</th>
		           </tr>
		           
		           <tr>
		              <td>1</td>
		              <td>동아리명~!~!</td>
		              <td>2021.12.11</td>		              
		              <td>서울</td>
		              <td>운동</td>
		           </tr>
		           <tr>
		              <td>2</td>
		              <td>우리 동아리는 달리자동아리</td>
		              <td>2021.12.10</td>		              
		              <td>인천</td>
		              <td>운동</td>
		           </tr>
		           <tr>
		              <td>3</td>
		              <td>주식동아리</td>		              
		              <td>2021.12.11</td>
		              <td>서울</td>
		              <td>공부</td>
		           </tr>
		           <tr>
		             <td>4</td>
		              <td>노래 동아리~~~~~</td>
		              <td>2021.12.01</td>
		              <td>대전</td>
		              <td>문화</td>
		           </tr>
				</table>
				<div>
					<a href="">
		           		<p>예비동아리 검색 결과 더보기 >></p>
		           	</a>
				</div>		
			</form>	
		</div>
		 
	      
	      <!-- 풋터영역 -->
	      <div>
	      	<c:import url="footer.jsp"></c:import>
	     </div>
     
     </div>
</div>

</body>
</html>