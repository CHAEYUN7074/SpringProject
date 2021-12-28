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
<title>beeMeetingArticle.jsp</title>

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

.profile
{
	display: flex;
}
.congratulation
{
	text-align: center;
}

.circle
{
	width: 80px;
	height: 80px;
	border-radius:50%;
	background:orange;
	margin : 10%;
}

</style>
</head>
<body>

<!--  
	beeMeetingArticle.jsp
	- 동아리 내 회의 > 모집글 클릭 시 아티클
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
	
	<div id="bbsArticle">
	<form>
		<div id="bbsArticle_header">
			게시물의 제목입니다. /  등록일 + 직책  + ‘모집’(자동 등록 시)
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
			<div class="box">
				<div>
					<select name="categoryKey" class="selectField">
						<option value="leader" selected="selected">동아리장</option>
						<option value="manager">총무</option>
						<option value="staff">스태프</option>
					</select>
				</div>
			</div>
			
			<div>
				모집인원 <input type="text"/>명
			</div>
			
			<div>
			모집 기준<textarea rows="10" cols="65"></textarea>
			</div>
					
		</div>	
		
		<div id="bbsCreated_footer">
            <input type="button" value="수정하기" class="btn2"
            onclick="sendIt()"/>
            <input type="button" value="수정취소" class="btn2" 
            onclick="javascript:location.href='<%=cp%>/beeDiscussionList.jsp'"/>
         </div><!-- close .bbsCreated_footer -->
         
	</form>
		
	</div><!-- close #bbsArticle -->

			
</div><!-- close #bbs -->

</body>
</html>