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
<title>LoginPage.jsp</title>

<link rel="stylesheet" href="css/bootstrap.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

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
	background-color: orange;
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
.rightform
{
	text-align: center;
}


#login
{
	border: 1px solid #ccc;
	border-radius: 5px;
	width: 100vh;
	padding: 15px;
	margin: 15vh 50vh;
}






</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">
	
	$(document).ready(function()
	{
		$("#submitBtn").click(function()
		{
			// 테스트
			//alert("확");
			$("#err").css("display", "none");
			
			if($("#id").val()=="" || $("#pw").val()=="")
			{
				$("#err").html("항목을 모두 입력해야 합니다.").css("display","inline");
				return
			}
			
			$("#loginForm").submit();
				
		});
	});
	
</script>
</head>
<body>
 
<div class="bg">
	<div>
		<c:import url="/nav.action"></c:import>
	</div>

	<div class="t-box" id="login">
		<div class="left">
			<div>
				<div><h2>반갑습니다</h2></div>
				<div><h3>비클에 오신 것을  환영합니다.</h3></div>
				<br><br>
			</div>
			
			<div class="rightform">
				<form action="login.action" method="post" id="loginForm">
					<div class="form-group" style="margin-left: 120px;">
						아이디
						<label for="userId">
							<input type="text" id="userId" name="userId" placeholder="아이디를 입력하세요." 
							required="required" class="form-control"/>
						</label>
						
						<input type="checkbox" id="admin" name="admin" value="0" />
						<label for="admin">admin</label><br>
					</div>
					
					<div class="form-group" style="margin-left: 50px;">
						패스워드
						<label for="pwd">
							<input type="password" id="pwd" name="pwd" placeholder="패스워드를 입력하세요." 
							required="required" class="form-control"/>
						</label>
						
					</div>
					
					<div style="margin-left: 50px;" >
					<a href="findid.action">아이디 찾기</a>
					<a href="findingpassword.action">비밀번호 찾기</a>
					<a href="joinform.action">회원가입</a>
					</div>
					<br>
					
					<div>
						<input type="button" value="로그인" class="btn btn-default" id="submitBtn" />
						<input type="reset" value="취소" id="resetBtn" class="btn btn-default"/>
						<br><br>
						<span id="err" style="color: red;display: none;"></span>
					</div>
				</form>
			</div>
			
		</div>
	</div>
	
	
	
	
	<div>
		<c:import url="footer.jsp"></c:import>
	</div>
</div>

</body>
</html>