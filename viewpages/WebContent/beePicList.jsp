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
<title>beePicList.jsp</title>
<style type="text/css">

body {
  /* padding: 20px; */
  font-family: sans-serif;
  background: #f2f2f2;
}
img {
  width: 100%; /* need to overwrite inline dimensions */
  height: auto;
}
h2 {
  margin-bottom: .5em;
}
.grid-container {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
  grid-gap: 1em;
}

.child-page-listing
{
	margin: 0 30vh;
	margin-bottom: 10vh;
}

/* hover styles */
.location-listing {
  position: relative;
}

.location-image {
  line-height: 0;
  overflow: hidden;
}

.location-image img {
  filter: blur(0px);
  transition: filter 0.3s ease-in;
  transform: scale(1.1);
}

.location-title {
	margin: 0 auto;
  font-size: 1.5em;
  font-weight: bold;
  text-decoration: none;
  z-index: 1;
  position: absolute;
  height: 100%;
  width: 100%;
  top: 0;
  left: 0;
  opacity: 0;
  transition: opacity .5s;
  background: rgba(90,0,10,0.4);
  color: white;
  
  /* position the text in t’ middle*/
  display: flex;
  align-items: center;
  justify-content: center;
}

.location-listing:hover .location-title {
  opacity: 1;
}

.location-listing:hover .location-image img {
  filter: blur(2px);
}


/* 미디어 쿼리 사용! 사진위에 호버하면 모자이크처리 */
@media (hover: none) { 
  .location-title 
  {
    opacity: 1;
    text-align: center;
  }
  .location-image img 
  {
    filter: blur(2px);
  }
}

.pic_header
{
	display: flex;
	justify-content: space-between;
	margin: 3vh;
}

</style>
</head>
<body>

<!--  
	beePicList.jsp
	- 동아리 내 게시판 > 사진첩
-->

<!-- 전체 div  -->
<div>
	<!-- 네브 영역 -->
	<div>
		<c:import url="nav.jsp"></c:import>
	</div>
	
	<!-- 동아리 메인 영역 -->
	<div>
		<c:import url="meetingmain.jsp"></c:import>
	</div>

	<!-- 콘텐츠 영역 -->
	<div class="child-page-listing">
		
	<div class="pic_header">	
		<div>
			사진첩
		</div>
		<div>
			<form action="">
				<select style="width: 120px;">
					<option value="new">최신 날짜 순</option>
					<option value="old">오래 된 날짜 순</option>
				</select>
				
				<input type="button" value="사진올리기" class="btn2" 
				onclick="javascript:location.href='<%=cp %>/beePicCreated.jsp'">
			</form>
			
		</div>
		
	</div>
	   
	   
	  <div class="grid-container">
	
	    <article id="3685" class="location-listing">
	
	      <a class="location-title" href="#">
	          2021년 12월 21일 <br> 발랄한호두과자 <br>           
	      </a>
	
	      <div class="location-image">
	        <a href="#">
	            <img width="300" height="169" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/san-fransisco-768x432.jpg" alt="san francisco">    </a>
	
	      </div>
	
	    </article>
	
	    <article id="3688" class="location-listing">
	
	      <a class="location-title" href="#">
	          2021년 12월 22일 <br> 발랄한 <br>             
	      </a>
	
	      <div class="location-image">
	        <a href="#">
	            <img width="300" height="169" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/london-768x432.jpg" alt="london">  </a>
	
	      </div>
	
	    </article>
	
	    <article id="3691" class="location-listing">
	
	      <a class="location-title" href="#">
	          2021년 12월 23일 <br> 호두과자 <br>             
	      </a>
	
	      <div class="location-image">
	        <a href="#">
	            <img width="300" height="169" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/new-york-768x432.jpg" alt="new york">  </a>
	
	      </div>
	
	    </article>
	
	    <article id="3694" class="location-listing">
	
	      <a class="location-title" href="#">
	      	2021년 12월 24일 <br> 냠냠냠 <br>             
	      </a>
	
	      <div class="location-image">
	        <a href="#">
	            <img width="300" height="169" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/cape-town-768x432.jpg" alt="cape town">  </a>
	
	      </div>
	
	    </article>
	
	    <article id="3697" class="location-listing">
	
	      <a class="location-title" href="#">
	      	2021년 12월 25일 <br> 메리메리크리스마스 <br>             
	      </a>
	
	      <div class="location-image">
	        <a href="#">
	            <img width="300" height="169" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/beijing-768x432.jpg" alt="beijing">    </a>
	
	      </div>
	
	    </article>
	
	    <article id="3700" class="location-listing">
	
	      <a class="location-title" href="#">
	      	2021년 12월 26일 <br> ㅇㅅㅇ!! <br>             
	      </a>
	
	      <div class="location-image">
	        <a href="#">
	            <img width="300" height="169" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/paris-768x432.jpg" alt="paris">          
	          </a>
	      </div>
	
	    </article>
	    <article id="3700" class="location-listing">
	
	      <a class="location-title" href="#">
	      	2021년 12월 27일 <br> 빨간단팥빵 <br>             
	      </a>
	
	      <div class="location-image">
	        <a href="#">
	            <img width="300" height="169" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/san-fransisco-768x432.jpg" alt="san francisco">          
	          </a>
	      </div>
	
	    </article>
	    <article id="3700" class="location-listing">
	
	      <a class="location-title" href="#">
	      	2021년 12월 28일 <br> 파란코코넛칩 <br>             
	      </a>
	
	      <div class="location-image">
	        <a href="#">
	            <img width="300" height="169" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/paris-768x432.jpg" alt="paris">          
	          </a>
	      </div>
	
	    </article>
	    <article id="3700" class="location-listing">
	
	      <a class="location-title" href="#">
	      	2021년 12월 29일 <br> 분홍색커피 <br>             
	      </a>
	
	      <div class="location-image">
	        <a href="#">
	            <img width="300" height="169" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/cape-town-768x432.jpg" alt="cape town">          
	          </a>
	      </div>
	
	    </article>
	    <article id="3700" class="location-listing">
	
	      <a class="location-title" href="#">
	      	2021년 12월 30일 <br> 졸린컴퓨터 <br>             
	      </a>
	
	      <div class="location-image">
	        <a href="#">
	            <img width="300" height="169" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/paris-768x432.jpg" alt="paris">          
	          </a>
	      </div>
	
	    </article>
	
	  </div>
	  <!-- end grid container -->
	
	</div>
	
	<!-- 푸터 영역 -->
	<div>
		<c:import url="footer2.jsp"></c:import>
	</div>
	
</div>

</body>
</html>