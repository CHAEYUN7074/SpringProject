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
<title>Join.jsp</title>

<link rel="stylesheet" href="css/bootstrap.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

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

.outer
{
   border: 1px solid #ccc;
   border-radius: 5px;
   width: 100vh;
   padding: 50px;
   margin: 5vh 50vh;
}


</style>
<script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(document).ready(function()   // 페이지가 로드됐을 때 제이쿼리 실행?
{
   //alert("test");
   $('.input_id').focusout(function()
   {
      let userId = $('.input_id').val();   
      let userSsn = $("#ssn1").val() + $("#ssn2").val();   
      alert(userSsn);
      //alert(userId);

      $.ajax({
         url : "checkid.action"
         , type : "POST"
         , data : {userId : userId}
         , dataType : "json"      // check~!!!
         , success : function(result)
         {
            if(result.checkId == 0){
               //alert(result.checkId);
               //alert("사용할 수 없는 아이디");
               $("#checkId").html('사용할 수 없는 아이디입니다.');
               $("#checkId").css('color', 'red');
            }
            else
            {
               //alert(result.checkId);
               //alert("사용할 수 있는 아이디");
               $("#checkId").html('사용할 수 있는 아이디입니다.');
               $("#checkId").css('color', 'green');
            }
         }
         , error : function(e)
         {
            alert(e.responseText);
         }
      })
   })
});
</script>

</head>
<body>
<!-- 
 - 회원가입하기 페이지
 -->
<div>
<!-- nav 영역 -->
<div>
   <c:import url="subHeader.jsp"></c:import>
</div>

<div class="subheader">
      <p>B:CLE</p>
      <p class="title">회원가입 하기</p>
   </div>

<div class="outer">
   <!-- <div class="inner"> -->
      <div class="row register-form">
      <form action="/join.action" method="post">
         <div class="form-group col-md-12 col-sm-12">  
            프로필 사진*<br>
            <input type="file" value="등록" required="required">
         </div>
         <br>
         <div class="form-group col-md-6 col-sm-6">
            <label for="name">이름*</label>
            <input type="password" id="name" placeholder="이름을 입력하세요." required="required" class="form-control"/>
            <span id="err" style="display: none; color: red; font-size: small;">이름을 입력해주세요.</span><br>
         </div>
         <div class="id form-group col-md-6 col-sm-6">
            <label for="userId">아이디*
               <input type="text" id="userId" placeholder="아이디를 입력하세요." required="required" class="input_id form-control"/>
               <input type="button" value="중복확인" id="check">
               <span id="err" style="display: none; color: red; font-size: small;">아이디를 입력해주세요.</span><br>
               <span id=checkId  style="font-size: small;"></span><br>
            </label>
         </div>
         <div class="form-group col-md-6 col-sm-6">
            <label for="email">이메일*</label>
            <input type="email" id="email" placeholder="이메일을 입력하세요." required="required" class="form-control"/>
            <input type="button" value="인증코드 보내기"><br>
            <span id="err" style="display: none; color: red; font-size: small;">이메일을 입력해주세요.</span><br>
            <span id="err" style="display: none; color: red; font-size: small;">인증코드가 일치하지 않습니다.</span><br>
         </div>
         <div class="form-group col-md-6 col-sm-6">
            <label for="pwd">비밀번호*</label>
            <input type="password" id="pwd" placeholder="패스워드를 입력하세요." required="required" class="form-control"/>
            <span id="err" style="display: none; color: red; font-size: small;">비밀번호를 입력해주세요.</span><br>
         </div>
         <div class="form-group col-md-6 col-sm-6">
            <label for="pwd2">비밀번호 재확인*</label>
            <input type="password" id="pwd2" placeholder="패스워드를 다시 입력하세요." required="required" class="form-control"/>
            <span id="err" style="display: none; color: red; font-size: small;">비밀번호를 한번 더입력해주세요.</span><br>
         </div>
         <div class="form-group col-md-12 col-sm-12">
            <label for="ssn">주민번호*</label>
            <!-- <input type="text" id="ssn" required="required" class="form-control" placeholder="000000-0000000 형식으로 입력해주세요."> -->
            <input type="text" id="ssn1" required="required"> - <input type="password" id="ssn2" required="required">
            <input type="button" value="본인인증"><br>
            <span id="err" style="display: none; color: red; font-size: small;">주민번호를 입력해주세요.</span><br>
         </div>
         <div class="form-group col-md-12 col-sm-12">
            <label for="tel">연락처*</label>
            <input type="tel" id="tel" required="required" class="form-control" placeholder="010-0000-0000 형식으로 입력해주세요.">
            <!-- <input type="tel" id="tel1" required="required" style="width: 100px"> - <input type="tel" id="tel2" required="required" style="width: 100px"> - <input type="tel" id="tel3" required="required" style="width: 100px"><br> -->
            <span id="err" style="display: none; color: red; font-size: small;">전화번호를 입력해주세요.</span><br>
         </div>
         <div class="form-group col-md-6 col-sm-6">
            <label for="nickName">닉네임*</label>
            <input type="text" id="nickName" required="required" class="form-control"><input type="button" value="중복확인"><input type="button" value="랜덤생성">
            <span id="err" style="display: none; color: red; font-size: small;">닉네임을 입력해주세요.</span><br>
         </div>
         <br>
         <div class="form-group col-md-6 col-sm-6">
            <label for="nickName">지역설정*</label>
            <span id="err" style="display: none; color: red; font-size: small;">지역은 최소 1개 설정해야합니다.</span><br>
            시 
            <select name="regionL" id="regionL" required="required" class="form-control">
               <option value="0">시 단위</option>
            </select>
            군·구
            <select name="regionS" id="regionS" required="required" class="form-control">
               <option value="0">군·구 단위</option>
            </select><br>
         </div>
         <div class="form-group">
            <input type="text" placeholder="지역1" required="required">
            <input type="text" placeholder="지역2">
            <input type="text" placeholder="지역3">
         </div>
         <br>
         <div class="form-group col-md-6 col-sm-6">
            <label for="category">관심카테고리*</label>
            <span id="err" style="display: none; color: red; font-size: small;">관심카테고리는 최소 1개 설정해야합니다.</span><br>
            <select name="category" id="category" required="required" class="form-control">
               <option value="0">카테고리 선택</option>
            </select><br>
         </div>
         <div class="form-group">
            <input type="text" placeholder="카테고리1" required="required">
            <input type="text" placeholder="카테고리2">
            <input type="text" placeholder="카테고리3">
            <input type="text" placeholder="카테고리4">
            <input type="text" placeholder="카테고리5">
         </div>
         <div class="form-group col-md-12 col-sm-12" style="text-align: center;">
            <span id="err" style="display: none; color: red; font-size: small;">회원가입의 항목들을 모두 입력해주세요.</span><br>
            <input type="button" value="가입하기" class="btn btn-warning">
            <!-- <input type="reset" value="모두 지우기" class="btn btn-warning"> -->
            <input type="button" value="취소" class="btn btn-warning"
            onclick="javascript:location.href='<%=cp%>/LoginPage.jsp'">
         </div>
      </form>
      </div>
   <!-- </div> -->
   
</div>

   <div>
      <c:import url="footer.jsp"></c:import>
   </div>

</div>

</body>
</html>