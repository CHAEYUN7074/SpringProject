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
<title>beenoticeCreated.jsp</title>
<style type="text/css">
/*reset*/
* {
	margin: 0;
	padding: 0;
}

body {
	margin: 0;
}

h1, h2, h3, h4, h5, h6, p, ul, ol, li, dl, dt, dd {
	margin: 0;
	padding: 0;
}

h1, h2, h3, h4, h5, h6 {
	font-weight: 700;
}

a {
	color: inherit;
	text-decoration: inherit;
}

img {
	vertical-align: middle;
}

a img {
	border: none;
}

li {
	list-style: none;
}

address, em, i, ul {
	font-style: normal;
}

/*layout*/
.mo {
	display: none;
}

.en {
	font-family: 'Exo 2', sans-serif;
}

body {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 14px;
}

.wrap {
	margin: 0 auto;
}

/* create css */
#bbs {
	width: 600px;
	margin: 30px auto;
	text-align: left;
}

#bbs_title {
	width: 574px;
	padding-left: 20px;
	height: 40px;
	border: 3px solid #D6D4A6;
	text-align: left;
	font-weight: bold;
	line-height: 40px;
	font-size: 10pt;
	margin-bottom: 30px;
}

#bbsCreated {
	width: 600px;
	overflow: visible;
	border-top: 3px solid #DBDBDB;
	border-bottom: 3px solid #DBDBDB;
	text-align: left;
}

.bbsCreated_bottomLine {
	height: 35px;
	line-height: 35px;
	border-bottom: 1px solid #DBDBDB;
	clear: both;
	text-align: left;
}

.bbsCreated_noLine {
	height: 35px;
	line-height: 35px;
	clear: both;
	text-align: left;
}

#bbsCreated_content {
	height: 170px;
	line-height: 170px;
	border-bottom: 1px solid #DBDBDB;
	clear: both;
	text-align: left;
}

#bbsCreated dt {
	float: left;
	height: 35px;
	width: 80px;
	line-height: 35px;
	text-align: left;
	padding-left: 20px;
	background-color: #EEEEEE;
}

#bbsCreated dd {
	float: left;
	height: 35px;
	width: 440px;
	line-height: 35px;
	text-align: left;
	padding-left: 10px;
}

#bbsCreated_content dt {
	float: left;
	height: 170px;
	width: 80px;
	text-align: left;
	padding-left: 20px;
	background-color: #EEEEEE;
}

#bbsCreated_content dd {
	float: left;
	height: 170px;
	width: 440px;
	line-height: 170px;
	text-align: left;
	padding-left: 10px;
}

#bbsCreated_footer {
	width: 600px;
	overflow: visible;
	clear: both;
	height: 50px;
	line-height: 50px;
	margin-bottom: 20px;
	text-align: center;
}
</style>
<script type="text/javascript" src="<%=cp%>/js/util.js"></script>
<script type="text/javascript">
   function sendIt()
   {   
    
      
      f.action = "<%=cp%>
	/reviewCreate_ok.jsp";
		f.submit();

	}
</script>
</head>
<body>

	<!--
	정모종료 시 동아리운영진이 등록(실제 참석자, 대표사진)
-->

	<div id="bbs">

		<div id="bbs_title">정모후기</div>

		<form action="" method="post" name="myForm">
			<div id="bbsCreated">

				<div class="bbsCreated_bottomLine">
					<dl>
						<dt>작 성 자</dt>
						<dd>운영진누구누구(자동으로 받아오기)</dd>
					</dl>
				</div>
				<!-- close .bbsCreated_bottomLine -->

				<div class="bbsCreated_bottomLine">
					<dl>
						<dt>정 모 일</dt>
						<dd>2021-12-11</dd>
					</dl>
				</div>
				<!-- close .bbsCreated_bottomLine -->
				<div class="bbsCreated_bottomLine">
					<dl>
						<dt>실제참석자</dt>
						<dd>2021-12-11</dd>
					</dl>
				</div>
				<!-- close .bbsCreated_bottomLine -->
				<!-- 사진 -->

				<form action="">
					<div id='image_preview'>

						<input type='file' id='btnAtt' multiple='multiple' />
						<div id='att_zone'
							data-placeholder='파일을 첨부 하려면 파일 선택 버튼을 클릭하거나 파일을 드래그앤드롭 하세요.'></div>
					</div>
					<div id="bbsCreated_footer">
						<input type="button" value="등록하기" class="btn2" /> <input
							type="button" value="취소하기" class="btn2"
							onclick="javascript:location.href='<%=cp%>/beePicList.jsp'" />
					</div>
				</form>


			</div>
			<!-- 등록 버튼 -->
			<div id="bbsCreated_footer">
				<input type="button" value="등록하기" class="btn2" onclick="sendIt()" />
				<input type="reset" value="다시입력" class="btn2"
					onclick="document.myForm.subject.focus();" /> <input type="button"
					value="작성취소" class="btn2"
					onclick="javascript:location.href='<%=cp%>/beenoticeList.jsp'" />
			</div>

		</form>

	</div>
	<!-- close #bbs -->

