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
<title>DormancyCancel.jsp</title>
</head>
<body>

<!-- 
 DormancyCancel.jsp
-  동아리관리 - 동아리장 - 휴면동아리 처리 해제 창
 -->
 
 <div>
 	<span>
	 	휴면처리 된 동아리입니다.<br>
	 	해제하시려면 인증코드를 입력해주세요.
 	</span>
 </div>
 
 <div>
	 <form action="">
		 <div>
		 	<input type="text" style="width: 20px;">
		 	<input type="text" style="width: 20px;">
		 	<input type="text" style="width: 20px;">
		 	<input type="text" style="width: 20px;">
		 	<input type="text" style="width: 20px;">
		 </div>
	 
	 
		 <div>
		 	<input type="button" value="확인">
		 	<input type="button" value="인증코드 재전송">
		 </div>
	</form>
</div>


</body>
</html>