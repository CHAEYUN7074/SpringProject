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
<title>ClubBeforeOpenedContents.jsp</title>
<link rel="stylesheet" href="css/mainpage.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="<%=cp%>/js/jquery-ui.js"></script>
<script type="text/javascript" src="<%=cp%>/js/ajax.js"></script>

<!-- 부트스트랩 -->

<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<style type="text/css">
@import
   url('https://fonts.googleapis.com/css?family=Exo+2|Noto+Sans+KR&display=swap')
   ;
   
.list-title{margin-top : 5vh;}
.profile {
   width: 100%;
   height: 100%;
   object-fit: cover;
}

.container {
   display: flex;
}

#staffModal {
   z-index: 9999;
}

#managerModal {
   z-index: 9999;
}

#contents {
   margin : 5vh 30vh 5vh 30vh;
   padding : 3%;
   border : 1px solid lightgray;
   border-radius : 20px;
   font-family: 'Noto Sans KR', sans-serif; 
   font-weight:bold;
}

#contents input {  border : 1px solid lightgray;    height : 5vh; margin-right : 0vh; height : 5vh}
#contents p {margin-bottom : 3vh;}
.button_set {display : flex; margin-left : 40%;}
.button_set button {margin-right : 3vh;}


</style>

<script>
$(document).ready(function()
{
   //alert('${admin}');
   //alert(('${admin}' == ""));
   
   //스텝 지원하기 눌렀을 때  
   $("#applyBtn1").click(function()
   {
      var cid = '${clubDetail.cid}';
      var mid = '${mid}';
      var position_id = 3; // 스태프 직위 번호는 3 
      
      alert("스태프 지원 완료!"); 
      $(location).attr("href", "preclubjoininsert.action?cid="+cid+"&mid="+mid+"&position_id="+position_id);
      
    });  

   //총무 지원하기 눌렀을 때 
   $("#applyBtn2").click(function()
   {
      var cid = '${clubDetail.cid}';
      var mid = '${mid}';
      var position_id = 2; // 총무 직위 번호는 2 
      
      alert("총무 지원 완료!"); 
      $(location).attr("href", "preclubjoininsert.action?cid="+cid+"&mid="+mid+"&position_id="+position_id);
      
    }); 
   
   //스텝 지원취소 눌렀을 때  
   $("#cancleBtn1").click(function()
   {
      var cid = '${clubDetail.cid}';
      var mid = '${mid}';
      
      if(confirm("스태프 지원을 취소하겠습니까?"))
      {
         $(location).attr("href", "preclubjoindelete.action?cid="+cid+"&mid="+mid);
      }
    });  

   //총무 지원취소 눌렀을 때 
   $("#cancleBtn2").click(function()
   {
      var cid = '${clubDetail.cid}';
      var mid = '${mid}';
      
      if(confirm("총무 지원을 취소하겠습니까?"))
      {
         $(location).attr("href", "preclubjoindelete.action?cid="+cid+"&mid="+mid);
      }
    }); 
   
   
   $(function()
   {
      $("#updateBtn").click(function()
      {
         //alert($(this).val());
         $(location).attr("href", "preclubupdateform.action?cid=" + $(this).val());
      
      });
      
      $("#deleteBtn").click(function()
      {
         //alert($(this).val());
         if(confirm("현재 선택한 데이터를 정말 삭제하시겠습니까?"))
         {
            $(location).attr("href", "preclubdelete.action?cid=" + $(this).val());
         }
      });
      
   });
   
    //글 작성자에게만 수정 버튼이 보이도록한다.
      $(document).ready(function()
      {
         if ('${mid}' == '${clubDetail.mid}')

         {
            $("#updateBtn").css("display", "block");
         } else
         {
            $("#updateBtn").css("display", "none");
         }

      });
      
      //글 작성자에게만 삭제 버튼이 보이도록한다. ++ // 관리자
      $(document).ready(function()
      {
         
         if (('${mid}' == '${clubDetail.mid}') ||('${admin}' != ""))

         {
            $("#deleteBtn").css("display", "block");
         } else
         {
            $("#deleteBtn").css("display", "none");
         }

      });
      
      $(".updateBtn").click(function()
      {
         $('#managerModal').modal('show');
      });
      
      

});

</script>
</head>
<body>

   <!-- 
