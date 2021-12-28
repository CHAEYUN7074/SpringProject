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
<title>faqList.jsp</title>
<style type="text/css">
.layout{
    max-width: 600px;
    margin: 0 auto;
}

.qna{
    list-style: none;
    margin: 0;
    padding: 0;
}
.qna > li{
  padding: 10px 0;
  box-sizing: border-box;
}
.qna > li:nth-child(n+2){ /* 아이템 구분 점선 */
  border-top: 1px dashed #aaa;
}
.qna input {
  display: none;
}

.qna label { /* 제목 - 클릭 영역 */
  font-weight: bold;
  color: #000;
  margin: 20px 0 0;
  cursor: pointer;
}
.qna label::before { /* 제목 앞 화살표 */
  content: "▶";
  display: block;
  color: #FFD34E;
  margin-right: 8px;
  float: left;
}
.qna input:checked + label::before { /* 내용 펼침 상태 제목 앞 화살표 */
  content: "▼";
}

.qna div { /* 내용 영역 - 기본 감춤 상태 */
  display: none;
  color: #666;
  font-size: 0.9375em;
  overflow: hidden;
  padding: 10px 0 10px 30px;
  box-sizing: border-box;
  transition: max-height 0.4s;
}
.qna input:checked + label + div { /* 내용 영역 펼침 */
  display: block;
}

#content_footer
{
	display: flex;
	justify-content: space-between;
}



#content
{
	margin: 10vh 0vh 10vh 10vh;
}

.merge{
display : flex;
}

</style>
</head>
<body>
<!--  
	faqList.jsp
	- 푸터 고객센터 - 글목록 리스트
-->

<div class="wrap">
	<!-- 네브 영역 -->
      <div>
         <c:import url="nav.jsp"></c:import>
      </div>
      
      

    <div class="merge">
      <!-- 사이드바 영역 -->
      <div>
          <c:import url="sidebarBeeAdmin.jsp"></c:import>
      </div>
      
	<div class="content">
		<ul class="qna">
	         <li>
	             <input type="checkbox" id="qna-1">
	             <label for="qna-1">Q. 아이디는 몇 개까지 가입가능한가요?</label>
	             <div>
	                 <p>A. 안녕하세요. 비클 운영진입니다.<br> 아이디는 주민번호당 1 아이디를 원칙으로 하고있습니다.</p>
	             </div>
	         </li>
	         <li>
	             <input type="checkbox" id="qna-2">
	             <label for="qna-2">Q. 동아리 탈퇴하고 싶습니다.</label>
	             <div>
	                 <p>A. 안녕하세요. 비클 운영진입니다.<br> 동아리 메인페이지 하단에 동아리 탈퇴버튼으로 탈퇴가 가능합니다.</p>
	                 <p>단, 운영진의 경우 운영진자리를 위임해야 탈퇴가 가능합니다.</p>
	             </div>
	         </li>
	         <li>
	             <input type="checkbox" id="qna-3">
	             <label for="qna-3">Q. 어쩌구</label>
	             <div>
	                 <p>A. 어쩌구저꺼주 답변답변</p>
	                 <p>어쩌구저꺼주 답변답변어쩌구저꺼주 답변답변어쩌구저꺼주 답변답변어쩌구저꺼주 답변답변어쩌구저꺼주 답변답변어쩌구저꺼주 답변답변</p>
	             </div>
	         </li>
	         <li>
	             <input type="checkbox" id="qna-4">
	             <label for="qna-4">Q. 어쩌구</label>
	             <div>
	                 <p>A. 어쩌구 답변</p>
	             </div>
	         </li>
	         <li>
	             <input type="checkbox" id="qna-5">
	             <label for="qna-5">Q. 상품에 대해서 문의하려면 어떻게 해야 하나요?</label>
	             <div>
	                 <p>A. 상품에 관한 내용은 상품상세 화면에 자세히 안내되어 있습니다. 마이페이지 > 주문내역에서 주문한 상품을 선택하면 상세페이지로 이동합니다.</p>
	                 <p>상품 상세 내용에 표시되어 있지 않은 내용은 판매자에게 문의해 주십시오.</p>
	                 <p>> 판매자에게 문의</p>
	                 <p>1. "마이페이지 > 주문내역에서 상품 선택 > 배송/교환/반품 안내"에 표기된 판매자 연락처로 문의</p>
	                 <p>2. "["마이페이지 > 1:1문의하기 > 문읜타입에서 판매자에게 문의하기"를 선택한 후 질의 내용 작성</p>
	             </div>
	         </li>
	     </ul>
	     
     	<div id="content_footer">
         <p>1 Prev 21 22 23 24 25 26 27 28 29 30 Next 54</p>
         <input type="button" value="글쓰기" 
         onclick="javaScript:location.href='<%=cp %>/beefreeCreated.jsp'"/>
      	</div> 
	     
     </div>
    </div>
     	 <!-- 푸터 영역 -->
	      <div>
	      	<c:import url="footer.jsp"></c:import>	
	      </div>
    
</div>

</body>
</html>