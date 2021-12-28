<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    request.setCharacterEncoding("UTF-8");
    String cp = request.getContextPath();
%>
<%
   // JoinSSn_ok.jsp 
   Object checkIdObj = request.getAttribute("checkSsn");
   int checkSsn = (Integer)checkIdObj;
   
   //test
   
   String result = "";
   
   StringBuffer sb = new StringBuffer();
   
   /* 따옴표 구성에 유의할 것~!!! */
   sb.append("{\"checkSsn\":\"" + checkSsn +"\"}" );
   
   result = sb.toString();
   
   out.println(result);
   
   
%>