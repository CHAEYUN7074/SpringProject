<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="pageObject" tagdir="/WEB-INF/tags" %>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BeeNoticeList.jsp</title>
<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css">
<style type="text/css">

/*    .left
   {
      float: left;
   }
   .right
   {
      float: right;
   }
 */
#wrap {
	min-height: 100vh;
	position: relative;
	width: 100%;
}

#footer {
	display: flex;
	justify-content: space-between;
}

#content {
	margin: 5vh 30vh 10vh 30vh;
}

.boxsearch {
	text-align: right;
}
</style>
</head>
<body>


<!-- 
 BeenoticeList.jsp
-  동아리 내 게시판 > 공지사항
-->
	<div id="wrap">
		<div>
			<!-- 메뉴 영역 -->
			 <c:import url="nav.jsp"></c:import> 

			<!-- 사이드바 영역  -->

			<!-- 동아리 공통 메인 -->
			 <c:import url="meetingmain.jsp"></c:import> 


			<!-- 콘텐츠 영역 -->
			<div id="content">
				<div>
					<h1>[공지사항]</h1>
				</div>

				<div class="boxsearch">
					<div class="box">
						<div>
							<form action="" name="categoryForm" method="post">
								<select name="categoryKey" class="selectField">
									<option value="notice" selected="selected">공지사항</option>
									<option value="talk">자유글</option>
									<option value="greeting">가입인사</option>
									<option value="review">정모후기</option>
									<option value="question">문의글</option>
								</select>
							</form>
						</div>
					</div>

					<div id="search">
						<form action="" name="searchForm" method="post">
							<select name="searchKey" class="selectField">
								<option value="subject">제목</option>
								<option value="name">작성자</option>
							</select> <input type="text" name="searchValue" class="textField">
							<input type="button" value="검색" class="btn2" onclick="sendIt()">
						</form>
					</div>
				</div>
				<div>
					<table id="freeboards" class="table">
						<tr>
							<!-- 항목 5EA -->
							<th>순번</th>
							<th>글제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>조회수</th>
						</tr>
						<!--     <tr>
			                 <td>999</td>
			                 <td>글제목이다.</td>
			                 <td>김기방</td>
			                 <td>2021-12-07</td>
			                 <td>1</td>           
			              </tr>
			              <tr>
			                 <td>999</td>
			                 <td>글제목이다.</td>
			                 <td>김기방</td>
			                 <td>2021-12-07</td>
			                 <td>1</td>           
			              </tr> -->
						<c:forEach var="beenotice" items="${beenoticeList }">
							<tr>
								<td>${beenotice.beeId }</td>
								<td>
									<a href="beenoticearticle.action?beeId=${beenotice.beeId}" style="text-decoration: none;">
										${beenotice.title }
									</a>
								</td>
								<td>${beenotice.nickName }</td>
								<td>${beenotice.beeDate }</td>
								<td>${beenotice.cnt }</td>
							</tr>
						</c:forEach>
	
	
					</table>
				</div>

				<div id="footer">
					<!-- 페이징 처리 -->
					<pageObject:pageNav listURI="beenoticelist.action" pageObject="${pageObject }" />

				</div>

				<div>
					<input type="button" value="글쓰기"
						onclick="location.href='beenoticeinsertform.action'" />
				</div>

			</div>



			<!-- 푸터 영역 -->
			<%-- <div>
				<c:import url="footer2.jsp"></c:import>	
			</div>
 --%>


		</div>

	</div>


</body>
</html>