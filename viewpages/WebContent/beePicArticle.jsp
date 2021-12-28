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
<title>beeHelloArticle.jsp</title>

<!-- 모달을 위한 링크 -->
<link rel="stylesheet" href="css/font-awesome.min.css">
<!-- Bootstrap CSS -->
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
   crossorigin="anonymous">


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


/* 아티클 CSS */
#bbs 
{
	width:600px;
	margin:30px auto;
	text-align:left;
}

#bbs_title 
{
	width:574px;
	/* padding-left:20px; */
	height:40px;
	/* border:3px solid #D6D4A6; */
	text-align:left;
	font-weight: bold;
	line-height:40px;
	font-size:15pt;
	margin-bottom:30px;
}

#bbsArticle 
{
	width:600px;
	overflow: visible;
	border-top:3px solid #E6D4A6;
	border-bottom:3px solid #E6D4A6;
	text-align:left;
}

#bbsArticle_header 
{
	height:35px;
	line-height:35px;
	border-bottom:2px solid #DBDBDB;
	text-align:center;
}
#bbsArticle dl
{
	margin: 0px;
}
#bbsArticle dt 
{
	float:left;
	height:35px;
	width:60px;
	line-height:35px;
	text-align:center;
	background-color:#EEEEEE;
}

#bbsArticle dd 
{
	float:left;
	height:35px;
	width:150px;
	line-height:35px;
	text-align:left;
	padding-left:10px;
}

.bbsArticle_bottomLine 
{
	height:35px;
	line-height:35px;
	border-bottom:1px solid #DBDBDB;
	clear:both;
	text-align:left;
}

.bbsArticle_noLine 
{
	height:35px;
	line-height:35px;
	clear:both;
	text-align:left;
}

#bbsArticle_content 
{
    overflow: visible;
    border-bottom:1px solid #DBDBDB;
    text-align:left;
    min-height:250px;
    padding: 20px 60px 20px 60px;
    word-break:break-all;
}

#bbsArticle_footer 
{
	clear:both;
	height:32px;
	line-height:32px;
	margin-bottom:20px;
}

#bbsArticle_footer #leftFooter
{
	float:left;
	width:300px;
	text-align:left;
}

#bbsArticle_footer #rightFooter
{
	float:right;
	width:300px;
	text-align:right;
}

.btnimg
{
	text-align: right;
}

/* 모달 css */
@import
   url('https://fonts.googleapis.com/css?family=Exo+2|Noto+Sans+KR&display=swap')
   ;

.row p {
   font-size: 10px;
   margin-left: 3vh;
}

.row {
   margin-left: 10%;
   margin-top: 10%;
}

.modal-footer {
   display: flex;
   flex-wrap: wrap;
   flex-shrink: 0;
   align-items: center;
   justify-content: center;
   padding: .75rem;
   border-top: 0px solid #dee2e6;
   border-bottom-right-radius: calc(.3rem - 1px);
   border-bottom-left-radius: calc(.3rem - 1px);
   padding: .75rem;
}

.btn-secondary {
   color: #fff;
   background-color: #6c757d;
   border-color: #6c757d;
   margin-right: 7vh;
}


</style>
</head>
<body>

<!--  
	beePicArticle.jsp
	- 동아리 내 게시판 > 사진첩클릭 시 아티클
-->

<div id="bbs">

	<div id="bbs_title">
		사진첩
	</div>
	
	<div class="bbsArticle_bottomLine">
		<a href="">목록</a>
		<a href="">이전글</a>
		<a href="">다음글</a>
	</div>
	
	<!-- 동아리원일 때 아닐때 나눠서 버튼 작동하게 해야함!! -->
	<!-- modal button -->
	<div class="btnimg">
	      <a href="#" id="modal1" class="btn btn-success btn-sm"
	         data-bs-toggle="modal" data-bs-target="#employee_details1">수정하기</a>
	   
	      <a href="#" id="modal1" class="btn btn-success btn-sm"
	         data-bs-toggle="modal" data-bs-target="#employee_details1">삭제하기</a>
		<img src="" alt="신고이미지"  />
	</div>
	
	
   <!-- Modal -->
   <!-- 권한 창 -->
   <div class="modal fade" id="employee_details1" tabindex="-1"
      aria-labelledby="employee_details1" aria-hidden="true">
      <div class="modal-dialog">
         <div class="modal-content">
            <div class="modal-header">
               <h5 class="modal-title" id="exampleModalLabel">권한이 없습니다.</h5>
               <button type="button" class="btn-close" data-bs-dismiss="modal"
                  aria-label="닫기"></button>
            </div>
         </div>
      </div>
   </div><!-- close Modal  -->


	<form>
		<div id="bbsArticle">
			<div class="bbsArticle_bottomLine">
				<dl>
					<dt>작성자</dt>
					<dd>비클러</dd>
					
					<dt>등록일</dt>
					<dd>2021-12-05</dd>
				</dl>
			</div>
			
			<div class="bbsArticle_bottomLine">
				<dl>
					<dt>조회수</dt>
					<dd>251</dd>
				</dl>
			</div>
			
			<div id="bbsArticle_content">
				<img alt="메인사진" src="http://twogive.com/shop/upload/mall/2019/key/main1.jpg"
				style="width: 500px;">
			</div>
			
			
			
		</div><!-- close #bbsArticle -->
	</form><!-- close form -->
	
			
</div><!-- close #bbs -->

	<!-- 모달창 스크립트 -->
	<script
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"
      integrity="sha384-eMNCOe7tC1doHpGoWe/6oMVemdAVTMs2xqW4mwXrXsW0L84Iytr2wi5v2QjrP/xp"
      crossorigin="anonymous"></script>
   <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js"
      integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/"
      crossorigin="anonymous"></script>
   <script>
      $(document).ready(function()
      {

         $('#employee_details2').on('beforeShow', function()
         {
            console.log('Submodal beforeShow event');
         }).on('show', function()
         {
            console.log('Submodal show event');
         }).on('beforeHide', function()
         {
            console.log('Submodal beforeHide event');
         }).on('hide', function()
         {
            console.log('Submodal hide event');
         });

      });
   </script>

</body>
</html>