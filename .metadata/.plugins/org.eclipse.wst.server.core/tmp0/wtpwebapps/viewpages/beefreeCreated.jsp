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
<title>beefreeCreated.jsp</title>
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

/* create css */
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
      
      
    
      
      f.action = "<%=cp%>/beefreeCreated_ok.jsp";
      f.submit();
      
      
   }
   
   /* 이미지 첨부하기 스크립트 */
   var submit = document.getElementById('submitButton');
   submit.onclick = showImage; //Submit 버튼 클릭시 이미지 보여주기

   function showImage()
   {
      var newImage = document.getElementById('image-show').lastElementChild;
      newImage.style.visibility = "visible";

      document.getElementById('image-upload').style.visibility = 'hidden';

      document.getElementById('fileName').textContent = null; //기존 파일 이름 지우기
   }

   function loadFile(input)
   {
      var file = input.files[0];

      var name = document.getElementById('fileName');
      name.textContent = file.name;

      var newImage = document.createElement("img");
      newImage.setAttribute("class", 'img');

      newImage.src = URL.createObjectURL(file);

      newImage.style.width = "50%";
      newImage.style.height = "30%";
      newImage.style.visibility = "hidden"; //버튼을 누르기 전까지는 이미지 숨기기
      newImage.style.objectFit = "contain";

      var container = document.getElementById('image-show');
      container.appendChild(newImage);
   };
</script>
</head>
<body>
<!--  
	beefreeCreated.jsp
	- 동아리 내 게시판 > 자유글 > 등록하기
-->

<div id="bbs">

   <div id="bbs_title">
      자유글
   </div>
   
   <form action="" method="post" name="myForm" enctype="multipart/form-data">
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
                  <input type="text" name="name" size="35"
                  maxlength="20" class="boxTF"/>
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
         
         <!-- 이미지 첨부하기 -->
         <div class="image-show" id="image-show">
            <span id=upload class="btn1"> 
            	<label for="chooseFile"></label>
            </span> 
            <input multiple="multiple" type="file" id="chooseFile" name="chooseFile[]"
               accept="image/*" onchange="loadFile(this)">
         
	         <div class="fileContainer">
	            <div class="fileInput">
	               <span>FILE NAME:</span> <span id="fileName"></span>
	            </div>
	            <div class="buttonContainer">
	               <button type="button" class="submitButton" id="submitButton">등록</button>
	            </div>
	            
	         </div>
         </div>
         
         <div id="bbsCreated_footer">
            <input type="button" value="등록하기" class="btn2"
            onclick="sendIt()"/>
            <input type="reset" value="다시입력" class="btn2"
            onclick="document.myForm.subject.focus();"/>
            <input type="button" value="작성취소" class="btn2" 
            onclick="javascript:location.href='<%=cp%>/beefreeList.jsp'"/>
         </div><!-- close .bbsCreated_footer -->
         
      </div><!-- close .bbsCreated -->
      
   </form>
   
</div><!-- close #bbs -->

</body>
</html>