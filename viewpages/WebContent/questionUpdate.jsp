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
<title>beeHelloUpdate.jsp</title>
<title>beenoticeUpdate.jsp</title>
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
<script type="text/javascript">
   function sendIt()
   {
      f = document.myForm;
      
      // 제목 입력 확인 --------------------------------------
      str = f.subject.value;
      str = str.trim();
      
      // ※ javascript 에는 trim() 이 존재하지 않음.
      //    외부에서 참조한 util.js 에 만들어두었음.
      
      // 테스트
      //alert("|" + str + "|"); 
      
      if(!str)
      {
         alert("\n제목을 입력하세요~!!!");
         f.subject.focus();
         return;
      }
      // -------------------------------------- 제목 입력 확인
      
      // 이름 입력 확인 --------------------------------------
      str = f.name.value;
      str = str.trim();
      
      if(!str)
      {
         alert("\n작성자 이름을 입력하세요~!!!");
         f.name.focus();
         return;
      }
      
      //  --------------------------------------이름 입력 확인
      
      
    
      
      f.action = "<%=cp%>/beeHelloCreated_ok.jsp";
      f.submit();
      
      
   }
</script>
</head>
<body>
<!--  
	questionUpdate.jsp
	- 동아리 내 게시판 > 문의하기 > 수정 / 삭제하기
-->
<div id="bbs">

   <div id="bbs_title">
      문의하기
   </div>
   
   <form action="" method="post" name="myForm">
      <div id="bbsCreated">
         <div class="bbsCreated_bottomLine">
            <dl>
               <dt>제&nbsp;&nbsp;&nbsp;&nbsp;목</dt>
               <dd>
                  <input type="text" name="subject" size="60"
                  maxlength="100" class="boxTF"/>
               </dd>
            </dl>
         </div><!-- close .bbsCreated_bottomLine -->
         
         <div class="bbsCreated_bottomLine">
            <dl>
               <dt>작 성 자</dt>
               <dd>
                  무서운칙촉
               </dd>
            </dl>
         </div><!-- close .bbsCreated_bottomLine -->
         
         
         <div id="bbsCreated_content">
            <dl>
               <dt>내&nbsp;&nbsp;&nbsp;&nbsp;용</dt>
               <dd>
                  <textarea rows="10" cols="63" name="content"
                        class="boxTA"></textarea>
               </dd>
            </dl>
         </div><!-- close .bbsCreated_content -->
         
         
         <div id="bbsCreated_footer">
         
         	<!-- Updated_ok.jsp페이지 요청 과정에서 반드시 필요한 데이터  -->
         	<input type="hidden" name="num" value="num" />
         	<input type="hidden" name="pageNum" value="pageNum" />
         	
         	
         	<input type="button" value="수정하기" class="btn2"
            onclick="sendIt()"/>
            <input type="reset" value="다시입력" class="btn2"
            onclick="document.myForm.subject.focus();"/>
            <input type="button" value="수정취소" class="btn2" 
            onclick="javascript:location.href='<%=cp%>/beeHelloList.jsp?pageNum=&num='"/>
            
         </div><!-- close .bbsCreated_footer -->
         
      </div><!-- close .bbsCreated -->
      
   </form>
   
</div><!-- close #bbs -->
</body>
</html>