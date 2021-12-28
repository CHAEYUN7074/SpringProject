<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    request.setCharacterEncoding("UTF-8");
    String cp = request.getContextPath();
%>
<%

   Object titleObj = request.getAttribute("title"); // mav.addObject("title", title); 이거니까
   int title = (Integer)titleObj;
   
      
   String result = "";
   
   StringBuffer sb = new StringBuffer();
   
   /* 따옴표 구성에 유의할 것~!!! */
   sb.append("{\"title\":\"" + title +"\"}" ); //JSON으로 받아와야하니까
                                                         //string buffer - 제한없애는거
   
   result = sb.toString();
   
   out.println(result); //다시 ajax로 ③
   
   //System.out.println(result);
   
%>




