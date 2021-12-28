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
<title>pageInCommon.jsp</title>
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
</style>
</head>
<body>



<div id="bbs">

	<div id="bbs_title">
		회의(메뉴) > 투표(소메뉴)
	</div>
	
	<div class="bbsArticle_bottomLine">
		목록
		이전글
		다음글
	</div>
	
	<div>
		<input type="button" value="게시글 수정" />
		<input type="button" value="게시글 삭제" />
	</div>
	
	<div id="bbsArticle">
	
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
			<table style="width: 600">
				<tr>
					<td style="padding: 10px 40px 10px 10px; vertical-align: top; height: 150">
						어쩌구 저쩌구 이러쿵 저러쿵 내용입니다.<br>
					</td>
				</tr>
			</table>
		</div>
		
		
	</div><!-- close #bbsArticle -->

			
</div><!-- close #bbs -->


</body>
</html>