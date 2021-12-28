<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
   request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>

<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>B:CLE</title>
<link rel="stylesheet" href="css/mainpage.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
   crossorigin="anonymous">

</head>
<body>
   <c:import url="/nav.action"></c:import>      
      <!-- 주요 모임 소개배너 -->
      <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
         <div class="carousel-indicators" >
            <button type="button" data-bs-target="#carouselExampleIndicators"
               data-bs-slide-to="0" class="active" aria-current="true"
               aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators"
               data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators"
               data-bs-slide-to="2" aria-label="Slide 3"></button>
         </div>
         <div class="carousel-inner">
            <div class="carousel-item active">
               <img
                  src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=07f7d7a9-aad7-4692-b8ae-ac83a16b9bc5&mode=raw"
                  class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
               <img
                  src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=e31b152a-0dd0-4a99-90e5-8226de762359&mode=raw"
                  class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
               <img
                  src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=e31b152a-0dd0-4a99-90e5-8226de762359&mode=raw"
                  class="d-block w-100" alt="...">
            </div>
         </div>
         <button class="carousel-control-prev" type="button"
            data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
         </button>
         <button class="carousel-control-next" type="button"
            data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
         </button>
      </div>
      <!--section.about-->
      <c:choose>
         <c:when test="${!empty id }">
            <section class="about">
               <div class="title en">
                  <h2 class="en">
                     Your Choice <span>.</span>
                  </h2>
                  <p>가입한 소모임을 둘러볼까요?</p>
               </div>
               <c:forEach var="club" items="${clubList }">
                  <ul>
                     <li><a href="clubmain.action?cid=${club.cid }">
                           <p class="clubpic">
                              <img src="images/camping.jpg">
                           </p>
                           <div class="text">
                              <h3>${club.title }</h3>
                              <input type="hidden" id=cid name="cid" value="club.cid">
                           </div>
                     </a></li>
                  </ul>
               </c:forEach>
            </section>
         </c:when>
         <c:otherwise>
         </c:otherwise>
      </c:choose>
      
      <!--section.join-->
      <section class="join">
         <div class="title">
            <h2 class="en">HAPPY JOIN <span>.</span></h2>
            <p>비클의 회원이 되시고 새로운 경험을 해보세요!</p>
         </div>

         <button onclick="location.href='joinform.action'">참여하기</button>
      </section>
      
      
      <!--section.search-->
      <section class="search">
      
                  <h2 class="en">Find what you want <span>.</span>
            </h2>
         <form action="">
         <div class="input-group mb-3">
              <input type="text" class="form-control" placeholder="검색할 동아리명을 입력하세요" aria-label="Recipient's username" aria-describedby="basic-addon2">
              <span class="input-group-text" id="basic-addon2"><button>검색하기</button></span>
         </div>
         </form>
         
      </section>
         
      <br><br>
      
      
      <!-- 카테고리 -->
      <div class = "cate">
      <div class="row">
        <div class="col-sm-2">
          <div class="card">
            <div class="card-body" >
            <img src="images/travel.png" alt="">
              <h6 class="card-title">여행</h6>
            </div>
          </div>
        </div>
        <div class="col-sm-2">
          <div class="card">
            <div class="card-body">
            <img src="images/cooking.png" alt="">
              <h6 class="card-title">요리/베이킹</h6>
            </div>
          </div>
        </div>
                <div class="col-sm-2">
          <div class="card">
            <div class="card-body">
            <img src="images/excercise.png" alt="">
              <h6 class="card-title">건강/운동</h6>
            </div>
          </div>
        </div>
                <div class="col-sm-2">
          <div class="card">
            <div class="card-body">
                        <img src="images/party.png" alt="">
              <h6 class="card-title">공연/축제</h6>
            </div>
          </div>
        </div>
                <div class="col-sm-2">
          <div class="card">
            <div class="card-body">
            <img src="images/music.png" alt="">
              <h6 class="card-title">음악</h6>
            </div>
          </div>
        </div>
                <div class="col-sm-2">
          <div class="card">
            <div class="card-body">
            <img src="images/music.png" alt="">
              <h6 class="card-title">라이프</h6>
            </div>
          </div>
        </div>
      </div>
      <br>
      <div class="row">
        <div class="col-sm-2">
          <div class="card">
            <div class="card-body">
            <img src="images/edu.png" alt="">
              <h6 class="card-title">교육/스터디</h6>
            </div>
          </div>
        </div>
        <div class="col-sm-2">
          <div class="card">
            <div class="card-body">
            <img src="images/idea.png" alt="">
              <h6 class="card-title">창작/디자인</h6>
            </div>
          </div>
        </div>
                <div class="col-sm-2">
          <div class="card">
            <div class="card-body">
             <img src="images/camera.png" alt="">
              <h6 class="card-title">사진/영상</h6>
            </div>
          </div>
        </div>
                <div class="col-sm-2">
          <div class="card">
            <div class="card-body">
            <img src="images/game.png" alt="">
              <h6 class="card-title">게임/오락</h6>
            </div>
          </div>
        </div>
                <div class="col-sm-2">
          <div class="card">
            <div class="card-body">
            <img src="images/etc.png" alt="">
              <h6 class="card-title">자유주제</h6>
            </div>
          </div>
        </div>
                <div class="col-sm-2">
          <div class="card">
            <div class="card-body">
            <img src="images/next.png" alt="">
              <h6 class="card-title">Coming Soon<br></h6>
            </div>
          </div>
        </div>
      </div>
      </div>
      
      
      


      <!--section.find-->
      <section class="find">
         <div class="title">
            <h2 class="en">In Our CITY <span>.</span></h2>
            <p>우리 지역의 소모임을 찾아봐요!</p>
         </div>

         <div class="imgBox">
            <div class="inner">
               <div class="bottom">
                  <p>
                     <a href="#">서울</a> &nbsp&nbsp <a href="#">세종</a> &nbsp&nbsp <a
                        href="#">강원</a> &nbsp&nbsp <a href="#">인천</a> <a href="#">서울</a>
                     <span></span> <a href="#">세종</a> <a href="#">강원</a> <a href="#">인천</a>
                  </p>
                  <br><br>
                  <p>
                     <a href="#">서울</a> &nbsp&nbsp <a href="#">세종</a> &nbsp&nbsp <a
                        href="#">강원</a> &nbsp&nbsp <a href="#">인천</a> <a href="#">서울</a>
                     <span></span> <a href="#">세종</a> <a href="#">강원</a> <a href="#">인천</a>
                  </p>
               </div>
            </div>
         </div>
      </section>

      <!--개설예정동아리-->
      <section class="timeup">
         <div class="title">
            <h2>Pre-open Club<span>.</span></h2>
            <p>개설 예정 동아리의 운영진이 되어보세요</p>
         </div>
         <ul>
            <li><a href="#"><p class="clubpic">
                     <img src="images/hobby1.jpg" alt="">
                  </p>
                  <div class="bottom">
                     <p class="color">모임명</p>

                  </div> </a></li>
            <li><a href="#"><p class="clubpic">
                     <img src="images/hobby1.jpg" alt="">
                  </p>
                  <div class="bottom">
                     <p class="color">모임명</p>

                  </div> </a></li>
            <li><a href="#"><p class="clubpic">
                     <img src="images/hobby1.jpg" alt="">
                  </p>
                  <div class="bottom">
                     <p class="color">모임명</p>
                  </div> </a></li>
         </ul>
         <button><a href="clubprelistform.action">더 보기</a></button>
      </section>


   <div>
      <c:import url="footer.jsp"></c:import>
   </div>
   <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"></script>
</body>
</html>