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
	???????????? ??? ????????????????????? ??????(?????? ?????????, ????????????)
-->

	<div id="bbs">

		<div id="bbs_title">????????????</div>

		<form action="" method="post" name="myForm">
			<div id="bbsCreated">

				<div class="bbsCreated_bottomLine">
					<dl>
						<dt>??? ??? ???</dt>
						<dd>?????????????????????(???????????? ????????????)</dd>
					</dl>
				</div>
				<!-- close .bbsCreated_bottomLine -->

				<div class="bbsCreated_bottomLine">
					<dl>
						<dt>??? ??? ???</dt>
						<dd>2021-12-11</dd>
					</dl>
				</div>
				<!-- close .bbsCreated_bottomLine -->
				<div class="bbsCreated_bottomLine">
					<dl>
						<dt>???????????????</dt>
						<dd>2021-12-11</dd>
					</dl>
				</div>
				<!-- close .bbsCreated_bottomLine -->
				<!-- ?????? -->

				<form action="">
					<div id='image_preview'>

						<input type='file' id='btnAtt' multiple='multiple' />
						<div id='att_zone'
							data-placeholder='????????? ?????? ????????? ?????? ?????? ????????? ??????????????? ????????? ?????????????????? ?????????.'></div>
					</div>
					<div id="bbsCreated_footer">
						<input type="button" value="????????????" class="btn2" /> <input
							type="button" value="????????????" class="btn2"
							onclick="javascript:location.href='<%=cp%>/beePicList.jsp'" />
					</div>
				</form>


			</div>
			<!-- ?????? ?????? -->
			<div id="bbsCreated_footer">
				<input type="button" value="????????????" class="btn2" onclick="sendIt()" />
				<input type="reset" value="????????????" class="btn2"
					onclick="document.myForm.subject.focus();" /> <input type="button"
					value="????????????" class="btn2"
					onclick="javascript:location.href='<%=cp%>/beenoticeList.jsp'" />
			</div>

		</form>

	</div>
	<!-- close #bbs -->

</body>

<script type="text/javascript">
( /* att_zone : ??????????????? ????????? ?????? id, btn : file tag id */
  imageView = function imageView(att_zone, btn){

    var attZone = document.getElementById(att_zone);
    var btnAtt = document.getElementById(btn)
    var sel_files = [];
    
    // ???????????? ?????? ????????? ????????? ?????? div ??????
    var div_style = 'display:inline-block;position:relative;'
                  + 'width:150px;height:120px;margin:5px;border:1px solid #00f;z-index:1';
    // ???????????? ????????? ??????
    var img_style = 'width:100%;height:100%;z-index:none';
    // ??????????????? ???????????? ??????????????? ??????
    var chk_style = 'width:30px;height:30px;position:absolute;font-size:24px;'
                  + 'right:0px;bottom:0px;z-index:999;background-color:rgba(255,255,255,0.1);color:#f00';
  
    btnAtt.onchange = function(e){
      var files = e.target.files;
      var fileArr = Array.prototype.slice.call(files)
      for(f of fileArr){
        imageLoader(f);
      }
    }  
    
  
    // ??????????????? ???????????? ?????? ??????
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
    

    
    /*????????? ??????????????? ????????? ?????? ???????????? */
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
    
    /*????????? ????????? ?????? ?????? checkbox??? ?????? attZone??? ????????? div??? ????????? ?????? */
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