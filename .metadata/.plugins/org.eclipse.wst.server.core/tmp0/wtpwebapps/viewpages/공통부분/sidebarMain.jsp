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
<title>sidebarMain.jsp</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
<style type="text/css">
* {
   margin: 0;
   padding: 0;
}

/* 사이드 메뉴 */
.left_menu {
   /* position: fixed; */
   width: 30vh;
   height: 100vh;
   z-index: 10;
   background: #FFFAD5;
   /* border-right: 1px solid rgba(0, 0, 0, 0.07); */
   bottom: 50px;
   height: 100%;
   margin-top: 0px;
   padding-bottom: 0px;
   /* box-shadow: 0 0px 24px 0 rgb(0 0 0 / 6%), 0 1px 0px 0 rgb(0 0 0 / 2%); */
   color: white;
   overflow: hidden;
}

.sub_menu {
   margin-top: 50px;
}

.left_menu>.sub_menu li:hover {
   color: ff5858;
   background-color: #e1e1e1;
}

.left_menu>.sub_menu li {
   color: black;
   font-size: 17px;
   font-weight: 600;
   padding: 20px 0px 8px 14px;
}

.sub_menu>h2 {
   padding-bottom: 4px;
   margin-top: 30px;
   font-size: 21px;
   font-weight: 600;
   color: #333;
   margin-left: 10px;
   margin-right: 10px;
   font-family: 'NotoKrB';
   line-height: 35px;
}

.sub_menu .fas {
   color: #ff5858;
   font-size: 20px;
   line-height: 20px;
   float: right;
   margin-right: 20px;
}

.sub_menu>.big_menu>.small_menu li {
   color: #797979;
   font-size: 14px;
   font-weight: 600;
   margin-left: 14px;
   padding-top: 8px;
}

.big_menu {
   cursor: pointer;
}

ul {
   padding-inline-start: 0px;
}

a {
   color: #797979;
   text-decoration: none;
   background-color: transparent;
}

ul {
   list-style: none;
}

ol, ul {
   margin-top: 0;
   margin-bottom: 10px;
}

.has_sub {
   width: 100%;
}

.hide_sidemenu {
   display: none;
}

.background {
    background-color: #FFFAD5;
    width: 30vh;
    height: 100%;
}

/* 화면에 높이 꽉차게 하려고 추가한 css (부모한테 적용 필요) */
html, body {

    margin: 0;
    height: 100%;
    overflow: hidden;
    
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        /* $(".left_sub_menu").hide(); */
        $(".has_sub").click(function () {
            $(".left_sub_menu").fadeToggle(300);
        });
        // 왼쪽메뉴 드롭다운
        $(".sub_menu ul.small_menu").hide();
        $(".sub_menu ul.big_menu").click(function () {
            $("ul", this).slideToggle(300);
        });
        
        /* 
        // 외부 클릭 시 좌측 사이드 메뉴 숨기기
        $('.overlay').on('click', function () {
            $('.left_sub_menu').fadeOut();
            $('.hide_sidemenu').fadeIn();
        });
         */
    });
</script>
</head>
<body>
<div id="wrapper">
	    <!-- 왼쪽 서브 메뉴 -->
	    <div class="background">
	    <div class="left_menu">
	        <div class="sub_menu">
	            <h2>대표 게시판</h2>
	            <ul class="big_menu">
	                <li>자유글</li>
	            </ul>
	            <ul class="big_menu">
	                <li>모임홍보</li>
	            </ul>
	            <!-- <ul class="big_menu">
	                <li>카테고리<i class="arrow fas fa-angle-right"></i></li>
	                <ul class="small_menu">
	                    <li><a href="#">여행</a></li>
						<li><a href="#">요리/베이킹</a></li>
						<li><a href="#">건강/운동</a></li>
						<li><a href="#">공연/축제</a></li>
						<li><a href="#">음악</a></li>
						<li><a href="#">라이프</a></li>
						<li><a href="#">교육/스터디</a></li>
						<li><a href="#">창작/디자인</a></li>
						<li><a href="#">사진/영상</a></li>
						<li><a href="#">게임/오락</a></li>
						<li><a href="#">자유주제</a></li>
	                </ul>
	            </ul> -->
	            
	        </div>
	    </div>
	    </div>
</div>

</body>
</html>