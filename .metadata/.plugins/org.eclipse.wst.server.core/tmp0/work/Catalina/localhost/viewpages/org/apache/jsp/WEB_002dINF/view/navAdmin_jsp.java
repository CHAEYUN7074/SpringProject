/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.54
 * Generated at: 2021-12-28 01:11:01 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.view;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class navAdmin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("jar:file:/C:/BCLEFinal/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/viewpages/WEB-INF/lib/standard.jar!/META-INF/c.tld", Long.valueOf(1098678690000L));
    _jspx_dependants.put("/WEB-INF/lib/standard.jar", Long.valueOf(1640611279472L));
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
  }

  public void _jspDestroy() {
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

   request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"ko\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("<title>B:CLE</title>\r\n");
      out.write("<!-- <link rel=\"stylesheet\" href=\"css/main.css\"> -->\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/font-awesome.min.css\">\r\n");
      out.write("<link\r\n");
      out.write("   href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\"\r\n");
      out.write("   rel=\"stylesheet\"\r\n");
      out.write("   integrity=\"sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3\"\r\n");
      out.write("   crossorigin=\"anonymous\">\r\n");
      out.write("\r\n");
      out.write("<style>\r\n");
      out.write("@import\r\n");
      out.write("   url('https://fonts.googleapis.com/css?family=Exo+2|Noto+Sans+KR&display=swap')\r\n");
      out.write("   ;\r\n");
      out.write("\r\n");
      out.write("/*reset*/\r\n");
      out.write("* {\r\n");
      out.write("   margin: 0;\r\n");
      out.write("   padding: 0;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("body {\r\n");
      out.write("   margin: 0;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("h1, h2, h3, h4, h5, h6, p, ul, ol, li, dl, dt, dd {\r\n");
      out.write("   margin: 0;\r\n");
      out.write("   padding: 0;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("h1, h2, h3, h4, h5, h6 {\r\n");
      out.write("   font-weight: 700;\r\n");
      out.write("   font-size: inherit;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("a {\r\n");
      out.write("   color: inherit;\r\n");
      out.write("   text-decoration: inherit;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("img {\r\n");
      out.write("   vertical-align: middle;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("a img {\r\n");
      out.write("   border: none;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("li {\r\n");
      out.write("   list-style: none;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("address, em, i, ul {\r\n");
      out.write("   font-style: normal;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".mo {\r\n");
      out.write("   display: none;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("body {\r\n");
      out.write("   font-family: 'Noto Sans KR', sans-serif;\r\n");
      out.write("   font-size: 14px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("header {\r\n");
      out.write("   font-family: 'Noto Sans KR', sans-serif;\r\n");
      out.write("   letter-spacing: -0.5px;\r\n");
      out.write("   background: rgb(255, 192, 0);\r\n");
      out.write("   color: white;\r\n");
      out.write("   height: 10vh;\r\n");
      out.write("   width: 100%;\r\n");
      out.write("   position: relative;\r\n");
      out.write("   margin-top: -20px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".mainHeader {\r\n");
      out.write("   width: 100%;\r\n");
      out.write("   margin-top: 20px;\r\n");
      out.write("   box-sizing: border-box;\r\n");
      out.write("   vertical-align: center;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".mainHeader .gnbMo {\r\n");
      out.write("   display: none;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".mainHeader .gnb {\r\n");
      out.write("   float: left;\r\n");
      out.write("   margin-left: 80px;\r\n");
      out.write("   margin-top: 3vh;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".mainHeader .gnb li {\r\n");
      out.write("   float: left;\r\n");
      out.write("   margin-right: 80px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".mainHeader .gnb li a {\r\n");
      out.write("   display: block;\r\n");
      out.write("   width: 100%;\r\n");
      out.write("   height: 100%;\r\n");
      out.write("   text-align: center;\r\n");
      out.write("   color: #fff;\r\n");
      out.write("   font-size: 16px;\r\n");
      out.write("   text-decoration-line: none;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".mainHeader .gnb li a:hover, .mainHeader .gnb li a:focus {\r\n");
      out.write("   color: #ff8342;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".mainHeader .tnb {\r\n");
      out.write("   float: right;\r\n");
      out.write("   margin-top: 3vh;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".mainHeader .tnb li {\r\n");
      out.write("   float: left;\r\n");
      out.write("   margin-right: 50px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".mainHeader .tnb li a {\r\n");
      out.write("   display: block;\r\n");
      out.write("   width: 100%;\r\n");
      out.write("   height: 100%;\r\n");
      out.write("   text-align: center;\r\n");
      out.write("   font-size: 16px;\r\n");
      out.write("   color: #fff;\r\n");
      out.write("   text-decoration-line: none;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".mainHeader .tnb li:nth-child(1) a i, .mainHeader .tnb li:nth-child(2) a i\r\n");
      out.write("   {\r\n");
      out.write("   font-size: 20px;\r\n");
      out.write("   margin-right: 8px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* .mainHeader .tnb li:last-child a {\r\n");
      out.write("   display: block;\r\n");
      out.write("   width: 70px;\r\n");
      out.write("   line-height: 2;\r\n");
      out.write("   border: 1px solid #fff;\r\n");
      out.write("   border-radius: 30px;\r\n");
      out.write("   margin-top: 35px;\r\n");
      out.write("} */\r\n");
      out.write("\r\n");
      out.write(".mainHeader .tnb li:last-child a i {\r\n");
      out.write("   margin-left: 5px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".mainHeader .tnb li:last-child a:hover {\r\n");
      out.write("   background: #fff;\r\n");
      out.write("   color: #ff8342;\r\n");
      out.write("   transition: all 0.3s;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".btn-primary {\r\n");
      out.write("    color: #fff;\r\n");
      out.write("    background-color: #105b63;\r\n");
      out.write("    border-color: #105b63;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("   <!--header-->\r\n");
      out.write("   <header>\r\n");
      out.write("      <div class=\"mainHeader\">\r\n");
      out.write("         <nav class=\"gnb\">\r\n");
      out.write("            <ul>\r\n");
      out.write("               <li><a href=\"mainpage.action\">B:CLE</a></li>\r\n");
      out.write("\r\n");
      out.write("            </ul>\r\n");
      out.write("         </nav>\r\n");
      out.write("         <nav class=\"tnb\">\r\n");
      out.write("            <ul>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("               <li>\r\n");
      out.write("                  <form class=\"d-flex\">\r\n");
      out.write("                     <input class=\"form-control me-2\" type=\"search\"\r\n");
      out.write("                        placeholder=\"Search\" aria-label=\"Search\">\r\n");
      out.write("                     <button class=\"btn btn-outline-success\" type=\"submit\">Search</button>\r\n");
      out.write("                  </form>\r\n");
      out.write("               </li>\r\n");
      out.write("               \r\n");
      out.write("               <li><a href=\"#\">대표관리자님 환영합니다!</a></li>\r\n");
      out.write("               <li><a href=\"#\">로그아웃</a></li>\r\n");
      out.write("\r\n");
      out.write("            </ul>\r\n");
      out.write("         </nav>\r\n");
      out.write("         <nav class=\"gnbMo\">\r\n");
      out.write("            <a href=\"#\"><i class=\"fa fa-bars\" aria-hidden=\"true\"></i></a>\r\n");
      out.write("         </nav>\r\n");
      out.write("      </div>\r\n");
      out.write("   </header>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("<!-- 검색부분에 쓸 부트스트랩 -->\r\n");
      out.write("<!--       <form class=\"d-flex\">\r\n");
      out.write("        <input class=\"form-control me-2\" type=\"search\" placeholder=\"Search\" aria-label=\"Search\">\r\n");
      out.write("        <button class=\"btn btn-outline-success\" type=\"submit\">Search</button>\r\n");
      out.write("      </form> -->");
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
}