ClubBeforeOpenedContents.jsp
- 메인화면(로그인 전) 페이지 2 -⑤ 회원 모집 동아리 상세페이지(내용)
- 개절예정 동아리(스탭프 지원(동의)받는중)
 -->
   <div class="wrap">
      <!-- 네브 영역 -->
      <div>
         <c:import url="nav.jsp"></c:import>
      </div>
      
      
       <section class="list-title">
         <div class="title">
            <h2>Pre-open Club<span>.</span></h2>
            <p>개설 예정 동아리의 운영진이 되어보세요</p>
         </div>
      </section>

      <!-- 콘텐츠 영역 -->
      <div id="contents">
         <div>
            <p>모집마감 D- ${clubDetail.day} </p>
         </div>

         <div>
            <form action="">
               <div>
                  <p>   동아리명 
                  <input type="text" id="title" name="title" value="${clubDetail.title }"  disabled="disabled">
                  </p>
                  <p>
                     동아리장
                     <input type="text" id="nickname" name="nickname" value="${clubDetail.nickname }" disabled="disabled">
                     가개설일
                     <input type="text" id="preopendate" name="preopendate" value="${clubDetail.preopendate}" disabled="disabled">
                  </p>
                  <p>
                     카테고리 
                     <input type="text" id="l_cat" name="l_cat" value="${clubDetail.l_cat}" disabled="disabled">
                     <input type="text" id="s_cat" name="s_cat" value="${clubDetail.s_cat}" disabled="disabled">
                  </p>
                  <p>
                     지역
                     <input type="text"  value="${clubDetail.city}" disabled="disabled">
                     <input type="text" value="${clubDetail.local}" disabled="disabled">
                  </p>
                  <p>
                     가입 최대인원 설정
                     <input type="text" value="${clubDetail.max}" disabled="disabled">
                  </p>
                  <p>
                     내용<br><textarea rows="10" cols="70">${clubDetail.content}</textarea>
                  </p>
					<br>
                  <div>
                     <h5>제한조건(옵션)</h5>
                     <br>
                     <div>
                     <!-- if로 받아온 지역제한 코드가 'X'면 없음으로 보이고
                     있으면 받아온 지역명으로 보이게-->
                        지역&nbsp; 
                     <c:choose>
                        <c:when test="${clubDetail.limit_id eq 'X'}">
                           <input type="text" value="없음" disabled="disabled">
                           <input type="text" value="없음" disabled="disabled">
                        </c:when>
                     </c:choose>
                     <c:choose>
                        <c:when test="${clubDetail.limit_id eq 'O'}">
                           <input type="text" value="${clubDetail.city}" disabled="disabled">
                           <input type="text" value="${clubDetail.local}" disabled="disabled">
                        </c:when>
                     </c:choose>
                     </div>
                     
                     <div>
                     <!-- if로 받아온 나이제한 코드가 'X'면 없음으로 보이고 
                     있으면 받아온 최대나이와 최소나이로 보이게  -->
                        연령&nbsp;
                        <c:choose>
                           <c:when test="${clubDetail.agelimit_id eq 'X'}">
                              <input type="text" value="없음" disabled="disabled">
                              <input type="text" value="없음" disabled="disabled">
                           </c:when>
                        </c:choose>
                        <c:choose>
                           <c:when test="${clubDetail.agelimit_id eq 'O'}">
                              <input type="text" value="${clubDetail.min_age}"
                                 disabled="disabled"> ~
                              <input type="text" value="${clubDetail.max_age}"
                                 disabled="disabled">
                           </c:when>
                        </c:choose>
                     </div>
                     
                     <!-- 우선 자기 동아리 인지 / 아닌지 
                     자기 동아리면 지원하기가 아니고 선정하기 -->
                     <br>
                     <div>
                        스텝
                        <c:choose>
                           <c:when test="${clubDetail.mid eq mid and staffCnt eq 0}"> 
                              <button type="button" class="btn btn-success btn-sm"
                                 data-bs-toggle="modal" data-bs-target="#staffModal" id="choiceBtn1">
                                 선정하기</button>
                           
                           </c:when>
                           <c:when test="${clubDetail.mid eq mid and staffCnt ne 0}"> 
                              <input type="button" class="btn btn-danger btn-sm" value="선택완료" readonly="readonly" >
                           </c:when>
                           <c:when test="${joinCheck eq -1}"> <!-- 가입신청이 안되어있으면 지원하기 보임 -->
                              <input type="button" value="지원하기" id="applyBtn1" >
                           </c:when>
                           <c:when test="${joinCheck eq 3}"> <!-- 이미 해당 포지션에 지원 했다면 지원취소 보임 -->
                              <input type="button" value="지원취소" id="cancleBtn1" >
                           </c:when>
                        </c:choose>
                     <!-- 
                        <div class="container"> 5개마다 그려줘야함 
                           <div class="box" style="background: #BDBDBD;">
                              <img class="profile" src="">
                           </div>
                           <div class="box" style="background: #BDBDBD;">
                              <img class="profile" src="">
                           </div>
                           <div class="box" style="background: #BDBDBD;">
                              <img class="profile" src="">
                           </div>
                           <div class="box" style="background: #BDBDBD;">
                              <img class="profile" src="">
                           </div>
                           <div class="box" style="background: #BDBDBD;">
                              <img class="profile" src="">
                           </div>
                        </div> - -->
                        
                        <!-- 선정하기를 완료하면 선정완료로 변경 -->
                        <div class="container">
                           <table>
                           <tr>
                              <c:forEach var="staff" items="${applyStaffList }" varStatus="status">
                                 <c:if test="${status.index%5==0 }">
                                    </tr><tr>
                                 </c:if>
                                 <td>
                                 <c:choose>
                                       <c:when test="${clubDetail.mid eq mid}"> <!-- 동아리 장이면 프로필 이동 가능 (a태그) -->
                                          <a href="memberprofile.action?mid=${staff.mid}"
                                          onclick="window.open(this.href, '회원 프로필' , 'width=900,height=600'); return false;">
                                          <img src="${staff.url }" class="rounded-circle" alt="Cinque Terre" width="100" height="100">
                                          <br> ${staff.nickname } 
                                          </a>
                                       </c:when>
                                       <c:otherwise> <!-- 동아리 장 아니면 프로필 이동 불가, 사진과 닉네임만 보여짐 -->
                                          <img src="${staff.url }" class="rounded-circle" alt="Cinque Terre" width="100" height="100">
                                          <br> ${staff.nickname } 
                                       </c:otherwise>
                                    </c:choose>
                                 </td>
                              </c:forEach>
                           </tr>
                           
                           </table>
                        </div>
                     </div>

                     <div>
                        총무
                        <c:choose>
                           <c:when test="${clubDetail.mid eq mid and managerCnt eq 0}"> 
                              <button type="button" class="btn btn-success btn-sm"
                                 data-bs-toggle="modal" data-bs-target="#managerModal"
                                  id="choiceBtn2">
                                 선정하기</button>
                                 <%-- <c:import url="ChoiceModal.jsp"></c:import> --%>
                           </c:when>
                           <c:when test="${clubDetail.mid eq mid and managerCnt ne 0}"> 
                              <input type="button" class="btn btn-danger btn-sm" value="선택완료" readonly="readonly" >
                           </c:when>
                           <c:when test="${joinCheck eq -1}">
                              <input type="button" value="지원하기" id="applyBtn2" >
                           </c:when>
                           <c:when test="${joinCheck eq 2}">
                              <input type="button" value="지원취소" id="cancleBtn2" >
                           </c:when>
                        </c:choose>
                        
                        <div class="container">
                           <table>
                           <tr>
                              <c:forEach var="manager" items="${applyManagerList }" varStatus="status">
                                 <c:if test="${status.index%5==0 }">
                                    </tr><tr>
                                 </c:if>
                                 <td>
                                    <c:choose>
                                       <c:when test="${clubDetail.mid eq mid}"> <!-- 동아리 장이면 프로필 이동 가능 (a태그) -->
                                          <a href="memberprofile.action?mid=${manager.mid}"
                                          onclick="window.open(this.href, '회원 프로필' , 'width=900,height=600'); return false;">
                                          <img src="${manager.url }" class="rounded-circle" alt="Cinque Terre" width="100" height="100">
                                          <br> ${manager.nickname } 
                                          </a>
                                       </c:when>
                                       <c:otherwise>
                                          <img src="${manager.url }" class="rounded-circle" alt="Cinque Terre" width="100" height="100">
                                          <br> ${manager.nickname } 
                                       </c:otherwise>
                                    </c:choose>
                                    
                                 </td>
                              </c:forEach>
                           </tr>
                           
                           </table>
                        </div>
                     </div>

                  <div class ="button_set">

                        <button type="button" class="btn btn-secondary" id="closeBtn" onclick="location.href='clubprelistform.action'">닫기</button>
                        <button type="button" class="btn btn-warning" id="updateBtn" onclick="checkId()" value="${clubDetail.cid }" style="display: block">수정</button>
                        <button type="button" class="btn btn-warning" id="deleteBtn" onclick="checkId2()" value="${clubDetail.cid }">삭제</button>
                     </div>


               </div>
            </form>
         </div>
      </div>
       </div>
      
      <!-- 풋터영역 -->
      <div>
         <c:import url="footer.jsp"></c:import>
      </div>

  
