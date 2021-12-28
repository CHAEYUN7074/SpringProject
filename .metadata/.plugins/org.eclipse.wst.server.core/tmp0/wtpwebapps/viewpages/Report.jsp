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
<title>Report.jsp</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Exo+2|Noto+Sans+KR&display=swap');

	body {font-family: 'Noto Sans KR', sans-serif; font-size: 14px;}
</style>

</head>
<body>

<!-- 신고하기 폼 -->
<div>
	<form action="">
		<div>
			<h1>신고하기</h1>
		</div>
		<br>
		
		<div>
			작성자 <input type="text" class="txt" disabled="disabled" value="작성자자동입력"><br>
			글제목 <input type="text" class="txt" disabled="disabled" value="글제목자동입력"><br>
		</div>
		<br>
		
		<div>
			<table border="1">
				<tr>
					<td>
					<input type="checkbox" name="reason" value="1"> 음란 또는 청소년에게 부적합한 내용 
					</td>
				</tr>
				<tr>
					<td>
				 	 <input type="checkbox" name="reason" value="2"> 폭력성
					</td>
				</tr>
				<tr>
					<td>
					<input type="checkbox" name="reason" value="3"> 권리침해  
					</td>
				</tr>
				<tr>
					<td>
					<input type="checkbox" name="reason" value="4"> 부적절한 홍보 게시물(개인사업/불법홍보) 
					</td>
				</tr>
				<tr>
					<td>
					<input type="checkbox" name="reason" value="5"> 기타  
					</td>
				</tr>
			</table>
			<br>
			기타 사유 <!-- 추후에 기타 선택시 보이게끔 처리 -->
			<input type="text" class="txt" style="width: 250px;" disabled="disabled"><br>
			<br>
		</div>
		<div>
			<input type="button" value="신고">
			<input type="button" value="취소">
		</div>
	</form>
</div>
</body>
</html>