</body>

<script type="text/javascript">
( /* att_zone : 이미지들이 들어갈 위치 id, btn : file tag id */
  imageView = function imageView(att_zone, btn){

    var attZone = document.getElementById(att_zone);
    var btnAtt = document.getElementById(btn)
    var sel_files = [];
    
    // 이미지와 체크 박스를 감싸고 있는 div 속성
    var div_style = 'display:inline-block;position:relative;'
                  + 'width:150px;height:120px;margin:5px;border:1px solid #00f;z-index:1';
    // 미리보기 이미지 속성
    var img_style = 'width:100%;height:100%;z-index:none';
    // 이미지안에 표시되는 체크박스의 속성
    var chk_style = 'width:30px;height:30px;position:absolute;font-size:24px;'
                  + 'right:0px;bottom:0px;z-index:999;background-color:rgba(255,255,255,0.1);color:#f00';
  
    btnAtt.onchange = function(e){
      var files = e.target.files;
      var fileArr = Array.prototype.slice.call(files)
      for(f of fileArr){
        imageLoader(f);
      }
    }  
    
  
    // 탐색기에서 드래그앤 드롭 사용
    attZone.addEventListener('dragenter', function(e){
      e.preventDefault();
      e.stopPropagation();
    }, false)
    
    attZone.addEventListener('dragover', function(e){
      e.preventDefault();
      e.stopPropagation();
      
    }, false)
  
    attZone.addEventListener('drop', function(e){
      var files = {};
      e.preventDefault();
      e.stopPropagation();
      var dt = e.dataTransfer;
      files = dt.files;
      for(f of files){
        imageLoader(f);
      }
      
    }, false)
    

    
    /*첨부된 이미리즐을 배열에 넣고 미리보기 */
    imageLoader = function(file){
      sel_files.push(file);
      var reader = new FileReader();
      reader.onload = function(ee){
        let img = document.createElement('img')
        img.setAttribute('style', img_style)
        img.src = ee.target.result;
        attZone.appendChild(makeDiv(img, file));
      }
      
      reader.readAsDataURL(file);
    }
    
    /*첨부된 파일이 있는 경우 checkbox와 함께 attZone에 추가할 div를 만들어 반환 */
    makeDiv = function(img, file){
      var div = document.createElement('div')
      div.setAttribute('style', div_style)
      
      var btn = document.createElement('input')
      btn.setAttribute('type', 'button')
      btn.setAttribute('value', 'x')
      btn.setAttribute('delFile', file.name);
      btn.setAttribute('style', chk_style);
      btn.onclick = function(ev){
        var ele = ev.srcElement;
        var delFile = ele.getAttribute('delFile');
        for(var i=0 ;i<sel_files.length; i++){
          if(delFile== sel_files[i].name){
            sel_files.splice(i, 1);      
          }
        }
        
        dt = new DataTransfer();
        for(f in sel_files) {
          var file = sel_files[f];
          dt.items.add(file);
        }
        btnAtt.files = dt.files;
        var p = ele.parentNode;
        attZone.removeChild(p)
      }
      div.appendChild(img)
      div.appendChild(btn)
      return div
    }
  }
)('att_zone', 'btnAtt')

</script>



</html>