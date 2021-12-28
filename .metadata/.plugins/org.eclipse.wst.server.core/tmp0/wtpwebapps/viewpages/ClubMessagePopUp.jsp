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
<title>MessagePopUp.jsp</title>
<style type="text/css">
#imp
{
	margin-top: 0px; 
	/* margin-left:50px;  */
	width : 100px;
  	background-color: rgba(255,192,0);
  	display: inline-block;	
  	text-align: center;
}
</style>
</head>
<body>

<div style="width : 1600px; height: 100px;
  	background-color: rgba(255,192,0); text-align:center; display: table-cell; vertical-align: middle;">꼭 읽어보세요!</div>
<div>
지원자 선정 및 관리 방식
</div>

<br>

<div>
동아리 가개설을 하실 때 등록한 동아리원의 최대 인원 수를 초과하여 지원자를 받을 수 없습니다.
</div>

<br>

<div id="imp">선정</div>
<div style="display: inline-block;">선정 버튼을 눌러 지원자를 운영진으로 등록합니다. 운영진의 최대 인원수는 동아리원의
 10퍼센트를 초과할 수 없습니다.
 </div>
 
<br><br>

<div id="imp">수락</div>
<div style="display: inline-block;">동아리 운영진으로 선정하지 않은 회원들 중 일반회원으로 가입을 승인하실 수 있습니다.</div>

<br><br>

<div id="imp">거절</div>
<div style="display: inline-block;">동아리 성격에 맞지 않는 지원자는 동아리 가입을 승인하지 않을 수 있습니다.</div>

<br>
<br>

<div>
🔸 동아리장이 선정, 수락, 거절을 하였더라도 개설 예정 단계에서는 회원이 가입을 취소할 수 있습니다.
</div>

</body>
</html>