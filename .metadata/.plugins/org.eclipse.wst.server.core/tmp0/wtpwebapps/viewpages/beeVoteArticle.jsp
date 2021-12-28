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
<title>beeVoteArticle.jsp</title>

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

.row p {
   font-size: 10px;
   margin-left: 3vh;
}

.row {
   margin-left: 10%;
   margin-top: 10%;
}

/* 메인 css */
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
	text-align: center;
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

#bbsCreated_footer 
{
	width:600px;
	overflow: visible;
	clear:both;
	height:50px;
	line-height:50px;
	margin-bottom:20px;
	text-align:center;
}

.topbtn
{
	float: right;
}

.agree
{
	display: flex;
}
</style>

</head>
<body>

<!--  
	beeVoteArticle.jsp
	- 동아리 내 회의 > 투표글 클릭 시 아티클
-->

<div id="bbs">

	<div id="bbs_title">
		회의 > 투표
	</div>
	
	<div class="bbsArticle_bottomLine">
		목록
		이전글
		다음글
	</div>
	
	<form action="">
	<div class="topbtn">
		<input type="button" value="게시글 수정" />
		<input type="button" value="게시글 삭제" />
	</div>
	</form>
	
	<div id="bbsArticle">
	<form>
		<div id="bbsArticle_header">
			게시물의 제목입니다.
		</div>
		
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
			안건<textarea rows="10" cols="65"></textarea>
			
			<div class="agree">
			<div>
			<label><input type="radio" value="agree" name="vote"/> 찬성</label><br><br>
			</div>

		   <!-- modal button -->
		   <div>
		      <a href="#" id="modal1" class="btn btn-success btn-sm"
		         data-bs-toggle="modal" data-bs-target="#employee_details1">찬성</a>
		   </div>
		   
		   <div>
				<span>00표/00%</span>
			</div>
		   
		   </div>
		
		   <!-- Modal -->
		
		   <div class="modal fade" id="employee_details1" tabindex="-1"
		      aria-labelledby="employee_details1" aria-hidden="true">
		      <div class="modal-dialog">
		         <div class="modal-content">
		            <div class="modal-header">
		               <h5 class="modal-title" id="exampleModalLabel">찬성</h5>
		               <button type="button" class="btn-close" data-bs-dismiss="modal"
		                  aria-label="닫기"></button>
		            </div>
		            <div class="row">
		               <div class="col-lg-4">
		                  <a href="#"> <svg class="bd-placeholder-img rounded-circle"
		                        width="80" height="80" xmlns="http://www.w3.org/2000/svg"
		                        role="img" aria-label="Placeholder: 80x80"
		                        preserveAspectRatio="xMidYMid slice" focusable="false">
		               <title>Placeholder</title><rect width="100%" height="100%"
		                           fill="#777" />
		               <text x="50%" y="50%" fill="#777" dy=".3em">80x80</text></svg>
		
		                     <p>닉네임</p>
		                  </a>
		               </div>
		               <!-- /.col-lg-4 -->
		               <div class="col-lg-4">
		                  <a href="#"> <svg class="bd-placeholder-img rounded-circle"
		                        width="80" height="80" xmlns="http://www.w3.org/2000/svg"
		                        role="img" aria-label="Placeholder: 80x80"
		                        preserveAspectRatio="xMidYMid slice" focusable="false">
		               <title>Placeholder</title><rect width="100%" height="100%"
		                           fill="#777" />
		               <text x="50%" y="50%" fill="#777" dy=".3em">80x80</text></svg>
		
		                     <p>닉네임</p>
		                  </a>
		               </div>
		               <!-- /.col-lg-4 -->
		               <div class="col-lg-4">
		                  <a href="#"> <svg class="bd-placeholder-img rounded-circle"
		                        width="80" height="80" xmlns="http://www.w3.org/2000/svg"
		                        role="img" aria-label="Placeholder: 80x80"
		                        preserveAspectRatio="xMidYMid slice" focusable="false">
		               <title>Placeholder</title><rect width="100%" height="100%"
		                           fill="#777" />
		               <text x="50%" y="50%" fill="#777" dy=".3em">80x80</text></svg>
		
		                     <p>닉네임</p>
		                  </a>
		               </div>
		               <!-- /.col-lg-4 -->
		            </div>
		            <!-- /.row -->
		
		            <div class="row">
		               <div class="col-lg-4">
		                  <a href="modal2.jsp"> <svg
		                        class="bd-placeholder-img rounded-circle" width="80" height="80"
		                        xmlns="http://www.w3.org/2000/svg" role="img"
		                        aria-label="Placeholder: 80x80"
		                        preserveAspectRatio="xMidYMid slice" focusable="false">
		               <title>Placeholder</title><rect width="100%" height="100%"
		                           fill="#777" />
		               <text x="50%" y="50%" fill="#777" dy=".3em">80x80</text></svg>
		
		                     <p>닉네임</p>
		                  </a>
		               </div>
		               <!-- /.col-lg-4 -->
		               <div class="col-lg-4">
		                  <a href="#"> <svg class="bd-placeholder-img rounded-circle"
		                        width="80" height="80" xmlns="http://www.w3.org/2000/svg"
		                        role="img" aria-label="Placeholder: 80x80"
		                        preserveAspectRatio="xMidYMid slice" focusable="false">
		               <title>Placeholder</title><rect width="100%" height="100%"
		                           fill="#777" />
		               <text x="50%" y="50%" fill="#777" dy=".3em">80x80</text></svg>
		
		                     <p>닉네임</p>
		                  </a>
		               </div>
		               <!-- /.col-lg-4 -->
		               <!-- 이중모달 연결 -->
		               <div class="col-lg-4">
		                  <a href="#" data-bs-toggle="modal"
		                     data-bs-target="#employee_details2"> <svg
		                        class="bd-placeholder-img rounded-circle" width="80" height="80"
		                        xmlns="http://www.w3.org/2000/svg" role="img"
		                        aria-label="Placeholder: 80x80"
		                        preserveAspectRatio="xMidYMid slice" focusable="false">
		               <title>Placeholder</title><rect width="100%" height="100%"
		                           fill="#777" />
		               <text x="50%" y="50%" fill="#777" dy=".3em">80x80</text></svg>
		
		                     <p>닉네임</p></a> </a>
		               </div>
		
		               <div></div>
		               <!-- /.col-lg-4 -->
		               <div class="modal-footer">
		                  <button type="button" class="btn btn-secondary"
		                     data-bs-dismiss="modal">Close</button>
		
		               </div>
					</div>
				</div>
			</div>
		</div>	
		
		
		
			<div class="agree">
			<div>
			<label><input type="radio" value="agree" name="vote"/> 반대</label><br><br>
			</div>

		   <!-- modal button -->
		   <div>
		      <a href="#" id="modal1" class="btn btn-success btn-sm"
		         data-bs-toggle="modal" data-bs-target="#employee_details1">반대</a>
		   </div>
		   
		   <div>
				<span>00표/00%</span>
			</div>
		   </div>
		
		   <!-- Modal -->
		
		   <div class="modal fade" id="employee_details1" tabindex="-1"
		      aria-labelledby="employee_details1" aria-hidden="true">
		      <div class="modal-dialog">
		         <div class="modal-content">
		            <div class="modal-header">
		               <h5 class="modal-title" id="exampleModalLabel">반대</h5>
		               <button type="button" class="btn-close" data-bs-dismiss="modal"
		                  aria-label="닫기"></button>
		            </div>
		            <div class="row">
		               <div class="col-lg-4">
		                  <a href="#"> <svg class="bd-placeholder-img rounded-circle"
		                        width="80" height="80" xmlns="http://www.w3.org/2000/svg"
		                        role="img" aria-label="Placeholder: 80x80"
		                        preserveAspectRatio="xMidYMid slice" focusable="false">
		               <title>Placeholder</title><rect width="100%" height="100%"
		                           fill="#777" />
		               <text x="50%" y="50%" fill="#777" dy=".3em">80x80</text></svg>
		
		                     <p>닉네임</p>
		                  </a>
		               </div>
		               <!-- /.col-lg-4 -->
		               <div class="col-lg-4">
		                  <a href="#"> <svg class="bd-placeholder-img rounded-circle"
		                        width="80" height="80" xmlns="http://www.w3.org/2000/svg"
		                        role="img" aria-label="Placeholder: 80x80"
		                        preserveAspectRatio="xMidYMid slice" focusable="false">
		               <title>Placeholder</title><rect width="100%" height="100%"
		                           fill="#777" />
		               <text x="50%" y="50%" fill="#777" dy=".3em">80x80</text></svg>
		
		                     <p>닉네임</p>
		                  </a>
		               </div>
		               <!-- /.col-lg-4 -->
		               <div class="col-lg-4">
		                  <a href="#"> <svg class="bd-placeholder-img rounded-circle"
		                        width="80" height="80" xmlns="http://www.w3.org/2000/svg"
		                        role="img" aria-label="Placeholder: 80x80"
		                        preserveAspectRatio="xMidYMid slice" focusable="false">
		               <title>Placeholder</title><rect width="100%" height="100%"
		                           fill="#777" />
		               <text x="50%" y="50%" fill="#777" dy=".3em">80x80</text></svg>
		
		                     <p>닉네임</p>
		                  </a>
		               </div>
		               <!-- /.col-lg-4 -->
		            </div>
		            <!-- /.row -->
		
		            <div class="row">
		               <div class="col-lg-4">
		                  <a href="modal2.jsp"> <svg
		                        class="bd-placeholder-img rounded-circle" width="80" height="80"
		                        xmlns="http://www.w3.org/2000/svg" role="img"
		                        aria-label="Placeholder: 80x80"
		                        preserveAspectRatio="xMidYMid slice" focusable="false">
		               <title>Placeholder</title><rect width="100%" height="100%"
		                           fill="#777" />
		               <text x="50%" y="50%" fill="#777" dy=".3em">80x80</text></svg>
		
		                     <p>닉네임</p>
		                  </a>
		               </div>
		               <!-- /.col-lg-4 -->
		               <div class="col-lg-4">
		                  <a href="#"> <svg class="bd-placeholder-img rounded-circle"
		                        width="80" height="80" xmlns="http://www.w3.org/2000/svg"
		                        role="img" aria-label="Placeholder: 80x80"
		                        preserveAspectRatio="xMidYMid slice" focusable="false">
		               <title>Placeholder</title><rect width="100%" height="100%"
		                           fill="#777" />
		               <text x="50%" y="50%" fill="#777" dy=".3em">80x80</text></svg>
		
		                     <p>닉네임</p>
		                  </a>
		               </div>
		               <!-- /.col-lg-4 -->
		               <!-- 이중모달 연결 -->
		               <div class="col-lg-4">
		                  <a href="#" data-bs-toggle="modal"
		                     data-bs-target="#employee_details2"> <svg
		                        class="bd-placeholder-img rounded-circle" width="80" height="80"
		                        xmlns="http://www.w3.org/2000/svg" role="img"
		                        aria-label="Placeholder: 80x80"
		                        preserveAspectRatio="xMidYMid slice" focusable="false">
		               <title>Placeholder</title><rect width="100%" height="100%"
		                           fill="#777" />
		               <text x="50%" y="50%" fill="#777" dy=".3em">80x80</text></svg>
		
		                     <p>닉네임</p></a> </a>
		               </div>
		
		               <div></div>
		               <!-- /.col-lg-4 -->
		               <div class="modal-footer">
		                  <button type="button" class="btn btn-secondary"
		                     data-bs-dismiss="modal">Close</button>
		
		               </div>
					</div>
				</div>
			</div>
		</div>	
		</div>
		
		
	<div id="bbsArticle_footer">
		<input type="button" value="제출하기" class="btn2"
		onclick=""/>
		<input type="button" value="결과 확인" class="btn2" 
		onclick=""/>
	</div>
	</form>
		
	</div><!-- close #bbsArticle -->

			
</div><!-- close #bbs -->


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