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
<title>MyInfoUpdate.jsp</title>
<style type="text/css">
/* .outer {
  display: flex;
  align-items: center; 
  flex-direction: row; 
  justify-content: center; 
}
.inner {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
} */
</style>
</head>
<body>
<!-- 
MyInfoUpdate.jsp
 - 마이페이지 - 회원정보 수정페이지
 -->

<!-- nav 영역 -->
<div>
	<c:import url="nav.jsp"></c:import>
</div>

<!-- 메뉴 영역 -->
<div>
		<!-- 마이페이지 사이드탭 아직 미완성 완성되면 추가하기 -->
		<%-- <c:import url="mainSideTab.jsp"></c:import> --%>
</div>
	
<div class="outer">
	<div class="inner">
		<form action="">
			<div>
				프로필 사진 설정 란
				<input type="button" value="수정">
			</div>
			아이디 <input type="text" value="원래아이디" disabled="disabled">
			<!-- <span>수정불가.</span> --><br>
			<!-- 비밀번호 변경하고싶다면 여기서 변경! -->
			비밀번호 <input type="text" value="********" ><br>
			비밀번호 재확인 <input type="text" value="********" ><br>
			이름 <input type="text" value="원래이름"><br>
			이메일 <input type="text" value="원래이메일" disabled="disabled"><br>
			주민번호 <input type="text" value="990919" disabled="disabled" > - <input type="text" value="*******" disabled="disabled"><br>
			연락처 <input type="text" value="010"> - <input type="text" value="1111"> - <input type="text" value="2222"><br>
			닉네임<input type="text" value="초록기린"><input type="button" value="중복확인"><input type="button" value="랜덤생성">
			<div>
				지역 설정<br>
				<!-- 지역 3개 다 차있는데 추가하려는 경우 밑의 문구 알림 -->
				<span>지역은 최대 3개 설정가능합니다. </span><br>
				<!-- 지역을 다 삭제한 경우(설정을 하나도 안한경우) -->
				<span>지역은 최소 1개 설정해야합니다.</span><br>
				시 
				<select name="" id="">
					<option value="0">시 단위</option>
				</select>
				군·구
				<select name="" id="">
					<option value="0">군·구 단위</option>
				</select><br>
				<input type="text" value="내지역1"><input type="text" value="내지역2"><input type="text" value="내지역3">
			</div>
			<div>
				관심카테고리
				<!-- 카테고리 5개 다 차있는데 추가하려는 경우 밑의 문구 알림 -->
				<span>지역은 최대 3개 설정가능합니다. </span><br>
				<!-- 카테고리를 다 삭제한 경우(설정을 하나도 안한경우) -->
				<span>관심카테고리는 최소 1개 설정해야합니다.</span><br>
				<select name="" id="">
					<option value="0">카테고리 선택</option>
				</select><br>
				<input type="text" value="내카테고리1"><input type="text" value="내카테고리2"><input type="text" value="내카테고리3">
				<input type="text" value="내카테고리4"><input type="text" value="내카테고리5">
			</div>
			<!-- 빈 항목이 있는 경우  -->
			<!-- <span>비어있는 항목들을 모두 입력해주세요.</span> --><br>
			
			<div>
				<a href="">회원탈퇴</a>
			</div>
			<div>
			<input type="button" value="수정하기">
			<input type="button" value="취소">
			<input type="reset" value="모두지우기">
			</div>
		</form>
	</div>
</div>


</body>
</html>