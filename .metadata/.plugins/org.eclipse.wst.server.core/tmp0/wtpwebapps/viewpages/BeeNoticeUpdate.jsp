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
<title>BeeNoticeUpdate.jsp</title>
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

/* 여기서부터 update css */
#bbs 
{
	width:600px;
	margin:30px auto;
	text-align:left;
}

#bbs_title 
{
	width:574px;
	padding-left:20px;
	height:40px;
	border:3px solid #D6D4A6;
	text-align:left;
	font-weight: bold;
	line-height:40px;
	font-size:10pt;
	margin-bottom:30px;
}

#bbsCreated 
{
	width:600px;
	overflow: visible;
	border-top:3px solid #DBDBDB;
	border-bottom:3px solid #DBDBDB;
	text-align:left;
}

.bbsCreated_bottomLine 
{
	height:35px;
	line-height:35px;
	border-bottom:1px solid #DBDBDB;
	clear:both;
	text-align:left;
}

.bbsCreated_noLine 
{
	height:35px;
	line-height:35px;
	clear:both;
	text-align:left;
}

#bbsCreated_content 
{
	height:170px;
	line-height:170px;
	border-bottom:1px solid #DBDBDB;
	clear:both;
	text-align:left;
}

#bbsCreated dt 
{
	float:left;
	height:35px;
	width:80px;
	line-height:35px;
	text-align:left;
	padding-left:20px;
	background-color:#EEEEEE;
}

#bbsCreated dd 
{
	float:left;
	height:35px;
	width:440px;
	line-height:35px;
	text-align:left;
	padding-left:10px;
}

#bbsCreated_content dt 
{
	float:left;
	height:170px;
	width:80px;
	text-align:left;
	padding-left:20px;
	background-color:#EEEEEE;
}

#bbsCreated_content dd 
{
	float:left;
	height:170px;
	width:440px;
	line-height:170px;
	text-align:left;
	padding-left:10px;
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

</style>
<script type="text/javascript" src="<%=cp%>/js/util.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

		$(document).ready(function()
		{		
			// 수정 버튼이 클릭되었을 때 수행해야 할 코드 처리
			$("#submitBtn").click(function()
			{
				//alert("클릭확인");
				//데이터 검사(누락된 입력값이 있는지 없는지에 대한 여부 확인)
		         if( $("#title").val()=="" || $("#content").val()=="")
		         {
		            $("#err").html("필수 입력 항목이 누락되었습니다.");
		            $("#err").css("display", "inline");
		            return; //--submit 액션 처리 중단
		         }
				
		         //alert("클릭확인2");
				// 폼 submit 액션 처리 수행
				$("#beenoticeForm").submit();	
				//alert("클릭확인3");
			});
			
		});
</script>
</head>
<body>

<!--
	beenoticeUpdate.jsp
	동아리 내 게시판 > 공지사항 > 수정하기
-->

<div id="bbs">

   <div id="bbs_title">
      [공지사항]
   </div>
   
   <form action="beenoticeupdate.action?beeId=${beenotice.beeId }" method="post" id="beenoticeForm">
      <div id="bbsCreated">
         <div class="bbsCreated_bottomLine">
            <dl>
               <dt>제&nbsp;&nbsp;&nbsp;&nbsp;목</dt>
               <dd>
                  <input type="text" name="title" size="60" id="title"
                  maxlength="100" class="boxTF" value="${beenotice.title}"/>
               </dd>
            </dl>
         </div><!-- close .bbsCreated_bottomLine -->
         
         <!-- <div class="bbsCreated_bottomLine">
            <dl>
               <dt>작 성 자</dt>
               <dd>
                  <input type="text" name="name" size="35"
                  maxlength="20" class="boxTF"/>
               </dd>
            </dl>
         </div>close .bbsCreated_bottomLine -->         
         
         <div id="bbsCreated_content">
            <dl>
               <dt>내&nbsp;&nbsp;&nbsp;&nbsp;용</dt>
               <dd>
                  <textarea rows="10" cols="63" name="content" id="content"
                        class="boxTA">${beenotice.content}</textarea>
               </dd>
            </dl>
         </div><!-- close .bbsCreated_content -->
         
         
         <div id="bbsCreated_footer">
         	
            <input type="button" value="수정하기" class="btn2" id="submitBtn"/>
            <input type="button" value="수정취소" class="btn2" id="listBtn"
            onclick="location.href='beenoticelist.action'"/>
            
            <span id="err" style="color: red; font-weight: bold; display: none;"></span>
         </div><!-- close .bbsCreated_footer -->
         
      </div><!-- close .bbsCreated -->
      
   </form>
   
</div><!-- close #bbs -->


</body>
</html>