/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.54
 * Generated at: 2021-12-27 14:25:49 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.view;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ClubBeforeOpenedList_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("jar:file:/C:/BCLEFinal/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/viewpages/WEB-INF/lib/standard.jar!/META-INF/c.tld", Long.valueOf(1098678690000L));
    _jspx_dependants.put("/WEB-INF/lib/standard.jar", Long.valueOf(1640611279472L));
    _jspx_dependants.put("/WEB-INF/tags/pageNav.tag", Long.valueOf(1640611280007L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fimport_0026_005furl_005fnobody;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fimport_0026_005furl_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fimport_0026_005furl_005fnobody.release();
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

   request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"ko\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>ClubBeforeOpenedList.jsp</title>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/mainpage.css\">\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\" src=\"http://code.jquery.com/jquery.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(cp);
      out.write("/js/jquery-ui.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(cp);
      out.write("/js/ajax.js\"></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<style>\r\n");
      out.write("@import\r\n");
      out.write("   url('https://fonts.googleapis.com/css?family=Exo+2|Noto+Sans+KR&display=swap')\r\n");
      out.write("   ;\r\n");
      out.write("\r\n");
      out.write(".cate {\r\n");
      out.write("   \r\n");
      out.write("   margin-left : 30vh;\r\n");
      out.write("   margin-right : 30vh;\r\n");
      out.write("   margin-bottom : 10vh;\r\n");
      out.write("   text-align : center;\r\n");
      out.write("   padding : 3vh;\r\n");
      out.write("   border : 1px solid lightgray;\r\n");
      out.write("   border-radius : 0px 0px 20px 20px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".cate img {width : 100%; height : 100%;}\r\n");
      out.write("\r\n");
      out.write("img {\r\n");
      out.write("    width: 100%;\r\n");
      out.write("    height: 100%;\r\n");
      out.write("    transition: all .8s;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".card-body {height : 30vh; padding: 0rem;} \r\n");
      out.write("/* ?????? ??? ?????? ???????????? */\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(".pagination{\r\n");
      out.write("   margin-left : 90vh;\r\n");
      out.write("   margin-bottom : 10vh;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("button {border:none;}\r\n");
      out.write("button:active {\r\n");
      out.write("  outline: none;\r\n");
      out.write("  box-shadow: none;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".list_title{margin-top :5vh; text-align:center;}\r\n");
      out.write("\r\n");
      out.write(".category{\r\n");
      out.write("   font-family: 'Noto Sans KR', sans-serif; \r\n");
      out.write("   font-weight:bold;\r\n");
      out.write("   margin: 5vh 0vh 5vh 0vh;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".region{\r\n");
      out.write("   font-family: 'Noto Sans KR', sans-serif; \r\n");
      out.write("   font-weight:bold;\r\n");
      out.write("   margin: 0vh 0vh 5vh 0vh;\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("select {\r\n");
      out.write("   color:white;\r\n");
      out.write("   background : gray;\r\n");
      out.write("   border-radius: 5px;\r\n");
      out.write("   padding : 5px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".upper{\r\n");
      out.write("\r\n");
      out.write("margin-left :30vh; \r\n");
      out.write("margin-right : 30vh;\r\n");
      out.write("margin-bottom : 0vh;\r\n");
      out.write("padding : 3%;\r\n");
      out.write("background-color : #F2F2F2;\r\n");
      out.write("border-radius : 20px 20px 0px 0px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".cate{\r\n");
      out.write("   margin-top:0vh;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".search{\r\n");
      out.write("   display : flex;\r\n");
      out.write("   padding-bottom : 10px;\r\n");
      out.write("   border-bottom: 1px solid lightgray;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".list-title{margin-top : 5vh;}\r\n");
      out.write("\r\n");
      out.write(".searchBox input {   border : 1px solid lightgray;    height : 5vh; margin-right : 0vh; }\r\n");
      out.write(".searchBox button { margin-left : 0vh;    height : 5vh; padding-left : 5px; padding-right : 5px; border-radius : 0px 5px 5px 0px; background : orange; color:white;}\r\n");
      out.write(".search select {border-radius : 5px 0px 0px 5px;}\r\n");
      out.write(".card-body {padding : 0% ;}\r\n");
      out.write(".card-body img {width : 100%; height:100%;}\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("   \r\n");
      out.write("   $(document).ready(function()\r\n");
      out.write("   {\r\n");
      out.write("      \r\n");
      out.write("      //???????????? ?????????(category_L_Id)??? ??????????????? ?????? ???????????? ??? ?????? ??????\r\n");
      out.write("      $(\"#category_L_Id\").change(function()\r\n");
      out.write("      {\r\n");
      out.write("         //lert($(\"#category_L_Id\").val());\r\n");
      out.write("         \r\n");
      out.write("         // Ajax ?????? ??? ?????? ??????\r\n");
      out.write("         $.ajax(\r\n");
      out.write("         {\r\n");
      out.write("            type : \"POST\"\r\n");
      out.write("            ,url : \"ajaxcategory.action\"\r\n");
      out.write("            ,data : {category_L_Id : $(\"#category_L_Id\").val()}\r\n");
      out.write("            ,dataType : \"json\" //{key : vlaue}\r\n");
      out.write("            ,success : function(result)\r\n");
      out.write("            {\r\n");
      out.write("               $(\"#category_S_Id\").children().remove();\r\n");
      out.write("               $(\"#category_S_Id\").append(\"<option value=\\\"\\\">?????????</option>\");\r\n");
      out.write("               \r\n");
      out.write("               for(var i=0; i<result.length; i++)\r\n");
      out.write("               {\r\n");
      out.write("                  $(\"#category_S_Id\").append(\"<option value=\\\"\"+result[i].category_s_id+\"\\\">\"+result[i].s_cat+\"</option>\");\r\n");
      out.write("               }\r\n");
      out.write("               \r\n");
      out.write("            }\r\n");
      out.write("            ,error : function(e)\r\n");
      out.write("            {\r\n");
      out.write("               alert(e.responseText);\r\n");
      out.write("            }\r\n");
      out.write("         });\r\n");
      out.write("      });\r\n");
      out.write("      \r\n");
      out.write("      //?????? ?????????(region_L_Id)??? ??????????????? ?????? ???????????? ??? ?????? ?????? \r\n");
      out.write("      $(\"#region_L_Id\").change(function()\r\n");
      out.write("      {\r\n");
      out.write("         //alert('??????');\r\n");
      out.write("         //alert($(\"#region_L_Id\").val());\r\n");
      out.write("         \r\n");
      out.write("         $.ajax(\r\n");
      out.write("         {\r\n");
      out.write("            type : \"POST\"\r\n");
      out.write("            ,url : \"ajaxregion.action\"\r\n");
      out.write("            ,data : {region_L_Id : $(\"#region_L_Id\").val()}\r\n");
      out.write("            ,dataType : \"json\"\r\n");
      out.write("            ,success : function(result)\r\n");
      out.write("            {\r\n");
      out.write("               $(\"#region_S_Id\").children().remove();\r\n");
      out.write("               $(\"#region_S_Id\").append(\"<option value=\\\"\\\">???/???</option>\");\r\n");
      out.write("               \r\n");
      out.write("               for(var i=0; i<result.length; i++)\r\n");
      out.write("               {\r\n");
      out.write("                  $(\"#region_S_Id\").append(\"<option value=\\\"\"+result[i].region_s_id+\"\\\">\"+result[i].local+\"</option>\");\r\n");
      out.write("               }\r\n");
      out.write("            }\r\n");
      out.write("            ,error : function(e)\r\n");
      out.write("            {\r\n");
      out.write("               alert(e.responseText);\r\n");
      out.write("            }\r\n");
      out.write("         \r\n");
      out.write("          });\r\n");
      out.write("   \r\n");
      out.write("      });\r\n");
      out.write("      \r\n");
      out.write("        // ?????? submit -> clubprelistform.action\r\n");
      out.write("         $(\"#searchBtn\").click(function()\r\n");
      out.write("         {\r\n");
      out.write("            $(\"#searchForm\").submit();\r\n");
      out.write("         });\r\n");
      out.write("      \r\n");
      out.write("   });\r\n");
      out.write("\r\n");
      out.write("   \r\n");
      out.write("   \r\n");
      out.write("   \r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("   <!-- \r\n");
      out.write("ClubBeforeOpenedList.jsp\r\n");
      out.write("- ????????????(????????? ???) ????????? 2 -??? ?????? ?????? ????????? ?????????\r\n");
      out.write(" -->\r\n");
      out.write("\r\n");
      out.write("   <!-- nav ?????? -->\r\n");
      out.write("   <div>\r\n");
      out.write("      ");
      if (_jspx_meth_c_005fimport_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("   </div>\r\n");
      out.write("   <!-- ??????????????? -->\r\n");
      out.write("      <section class=\"list-title\">\r\n");
      out.write("         <div class=\"title\">\r\n");
      out.write("            <h2>Pre-open Club<span>.</span></h2>\r\n");
      out.write("            <p>?????? ?????? ???????????? ???????????? ???????????????</p>\r\n");
      out.write("         </div>\r\n");
      out.write("      </section>\r\n");
      out.write("   \r\n");
      out.write("   <div class=\"upper\">\r\n");
      out.write("      <form action=\"clubprelistform.action\" id=\"searchForm\">\r\n");
      out.write("         <!-- ????????? ????????? ?????? ????????? ????????????. -->\r\n");
      out.write("      ");
      out.write("\r\n");
      out.write("         \r\n");
      out.write("         \r\n");
      out.write("         <div class=\"category\">\r\n");
      out.write("            ???????????? <select id=\"category_L_Id\" name=\"category_L_Id\">\r\n");
      out.write("               <option value=\"\"  ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${(param.category_L_Id == \"\")?\"selected\":\"\"}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write(">?????????</option>\r\n");
      out.write("               ");
      if (_jspx_meth_c_005fforEach_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("            </select> <select id=\"category_S_Id\" name=\"category_S_Id\">\r\n");
      out.write("               <option value=\"\"  ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${(param.category_S_Id == \"\")?\"selected\":\"\"}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write(">?????????</option>\r\n");
      out.write("            </select>\r\n");
      out.write("         </div>\r\n");
      out.write("         <div class=\"region\">\r\n");
      out.write("         ?????? <select id=\"region_L_Id\" name=\"region_L_Id\">\r\n");
      out.write("               <option value=\"\"  ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${(param.region_L_Id == \"\")?\"selected\":\"\"}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write(">???</option>\r\n");
      out.write("               ");
      if (_jspx_meth_c_005fforEach_005f1(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("            </select> <select id=\"region_S_Id\" name=\"region_S_Id\">\r\n");
      out.write("               <option value=\"\"  ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${(param.region_S_Id == \"\")?\"selected\":\"\"}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write(">???/???</option>\r\n");
      out.write("            </select>\r\n");
      out.write("         </div>\r\n");
      out.write("\r\n");
      out.write("         ");
      out.write("\r\n");
      out.write("         <div class=\"search\">\r\n");
      out.write("            <select id=\"order\" name=\"order\">\r\n");
      out.write("               <!-- ????????? ?????? ?????? -->\r\n");
      out.write("               <option value=\"1\"  ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${(param.order == \"1\")?\"selected\":\"\"}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write(">?????????</option>\r\n");
      out.write("               <option value=\"2\" ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${(param.order == \"2\")?\"selected\":\"\"}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write(">?????????</option>\r\n");
      out.write("            </select> \r\n");
      out.write("             <div class=\"searchBox\">\r\n");
      out.write("                 <input type=\"text\" placeholder=\"????????? ??????????????? ???????????????\" name=\"searchValue\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${param.searchValue}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" >\r\n");
      out.write("              <span value=\"??????\" id=\"searchBtn\" class=\"searchBtn\"><button>????????????</button></span>\r\n");
      out.write("            </div>\r\n");
      out.write("         </div>\r\n");
      out.write("         </form>\r\n");
      out.write("            </div>\r\n");
      out.write("      \r\n");
      out.write("      \r\n");
      out.write("\r\n");
      out.write("   <br>\r\n");
      out.write("   <br>\r\n");
      out.write("   \r\n");
      out.write("   \r\n");
      out.write("   \r\n");
      out.write("   <div class = \"cate\">\r\n");
      out.write("      <div class=\"row\" style= \"font-family: 'Noto Sans KR', sans-serif; font-weight:bold;\">\r\n");
      out.write("      ");
      if (_jspx_meth_c_005fforEach_005f2(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("   </div>\r\n");
      out.write("   \r\n");
      out.write("\r\n");
      out.write("   <!-- ?????????????????? -->\r\n");
      out.write("   <div class=\"page\">\r\n");
      out.write("      ");
      if (_jspx_meth_pageObject_005fpageNav_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("   </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("   <!-- ???????????? -->\r\n");
      out.write("   <div>\r\n");
      out.write("      ");
      if (_jspx_meth_c_005fimport_005f1(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("   </div>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_005fimport_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:import
    org.apache.taglibs.standard.tag.rt.core.ImportTag _jspx_th_c_005fimport_005f0 = (org.apache.taglibs.standard.tag.rt.core.ImportTag) _005fjspx_005ftagPool_005fc_005fimport_0026_005furl_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.ImportTag.class);
    boolean _jspx_th_c_005fimport_005f0_reused = false;
    try {
      _jspx_th_c_005fimport_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fimport_005f0.setParent(null);
      // /WEB-INF/view/ClubBeforeOpenedList.jsp(198,6) name = url type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fimport_005f0.setUrl("nav.jsp");
      int[] _jspx_push_body_count_c_005fimport_005f0 = new int[] { 0 };
      try {
        int _jspx_eval_c_005fimport_005f0 = _jspx_th_c_005fimport_005f0.doStartTag();
        if (_jspx_th_c_005fimport_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return true;
        }
      } catch (java.lang.Throwable _jspx_exception) {
        while (_jspx_push_body_count_c_005fimport_005f0[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_c_005fimport_005f0.doCatch(_jspx_exception);
      } finally {
        _jspx_th_c_005fimport_005f0.doFinally();
      }
      _005fjspx_005ftagPool_005fc_005fimport_0026_005furl_005fnobody.reuse(_jspx_th_c_005fimport_005f0);
      _jspx_th_c_005fimport_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fimport_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fimport_005f0_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005fforEach_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_005fforEach_005f0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    boolean _jspx_th_c_005fforEach_005f0_reused = false;
    try {
      _jspx_th_c_005fforEach_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fforEach_005f0.setParent(null);
      // /WEB-INF/view/ClubBeforeOpenedList.jsp(218,15) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setVar("category");
      // /WEB-INF/view/ClubBeforeOpenedList.jsp(218,15) name = items type = java.lang.Object reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${categoryLList }", java.lang.Object.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      int[] _jspx_push_body_count_c_005fforEach_005f0 = new int[] { 0 };
      try {
        int _jspx_eval_c_005fforEach_005f0 = _jspx_th_c_005fforEach_005f0.doStartTag();
        if (_jspx_eval_c_005fforEach_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\r\n");
            out.write("                  <option value=\"");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${category.category_l_id }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("\"\r\n");
            out.write("                  ");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${(param.category_L_Id == category.category_l_id)?\"selected\":\"\"}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write('>');
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${category.l_cat }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</option>\r\n");
            out.write("               ");
            int evalDoAfterBody = _jspx_th_c_005fforEach_005f0.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
        }
        if (_jspx_th_c_005fforEach_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return true;
        }
      } catch (java.lang.Throwable _jspx_exception) {
        while (_jspx_push_body_count_c_005fforEach_005f0[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_c_005fforEach_005f0.doCatch(_jspx_exception);
      } finally {
        _jspx_th_c_005fforEach_005f0.doFinally();
      }
      _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.reuse(_jspx_th_c_005fforEach_005f0);
      _jspx_th_c_005fforEach_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fforEach_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fforEach_005f0_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005fforEach_005f1(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_005fforEach_005f1 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    boolean _jspx_th_c_005fforEach_005f1_reused = false;
    try {
      _jspx_th_c_005fforEach_005f1.setPageContext(_jspx_page_context);
      _jspx_th_c_005fforEach_005f1.setParent(null);
      // /WEB-INF/view/ClubBeforeOpenedList.jsp(229,15) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f1.setVar("region");
      // /WEB-INF/view/ClubBeforeOpenedList.jsp(229,15) name = items type = java.lang.Object reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f1.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${regionLList }", java.lang.Object.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      int[] _jspx_push_body_count_c_005fforEach_005f1 = new int[] { 0 };
      try {
        int _jspx_eval_c_005fforEach_005f1 = _jspx_th_c_005fforEach_005f1.doStartTag();
        if (_jspx_eval_c_005fforEach_005f1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\r\n");
            out.write("                  <option value=\"");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${region.region_l_id }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("\" \r\n");
            out.write("                  ");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${(param.region_L_Id == region.region_l_id)?\"selected\":\"\"}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write('>');
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${region.city }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</option>\r\n");
            out.write("               ");
            int evalDoAfterBody = _jspx_th_c_005fforEach_005f1.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
        }
        if (_jspx_th_c_005fforEach_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return true;
        }
      } catch (java.lang.Throwable _jspx_exception) {
        while (_jspx_push_body_count_c_005fforEach_005f1[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_c_005fforEach_005f1.doCatch(_jspx_exception);
      } finally {
        _jspx_th_c_005fforEach_005f1.doFinally();
      }
      _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.reuse(_jspx_th_c_005fforEach_005f1);
      _jspx_th_c_005fforEach_005f1_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fforEach_005f1, _jsp_getInstanceManager(), _jspx_th_c_005fforEach_005f1_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005fforEach_005f2(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_005fforEach_005f2 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    boolean _jspx_th_c_005fforEach_005f2_reused = false;
    try {
      _jspx_th_c_005fforEach_005f2.setPageContext(_jspx_page_context);
      _jspx_th_c_005fforEach_005f2.setParent(null);
      // /WEB-INF/view/ClubBeforeOpenedList.jsp(262,6) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f2.setVar("preclub");
      // /WEB-INF/view/ClubBeforeOpenedList.jsp(262,6) name = items type = java.lang.Object reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f2.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${preopenList}", java.lang.Object.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      int[] _jspx_push_body_count_c_005fforEach_005f2 = new int[] { 0 };
      try {
        int _jspx_eval_c_005fforEach_005f2 = _jspx_th_c_005fforEach_005f2.doStartTag();
        if (_jspx_eval_c_005fforEach_005f2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\r\n");
            out.write("        <div class=\"col-sm-3\">\r\n");
            out.write("          <div class=\"card\">\r\n");
            out.write("            <div class=\"card-body\" style=\"padding : 0vh;\">\r\n");
            out.write("            <a href=\"preopenclubdetail.action?cid=");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${preclub.cid}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("\"> <img src=\"");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${preclub.url}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("\" alt=\"");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${preclub.title}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("\" style=\"width: 100%;\"></a>\r\n");
            out.write("             <div class=\"caption\">\r\n");
            out.write("            <!-- ????????? ?????? ?????? -->\r\n");
            out.write("            </div>\r\n");
            out.write("            </div>\r\n");
            out.write("          </div>\r\n");
            out.write("             <p>");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${preclub.title}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</p>\r\n");
            out.write("            <div>D - ");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${preclub.day}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</div>\r\n");
            out.write("        </div>\r\n");
            out.write("        ");
            int evalDoAfterBody = _jspx_th_c_005fforEach_005f2.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
        }
        if (_jspx_th_c_005fforEach_005f2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return true;
        }
      } catch (java.lang.Throwable _jspx_exception) {
        while (_jspx_push_body_count_c_005fforEach_005f2[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_c_005fforEach_005f2.doCatch(_jspx_exception);
      } finally {
        _jspx_th_c_005fforEach_005f2.doFinally();
      }
      _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.reuse(_jspx_th_c_005fforEach_005f2);
      _jspx_th_c_005fforEach_005f2_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fforEach_005f2, _jsp_getInstanceManager(), _jspx_th_c_005fforEach_005f2_reused);
    }
    return false;
  }

  private boolean _jspx_meth_pageObject_005fpageNav_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  pageObject:pageNav
    org.apache.jsp.tag.web.pageNav_tag _jspx_th_pageObject_005fpageNav_005f0 = new org.apache.jsp.tag.web.pageNav_tag();
    _jsp_getInstanceManager().newInstance(_jspx_th_pageObject_005fpageNav_005f0);
    try {
      _jspx_th_pageObject_005fpageNav_005f0.setJspContext(_jspx_page_context);
      // /WEB-INF/view/ClubBeforeOpenedList.jsp(283,6) name = listURI type = java.lang.String reqTime = true required = true fragment = false deferredValue = false expectedTypeName = java.lang.String deferredMethod = false methodSignature = null
      _jspx_th_pageObject_005fpageNav_005f0.setListURI("clubprelistform.action");
      // /WEB-INF/view/ClubBeforeOpenedList.jsp(283,6) name = pageObject type = com.webjjang.util.PageObject reqTime = true required = true fragment = false deferredValue = false expectedTypeName = java.lang.String deferredMethod = false methodSignature = null
      _jspx_th_pageObject_005fpageNav_005f0.setPageObject((com.webjjang.util.PageObject) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageObject}", com.webjjang.util.PageObject.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      _jspx_th_pageObject_005fpageNav_005f0.doTag();
    } finally {
      _jsp_getInstanceManager().destroyInstance(_jspx_th_pageObject_005fpageNav_005f0);
    }
    return false;
  }

  private boolean _jspx_meth_c_005fimport_005f1(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:import
    org.apache.taglibs.standard.tag.rt.core.ImportTag _jspx_th_c_005fimport_005f1 = (org.apache.taglibs.standard.tag.rt.core.ImportTag) _005fjspx_005ftagPool_005fc_005fimport_0026_005furl_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.ImportTag.class);
    boolean _jspx_th_c_005fimport_005f1_reused = false;
    try {
      _jspx_th_c_005fimport_005f1.setPageContext(_jspx_page_context);
      _jspx_th_c_005fimport_005f1.setParent(null);
      // /WEB-INF/view/ClubBeforeOpenedList.jsp(289,6) name = url type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fimport_005f1.setUrl("footer.jsp");
      int[] _jspx_push_body_count_c_005fimport_005f1 = new int[] { 0 };
      try {
        int _jspx_eval_c_005fimport_005f1 = _jspx_th_c_005fimport_005f1.doStartTag();
        if (_jspx_th_c_005fimport_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return true;
        }
      } catch (java.lang.Throwable _jspx_exception) {
        while (_jspx_push_body_count_c_005fimport_005f1[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_c_005fimport_005f1.doCatch(_jspx_exception);
      } finally {
        _jspx_th_c_005fimport_005f1.doFinally();
      }
      _005fjspx_005ftagPool_005fc_005fimport_0026_005furl_005fnobody.reuse(_jspx_th_c_005fimport_005f1);
      _jspx_th_c_005fimport_005f1_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fimport_005f1, _jsp_getInstanceManager(), _jspx_th_c_005fimport_005f1_reused);
    }
    return false;
  }
}
