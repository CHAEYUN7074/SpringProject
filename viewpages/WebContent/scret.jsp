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
<title>scret.jsp</title>
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

section.main 
{
	width: 100%; 
	height: 100vh; 
	background: url(images/모자이크.png)no-repeat center/cover; 
	position: relative; 
	background-attachment: fixed;	
}

.lock 
{
   /* margin: 0 auto;  */
   display: flex;
   justify-content: center;
   align-items:center;
   min-height: 100vh;
   text-align: center;
}



img
{
   width: 100px;
   height: 100px;
   display: block;
   margin:auto;
}

</style>
</head>
<body>
<!-- 
   scret.jsp
   이 페이지를 보려면 동아리에 가입해주세요.
-->
<section class="main">
<div class="lock">
   <div id="text">
   <img src="images/lock.png" alt="" />   
   이 페이지를 보려면 동아리에 가입해 주세요.
   </div>
</div>
   
</section>>



</body>
</html>