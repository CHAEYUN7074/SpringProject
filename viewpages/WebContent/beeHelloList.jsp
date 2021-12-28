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
<title>beeHelloList.jsp</title>
<style type="text/css">

#content_footer
{
	display: flex;
	justify-content: space-between;
}

#content
{
	margin: 5vh 30vh 10vh 30vh;
}

.boxsearch
{
	text-align: right;
}

</style>
</head>
<body>
<!--  
	beeHelloList.jsp
	- 동아리 내 게시판 > 가입인사 글 목록
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
         <h1>가입인사</h1>
		</div>
		
		<div class="boxsearch">
			<div class="box">
				<div>
					<form action="" name="categoryForm" method="post">
						<select name="categoryKey" class="selectField">
							<option value="notice">공지</option>
							<option value="talk">자유글</option>
							<option value="greeting" selected="selected">가입인사</option>
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
					</select> <input type="text" name="searchValue" class="textField"> <input
							type="button" value="검색" class="btn2" onclick="sendIt()">
				</form>
			</div>
      	</div>
      	
         <table id="" class="table" >
              <tr>
                 <!-- 항목 8EA -->
                 <th>순번</th>
                 <th>글제목</th>
                 <th>작성자</th>
                 <th>작성일</th>
                 <th>댓글수</th>
                 <th>조회수</th>
              </tr>
              
              <tr>
                 <td>999</td>
                 <td>글제목이다.</td>
                 <td>김기방</td>
                 <td>2021-12-07</td>
                 <td>0</td>
                 <td>1</td>           
              </tr>
              <tr>
                 <td>999</td>
                 <td>글제목이다.</td>
                 <td>김기방</td>
                 <td>2021-12-07</td>
                 <td>0</td>
                 <td>1</td>           
              </tr>
              <tr>
                 <td>999</td>
                 <td>글제목이다.</td>
                 <td>김기방</td>
                 <td>2021-12-07</td>
                 <td>0</td>
                 <td>1</td>           
              </tr>
              <tr>
                 <td>999</td>
                 <td>글제목이다.</td>
                 <td>김기방</td>
                 <td>2021-12-07</td>
                 <td>0</td>
                 <td>1</td>           
              </tr>
              <tr>
                 <td>999</td>
                 <td>글제목이다.</td>
                 <td>김기방</td>
                 <td>2021-12-07</td>
                 <td>0</td>
                 <td>1</td>           
              </tr>
              <tr>
                 <td>999</td>
                 <td>글제목이다.</td>
                 <td>김기방</td>
                 <td>2021-12-07</td>
                 <td>0</td>
                 <td>1</td>           
              </tr>
              <tr>
                 <td>999</td>
                 <td>글제목이다.</td>
                 <td>김기방</td>
                 <td>2021-12-07</td>
                 <td>0</td>
                 <td>1</td>           
              </tr>
              <tr>
                 <td>999</td>
                 <td>글제목이다.</td>
                 <td>김기방</td>
                 <td>2021-12-07</td>
                 <td>0</td>
                 <td>1</td>           
              </tr>
              <tr>
                 <td>999</td>
                 <td>글제목이다.</td>
                 <td>김기방</td>
                 <td>2021-12-07</td>
                 <td>0</td>
                 <td>1</td>           
              </tr>
           
              </table>
        
           
        <div id="content_footer">
         <p>1 Prev 21 22 23 24 25 26 27 28 29 30 Next 54</p>
         <input type="button" value="글쓰기" 
         onclick="javaScript:location.href='<%=cp %>/beeHelloCreated.jsp'"/>
      	</div>   
      	
     </div>
      
    
      
      <!-- 푸터 영역 -->
      <div>
      	<c:import url="footer2.jsp"></c:import>	
      </div>
    


   </div>

</div>

 
 
</body>
</html>