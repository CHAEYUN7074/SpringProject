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
<title>MyInfoPassword.jsp</title>
</head>
<body>
	<!-- 
- MyInfoPassword.jsp
- 마이페이지 - 회원정보 수정 클릭 시 비밀번호 확인
- 마이페이지 - 사이트 탈퇴 시 비밀번호 확인 
 -->


<!-- 네브 영역 -->
<div>
	<c:import url="nav.jsp"></c:import>
</div>

<div>
	<!-- 메뉴 영역 -->
	<div>
		<!-- 마이페이지 사이드탭 아직 미완성 -->
		<%-- <c:import url="mainSideTab.jsp"></c:import> --%>
	</div>


	<!-- 콘텐츠 영역 -->
	<div id="content" style="margin-left: 30vh;">
		<div>
			<form action="">
				<h2>비밀번호를 입력해주세요.</h2>
			
				<p>내 비밀번호</p>
				<input type="text" placeholder="비밀번호 입력" />
				<input type="button"  value="확인"/>
				<input type="button"  value="취소"/>
				
			</form>			
		</div>		

		
	</div>
	<!-- 풋터영역 -->
      <div>
         <c:import url="footer.jsp"></c:import>
      </div> 
</div>



</body>
</html>