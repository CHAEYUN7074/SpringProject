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
<title>ClubCreate.jsp</title>
</head>
<body>
	<!-- 
ClubCreate.jsp
- 동아리장 - 동아리 개설하기(발의하기)

 -->

	<div class="wrap">
		<!-- 네브 영역 -->
		<div>
			<c:import url="nav.jsp"></c:import>
		</div>

		<!-- 콘텐츠 영역 -->
		<div id="content">
			<h1>[ 동아리 발의 ]</h1>
			<hr>

			<div>
				<form action="">
					<div>
						<p>동아리명<input type="text" placeholder="동아리명 입력"></p>
						<!-- 글등록할때도 작성자명 안보이는데 굳이 왜 동아리장 보여줘야함? 본인인데 -->
						<p>동아리장<input type="text" placeholder="발의자닉넴" disabled="disabled">
						<!-- 개설 안될수도있는데 개설예정일을....? 발의일이 아닐까? -->
						개설예정일<input type="text" placeholder="자동입력" disabled="disabled">
						<!-- 근데 발의일도 굳이 보여줘야할까? 등록되면 거기서 보여주면 되지 여기서? -->
						</p>
						<div>
							<!-- 카테고리도 당연히 대분류/소분류 두개 선택해야하는거 아닌가? -->
							카테고리
							<select>
								<option valeu="대분류0" selected="selected"> 카테고리 대분류</option>
								<option value="대분류1">1.여행</option>
								<option value="대분류2">2</option>
								<option value="대분류3">3</option>
								<option value="대분류4">4</option>
								<option value="대분류5">5</option>
								<option value="대분류6">6</option>
								<option value="대분류7">7</option>
								<option value="대분류8">8</option>
								<option value="대분류9">9</option>
								<option value="대분류10">10</option>
								<option value="대분류11">11</option>
								<option value="대분류12">12</option>								
							</select>
							<select>
								<!-- 대분류에 따라 달라지는 소분류 -->
								<option valeu="소분류0" selected="selected"> 카테고리 소분류</option>
								<option value="소분류1">1</option>
								<option value="소분류2">2</option>
								<option value="소분류3">3</option>
								<option value="소분류4">4</option>
								<option value="소분류5">5</option>							
							</select>
						</div>
						<p>가입 최대인원 설정<input type="text"></p>
						<div>
							<p>내용</p>
							<textarea rows="10" cols="70">
							</textarea>
						</div>
						<div>
							<c:import url="beePicCreated.jsp"></c:import>
						</div>
						
						<div>
							<h5>동아리 가입시 제한조건(옵션)</h5>
							<!-- 지역 옵션 대분류만 줄꺼? -->
							<div>
								지역
								<select>
									<option>대분류</option>
									<option>대분류2</option>
								</select>
							</div>
							<div>
								연령&nbsp;
								최소<input type="text">&nbsp;
								최대<input type="text">
								<span>※동아리장이 성인이면 10대만 모집하는것은 불가능합니다.</span>
							</div>
							
							<div>
								<input type="button" value="개설발의">
								<input type="button" value="취소">
								
							</div>
							
						</div>
						
					</div>				
				</form>
			</div>
		</div>

	</div>




</body>
</html>