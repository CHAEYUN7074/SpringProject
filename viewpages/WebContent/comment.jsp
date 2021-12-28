<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
   request.setCharacterEncoding("UTF-8");
   String cp = request.getContextPath();
%>
<!doctype html>
<html>
<head>
  <title>WEB1 - HTML</title>
  <meta charset="utf-8">
</head>
<body>
<!-- 
    <div id="disqus_thread"></div>
    
<script>

/**
*  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
*  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/
/*
var disqus_config = function () {
this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
};
*/
(function() { // DON'T EDIT BELOW THIS LINE
var d = document, s = d.createElement('script');
s.src = 'https://web1-2.disqus.com/embed.js';
s.setAttribute('data-timestamp', +new Date());
(d.head || d.body).appendChild(s);
})();
</script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>

 -->
 
 <!-- 
 comment.jsp
	댓글
	https://all-record.tistory.com/143 나중에 참고하기
-->
 
 <div id="comment">
		<div>
			댓글 2개
		</div>
		<div>
			닉네임
			조회10
			2021.11.20 22:02
			댓글 0
		</div>
		<div style="display: inline-block;">
		   <input type="text" style="width:600px; height:100px;" placeholder="내용">         
		</div>
		<div><a href="#">답글달기</a></div>
	</div>
	
	<div>
		<div>댓글작성</div>
		<div>
			닉네임
		</div>
				
		<div style="display: inline-block;">
		   <input type="text" style="width:600px; height:100px;" placeholder="댓글 내용을 입력하세요.">         
		</div>
		
		<div style="width:600px; text-align:right;">
		<button>댓글 작성</button>			
		</div>
	</div>
  
</body>
</html>