<!-- ○ 스태프 선택 모달 -->   
<!-- Modal : 처음에는 안보이게 설정이 되어 있다. -->
<!-- The Modal -->
<div class="modal fade" id="staffModal">  <!-- fade 천천히 나타나게 해주는 -->
  <div class="modal-dialog "> <!-- 뒤에 백그라운드 어두어지게 하는거 -->
  
    <!-- Modal content -->
    <form action="memberselect.action?cid=${clubDetail.cid }" method="post"> <!-- 폼태그로 넘기거나, 자바스크립트를 사용하거나  -->
    <div class="modal-content"> <!-- 모달의 전체적인 구성 -->

      <!-- Modal Header -->
      <div class="modal-header">
        <h5 class="modal-title">함께하기</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button> <!-- X버튼을 클릭하면 모달이 닫힌다. -->
      </div>

      <!-- Modal body -->
      <div class="modal-body">
         <div class="row">
            <c:forEach var="staff" items="${applyStaffList }" varStatus="status">
               <c:if test="${status.index%3==0 }">
                  </div><div class="row">
               </c:if>
               <div class="col-lg-4">
                  <img src="${staff.url }" class="rounded-circle" alt="Cinque Terre" width="80" height="80">
                  <p>${staff.nickname }<p>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="radio" class="form-check-input" id="selectRadio" name="selectRadio" value="${staff.mid }">
                  <label class="form-check-label" for="selectRadio"></label>
               </div>
            </c:forEach>
            </div>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
         <button type="submit" class="btn btn-success" data-bs-dismiss="modal">선택</button>
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">취소</button>
      </div>

    </div> <!-- end modal-content  -->
    </form>
    
  </div>
