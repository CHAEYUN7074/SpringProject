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
<title>sidebarAdmin.jsp</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
<style type="text/css">
*
{
	margin: 0;
	padding: 0;
}

/* 사이드 메뉴 */
.left_menu 
{
    /* position: fixed; */
    width: 30vh;
    height: 100vh;
    z-index: 10;
  	background: #FFFAD5;
    border-right: 1px solid rgba(0, 0, 0, 0.07);
    bottom: 50px;
    height: 100%;
    margin-top: 0px;
    padding-bottom: 0px;
    /* box-shadow: 0 0px 24px 0 rgb(0 0 0 / 6%), 0 1px 0px 0 rgb(0 0 0 / 2%); */
    color: white;
    overflow:hidden;
}

.sub_menu 
{
    margin-top: 50px;
}

.left_menu>.sub_menu li:hover 
{
    color: ff5858;
    background-color: #e1e1e1;
}

.left_menu>.sub_menu li 
{
    color: black;
    font-size: 17px;
    font-weight: 600;
    padding: 20px 0px 8px 14px;
}

.sub_menu>h2 
{
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

.sub_menu .fas 
{
    color: #ff5858;
    font-size: 20px;
    line-height: 20px;
    float: right;
    margin-right: 20px;
}

.sub_menu>.big_menu>.small_menu li 
{
    color: #797979;
    font-size: 14px;
    font-weight: 600;
    margin-left: 14px;
    padding-top: 8px;
}

.big_menu 
{
    cursor: pointer;
}

ul 
{
    padding-inline-start: 0px;
}

a 
{
    color: #797979;
    text-decoration: none;
    background-color: transparent;
}

ul 
{
    list-style: none;
}

ol,
ul 
{
    margin-top: 0;
    margin-bottom: 10px;
}

.has_sub 
{
    width: 100%;
}

.hide_sidemenu 
{
    display: none;
}	

.background
{
	background-color: #ff5858;
	width: 30vh;
	height:100vh;

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
	            <h2>관리자 페이지</h2>
	            <ul class="big_menu">
	                <li>회원 관리<i class="arrow fas fa-angle-right"></i></li>
	                <ul class="small_menu">
	                    <li><a href="#">전체회원</a></li>
						<li><a href="#">휴면회원</a></li>
						<li><a href="#">정지회원</a></li>
						<li><a href="#">영구정지회원</a></li>
						<li><a href="#">탈퇴회원</a></li>
	                </ul>
	            </ul>
	            
	            <ul class="big_menu">
	                <li>동아리 관리<i class="arrow fas fa-angle-right"></i></li>
	                <ul class="small_menu">
	                    <li><a href="#">전체 동아리 리스트</a></li>
						<li><a href="#">유령 동아리</a></li>
						<li><a href="#">휴면 동아리</a></li>
						<li><a href="#">비활성화 동아리</a></li>
						<li><a href="#">종료 동아리</a></li>
	                </ul>
	            </ul>
	            
	            <ul class="big_menu">
	                <li>신고 관리<i class="arrow fas fa-angle-right"></i></li>
	                <ul class="small_menu">
	                    <li><a href="#">컨텐츠 신고 접수</a></li>
						<li><a href="#">동아리 신고 접수</a></li>
						<li><a href="#">삭제 게시글</a></li>
						<li><a href="#">삭제 댓글</a></li>
						<li><a href="#">삭제 동아리</a></li>
	                </ul>
	            </ul>
	            
	            <ul class="big_menu">
	                <li>문의 관리<i class="arrow fas fa-angle-right"></i></li>
	                <ul class="small_menu">
	                    <li><a href="#">1:1 문의 / 비회원 문의</a></li>
						<!-- <li><a href="#">비회원 문의</a></li> -->
						<li><a href="#">자주하는 질문</a></li>
	                </ul>
	            </ul>
	            
	            <ul class="big_menu">
	                <li>홈페이지 관리<i class="arrow fas fa-angle-right"></i></li>
	                <ul class="small_menu">
	                    <li><a href="#">카테고리</a></li>
						<li><a href="#">지역 리스트</a></li>
						<li><a href="#">공지사항</a></li>
	                </ul>
	            </ul>
	            
	            <ul class="big_menu">
	                <li>대표 게시판 관리<i class="arrow fas fa-angle-right"></i></li>
	                <ul class="small_menu">
	                    <li><a href="#">자유글</a></li>
						<li><a href="#">모임홍보</a></li>
						<!-- <li><a href="#">카테고리</a></li> -->
	                </ul>
	            </ul>
	            
	            <ul class="big_menu">
	                <li>관리자 계정 관리</li>
	            </ul>
	            
	        </div>
	    </div>
	    </div>
</div>

</body>
</html>