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
<title>conferenceList.jsp</title>
<style type="text/css">

/*reset*/
* {margin: 0;padding: 0;}
body {margin: 0;}
h1, h2, h3, h4, h5, h6, p, ul, ol, li, dl, dt, dd {margin: 0; padding: 0;}
h1, h2, h3, h4, h5, h6 {font-weight: 700; }
a {color: inherit; text-decoration: inherit;}
img {vertical-align: middle;}
a img {border: none;}
li {list-style: none;}
address, em, i, ul {font-style: normal;}

/*layout*/
.mo {display: none;}
.en {font-family: 'Exo 2', sans-serif;}
body {font-family: 'Noto Sans KR', sans-serif; font-size: 14px;}
.wrap {margin: 0 auto; }



</style>
</head>
<body>

<!-- 
 conferenceList.jsp
-  동아리 관리자 페이지 - 회원관리 - 회의 리스트

 -->

   <div class="wrap">
      <!-- 네브 영역 -->
      <div>
         <c:import url="nav.jsp"></c:import>
      </div>
      
      <!-- 메뉴 영역 -->
      <%-- <div>
         <c:import url="beeAdminPageSideTab.jsp"></c:import>
      </div> --%>


     <!-- 콘텐츠 영역 -->
      <div id="content" style="margin-left: 30vh;">
         <h1>[ 회의 목록 ]</h1>
         <hr>

         <div>
            
            <form action="">
               <input type="text" value="투표" class="type" disabled="disabled" />
               <input type="text" value="모집" class="type" disabled="disabled"/>
               <input type="text" value="검색어입력" class="search" />
               <button type="button">검색</button>
            </form>
            완료된 안건 안보기<input type="checkbox">
         </div>
         
         
          <table id="conferenceList" class="table" >
           <tr>
              <!-- 항목 6EA -->
              <th>말머리</th>
              <th>순번</th>
              <th>글제목</th>
              <th>작성자</th>
              <th>작성일</th>
              <th>조회수</th>              
           </tr>
           
           <tr>
              <td>[모집]</td>
              <td>4</td>
              <td>총무를 모집합니다!!!!!</td>
              <td>달콤한초코칩</td>
              <td>2021.12.15</td>
              <td>20</td>
           </tr>
           <tr>
              <td>[투표]</td>
              <td>3</td>
              <td>동아리장 강등 투표</td>
              <td>번쩍번쩍</td>
              <td>2021.12.13</td>
              <td>55</td>
           </tr>
           <tr>
              <td>[마감]</td>
              <td>2</td>
              <td>스탭을 모집합니다^^</td>
              <td>달콤한초코칩</td>
              <td>2021.11.15</td>
              <td>100</td>
           </tr>
           <tr>
              <td>[마감]</td>
              <td>1</td>
              <td>스탭을 모집합니다!!!!!</td>
              <td>허니버터칩</td>
              <td>2021.10.01</td>
              <td>90</td>
           </tr>

           
           </table>
           
           <!-- 동아리원에게는 보이지 않는 버튼 -->
           <input type="button" value="글쓰기" id="write">
           <input type="button" value="수정" id="update">
           <input type="button" value="삭제" id="delete">
           
           
       <div id="footer">
         <p>1 Prev 21 22 23 24 25 26 27 28 29 30 Next 54</p>
      
      
      </div>    
    
       </div>
       
       <!-- 풋터영역 -->
         <div>
            <c:import url="footer2.jsp"></c:import>
         </div> 


   </div>





</body>
</html>