</div> <!-- staffModal end -->
 
 <!-- 총무 선택 모달 -->
<div class="modal fade" id="managerModal">  <!-- fade 천천히 나타나게 해주는 -->
  <div class="modal-dialog "> <!-- 뒤에 백그라운드 어두어지게 하는거 -->
  
    <!-- Modal content -->
    <form action="memberselect.action?cid=${clubDetail.cid }" method="post"> <!-- 폼태그로 넘기거나, 자바스크립트를 사용하거나  -->
    <div class="modal-content"> <!-- 모달의 전체적인 구성 -->

      <!-- Modal Header -->
      <div class="modal-header">
        <h5 class="modal-title">함께하기</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button> <!-- X버튼을 클릭하면 모달이 닫힌다. -->
      </div>

      <!-- Modal body -->
      <div class="modal-body">
         <div class="row">
            <c:forEach var="manager" items="${applyManagerList }" varStatus="status">
               <c:if test="${status.index%3==0 }">
                  </div><div class="row">
               </c:if>
               <div class="col-lg-4">
                  <img src="${manager.url }" class="rounded-circle" alt="Cinque Terre" width="80" height="80">
                  <p>${manager.nickname }<p>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="radio" class="form-check-input" id="selectRadio" name="selectRadio" value="${manager.mid }">
                  <label class="form-check-label" for="selectRadio"></label>
               </div>
            </c:forEach>
            </div>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
         <button type="submit" class="btn btn-success" data-bs-dismiss="modal">선택</button>
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">취소</button>
      </div>

    </div> <!-- end modal-content  -->
    </form>
    
  </div>
</div>

</body>
</html>