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
<title>LoginPageAdmin.jsp</title>
<style type="text/css">

.bg
{
	position: relative;	
	text-align: center;
}
.t-box
{
	display: flex;
	margin: 0 auto; 
	width: 900px; 

}
.right
{
	flex: 1;
	height: 500px; 
}

.left
{
	float: right;
	flex: 1;
	
}

.info {
	background-color: orange;
	width: 70vh;
	height: 30vh;
}

.upper {
	display: flex;
	background-color: gray;
}

</style>
</head>
<body>

<!-- 
<div class="bg">
	<div class="t-box">
	
		<div class="right" style="background-color: skyblue;">
			right
		</div>
		
		<div class="left" style="background-color: gray;">
			left
		</div>
	</div>
</div>
 -->

 
<div class="bg">
	<div class="t-box">
		<div class="right">
			B:CLE
		</div>
		
		<div class="left">
			<div>
				<div><h2>관리자 로그인화면</h2></div>
				<div><h3>관리자만 로그인할 수 있습니다.</h3></div>
			</div>
			
			<div>
				<form action="">
					아이디<input type="text" id="id" name="id"/><br>
					패스워드<input type="password" id="pwd" name="pwd"/><br>
					
					<a href="">아이디 찾기</a>
					<a href="">비밀번호 찾기</a>
					<br>
					<input type="button" value="로그인">
					<input type="button" value="취소">
				</form>
			</div>
			
			<div>
					<a href="">회원 로그인하기</a>
			</div>
		</div>
	</div>
</div>

</body>
</html>