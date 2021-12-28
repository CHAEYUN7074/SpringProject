<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>footer.jsp</title>
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
 -->
 <script src="https://kit.fontawesome.com/dab690a483.js" crossorigin="anonymous"></script>
<style type="text/css">

/*reset*/
* {margin: 0;padding: 0;}
body {margin: 0;}
h1, h2, h3, h4, h5, h6, p, ul, ol, li, dl, dt, dd {margin: 0; padding: 0;}
h1, h2, h3, h4, h5, h6 {font-weight: 700; }
a {color: inherit; text-decoration: inherit;}
img {vertical-align: middle;}
a img {border: none;}
li {list-style: none;}
address, em, i, ul {font-style: normal;}

/*layout*/
.mo {display: none;}
.en {font-family: 'Exo 2', sans-serif;}
body {font-family: 'Noto Sans KR', sans-serif; font-size: 14px;}
.wrap {margin: 0 auto; }

*
{
   margin: 0;
   padding: 0;
   font-family: 'Noto Sans KR', sans-serif;
}

footer
{
    max-height: 30vh;
    position: relative;
    width: 100%;
    height: 300px;
    bottom: 0px;
    
   /*
   width: 100%;
   bottom: 0px;
   position: absolute;
   height: 300px;
   display: flex;
   justify-content: center;
   */
   background-color: #FFD34E;
}

.container
{
  max-width: 1170px;
  width: 100%;
  padding-top: 50px;
  padding-bottom: 0;
  height: 100%;
  /* min-height: 100%; */
}

.footer-menu
{
  display: flex;
  justify-content: space-between;
  height: 180px;
}

.first-box
{
  width: 60%;
  display: flex;
  justify-content: space-between;
}

.second-box
{
  width: 40%;
  display: flex;
  justify-content: flex-end;
}

.column {
  display: flex;
  flex-direction: column;
  padding: 0 15px;
}

.sub-title {
  color: white;
  font-weight: 900;
  margin: 20px 0px;
  font-size: 20px;
}

.footer-menu-item
{
   text-decoration: none;
  padding-bottom: 15px;
  padding-top: 3px;
  font-size: 16px;
  color: white;
}

.footer-menu-item:hover
{
   color: #105B63;
}

.icon-box {
  width: 54px;
  height: 54px;
  background-color: white;
  border-radius: 50%;
  margin-right: 15px;
  display: flex;
  justify-content: center;
  align-items: center;
}

.icon {
  font-size: 24px;
}
.icon:hover {
  color: #105B63;
}

.first-line
{
  color: #919496;
  display: flex;
  justify-content: flex-end;
  font-size: 12px;
}
</style>
</head>
<body>


<!-- Footer -->
<footer>
      <div class="container">
          <div class="footer-menu">
              <div class="first-box">
                  <div>
                      <img src="./image/logo.png" width=132>
                  </div>
                  <!-- <div class="column col-3 col-6-medium col-12-small"> -->
                  <div class="column">

                      <div class="sub-title">B:CLE</div>
                      <a href="#" class="footer-menu-item">B:CLE 소개</a>
                      <a href="#" class="footer-menu-item">동아리 개설</a>
                      <a href="#" class="footer-menu-item">대표 게시판</a>

                  </div>
                  <div class="column">
                      <div class="sub-title">고객센터</div>
                      <a href="#" class="footer-menu-item">FAQ</a>
                      <a href="#" class="footer-menu-item">비회원문의</a>
                      <a href="#" class="footer-menu-item">이용약관</a>
                  </div>
                  <div class="column">
                      <div class="sub-title">Contact Us</div>
                      <a href="#" class="footer-menu-item">주소 : 서울특별시 마포구 월드컵북로 21 4층 풍성빌딩</a>
                      <a href="#" class="footer-menu-item">02)1234-5678</a>
                      <a href="#" class="footer-menu-item">깃헙 주소</a>
                  </div>
              </div>

              <div class="second-box">
                  <div class="icon-box">
                      <i class="fab fa-instagram icon"></i>
                  </div>
                  <div class="icon-box">
                      <i class="fab fa-twitter icon"></i>
                  </div>
                  <div class="icon-box">
                      <i class="fab fa-facebook-f icon"></i>
                  </div>
              </div>
          </div>
      </div>
</footer>



</body>
</html>