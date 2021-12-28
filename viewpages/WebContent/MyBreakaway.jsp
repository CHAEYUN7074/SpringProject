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
<title>MyBreakaway.jsp</title>
</head>
<body>
<!-- 
- MyBreakaway.jsp
- 마이페이지 - 회원 탈퇴

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
				<h2>BE:CLE을 정말 탈퇴하시겠습니까?</h2>
				<h3>지금까지의 모든 기록이 삭제되며,
					재가입시 패널티는 똑같이 적용됩니다.</h3>
				
				<input type="button"  value="탈퇴하기"/>
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