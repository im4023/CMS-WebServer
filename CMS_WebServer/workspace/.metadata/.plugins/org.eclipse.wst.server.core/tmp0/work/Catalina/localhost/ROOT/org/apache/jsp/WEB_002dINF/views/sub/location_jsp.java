/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.53
 * Generated at: 2020-05-08 02:47:17 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.sub;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class location_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(5);
    _jspx_dependants.put("/WEB-INF/lib/jstl-jstl-1.2.jar", Long.valueOf(1587602298702L));
    _jspx_dependants.put("/WEB-INF/views/sub/../include/nav.jsp", Long.valueOf(1587715402256L));
    _jspx_dependants.put("/WEB-INF/views/sub/../include/sidenav.jsp", Long.valueOf(1587629586554L));
    _jspx_dependants.put("jar:file:/C:/Users/Bymtech/Desktop/hompage/board/workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/board/WEB-INF/lib/jstl-jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("/WEB-INF/views/sub/../include/footer.jsp", Long.valueOf(1587633888914L));
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
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"ko\">\r\n");
      out.write("\t<head>\r\n");
      out.write("\t\r\n");
      out.write("\t\t<meta charset=\"utf-8\">\r\n");
      out.write("\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("\t\t<meta name=\"description\" content=\"\">\r\n");
      out.write("\t\t<meta name=\"author\" content=\"\">\r\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"/resources/css/style.css\"/>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<title>바이엠텍</title>\r\n");
      out.write("\t</head>\r\n");
      out.write("\t\r\n");
      out.write("\t<body>\r\n");
      out.write("\t\t<!-- Navigation -->\r\n");
      out.write("\t\t<nav class=\"navbar navbar-expand-lg fixed-top\" id=\"mainNav\">\r\n");
      out.write("\t\t\t");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- Navigation -->\r\n");
      out.write("\t\r\n");
      out.write("\t\t<div class=\"container border-top-red border-bottom-red\" id=\"navcontainer\">\r\n");
      out.write("\t\t\t<a href=\"/\"><img class =\"logo_img\" src = \"/resources/img/index/logo.png\" alt=\"\" ></a>\r\n");
      out.write("\t\t\t<div class=\"collapse navbar-collapse\" id=\"navbarResponsive\">\r\n");
      out.write("\t\t\t\t<ul class=\"navbar-nav ml-auto\">\r\n");
      out.write("\t\t\t\t\t<li class=\"nav-item mx-0 mx-lg-1\">\r\n");
      out.write("\t\t\t\t\t\t<a class=\"nav-link\" href=/sub/company>회사소개</a>\r\n");
      out.write("\t\t\t\t\t\t<ul class= \"submenu navbar-nav ml-auto\">\r\n");
      out.write("\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<a class=\"nav-link\" href=\"/sub/company\" >인사말</a>\r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<a class=\"nav-link\" href=\"/sub/history\" >연혁</a>\r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<a class=\"nav-link\" href=\"/sub/location\" >찾아오시는 길</a>\r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t<li class=\"nav-item mx-0 mx-lg-1\">\r\n");
      out.write("\t\t\t\t\t\t<a class=\"nav-link \" href=\"/sub/business\">사업소개</a>\r\n");
      out.write("\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t<li class=\"nav-item mx-0 mx-lg-1\">\r\n");
      out.write("\t\t\t\t\t\t<a class=\"nav-link \" href=\"/sub/goods\">제품소개</a>\r\n");
      out.write("\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t<li class=\"nav-item mx-0 mx-lg-1\">\r\n");
      out.write("\t\t\t\t\t\t<a class=\"nav-link \" href=\"/announce/announcement\">고객센터</a>\r\n");
      out.write("\t\t\t\t\t\t<ul class= \"submenu navbar-nav ml-auto\">\r\n");
      out.write("\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<a class=\"nav-link\" href=\"/announce/announcement\" >공지사항</a>\r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<a class=\"nav-link\" href=\"/board/write\" >문의사항</a>\r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<button class=\"navbar-toggler\" type=\"button\" id=\"menubutton\">\r\n");
      out.write("\t      \t\t\t<span></span>\r\n");
      out.write("     \t\t\t\t<span></span>\r\n");
      out.write("     \t\t\t\t<span></span>\r\n");
      out.write("    \t\t\t</button>\r\n");
      out.write("\t    \t\t\t\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t");
      out.write("\r\n");
      out.write("\t\t</nav>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<!-- Main -->\r\n");
      out.write("\t\t<div class=\"container\" id=locationmain>\r\n");
      out.write("\t\t\t<!-- sidebar -->\r\n");
      out.write("\t\t\t");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- sidenav -->\r\n");
      out.write("\t<nav id=\"sidebar\">\r\n");
      out.write("\t\t<button class = \"close_button\" type=\"button\">\r\n");
      out.write("\t\t\t<img src=\"/resources/img/index/close.png\" alt=\"\" class = close_img >\r\n");
      out.write("\t\t</button>\r\n");
      out.write("   \t\t\t<ul class=\"sidebar-nav\">\r\n");
      out.write("\t\t\t<li>\r\n");
      out.write("\t\t\t\t<a  href=\"/sub/company\" class=\"sidebar_m sidebar_link\"  >회사소개</a>\r\n");
      out.write("\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t<a  href=\"/sub/company\" class=\"sidebar_s sidebar_link\"  >인사말</a>\r\n");
      out.write("\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t<a  href=\"/sub/history\" class=\"sidebar_s sidebar_link\"  >연혁</a>\r\n");
      out.write("\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t<a  href=\"/sub/location\" class=\"sidebar_s sidebar_link\"  >찾아오시는 길</a>\r\n");
      out.write("\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t</li>\r\n");
      out.write("\t\t\t<li >\r\n");
      out.write("\t\t\t\t<a  href=\"/sub/business\" class=\"sidebar_m sidebar_link\"  >사업소개</a>\r\n");
      out.write("\t\t\t</li>\r\n");
      out.write("\t\t\t<li >\r\n");
      out.write("\t\t\t\t<a  href=\"/sub/goods\" class=\"sidebar_m sidebar_link\">제품소개</a>\r\n");
      out.write("\t\t\t</li>\r\n");
      out.write("\t\t\t<li>\r\n");
      out.write("\t\t\t\t<a  href=\"/announce/announcement\" class=\"sidebar_m sidebar_link\">고객센터</a>\r\n");
      out.write("\t\t\t\t<ul >\r\n");
      out.write("\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t<a  href=\"/announce/announcement\" class=\"sidebar_s sidebar_link\">공지사항</a>\r\n");
      out.write("\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"/board/write\" class=\"sidebar_s sidebar_link\">문의사항</a>\r\n");
      out.write("\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t</li>\r\n");
      out.write("\t\t</ul>\r\n");
      out.write("\t</nav>");
      out.write("\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<div class=\"location_top\">\r\n");
      out.write("\t\t\t\t<div class=\"location_intro\">\r\n");
      out.write("\t\t\t\t\t<span><strong>찾아오시는 길</strong></span>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"location_bottom\">\r\n");
      out.write("\t\t\t\t<div class= location_title>\r\n");
      out.write("\t\t\t\t\t<a>대전 연구소</a>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class= location_contents>\r\n");
      out.write("\t\t\t\t\t<div class= location_inner>\r\n");
      out.write("\t\t\t\t\t\t<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2699.7773679562374!2d127.40704055529159!3d36.419006050804306!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x356536411d237fb7%3A0xc11ad1484ca26bbf!2z7KeA64ql66Gc67SH7IKw7JeF7ZmU7IS87YSw!5e0!3m2!1sko!2skr!4v1585643762013!5m2!1sko!2skr\" width=\"600\" height=\"450\" style=\"border:0;\" aria-hidden=\"false\" tabindex=\"0\"></iframe>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class= location_inner>\r\n");
      out.write("\t\t\t\t\t\t<div class=inner_title>\r\n");
      out.write("\t\t\t\t\t\t\t<span >주소</span>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<span>대전광역시 유성구 테크노9로 35 (탑립동) 지능로봇산업화센터 401호</span><br><br>\r\n");
      out.write("\t\t\t\t\t\t<div class=inner_title>\r\n");
      out.write("\t\t\t\t\t\t\t<span>대중교통 이용안내</span>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<span><img class= \"bus_img\" src=/resources/img/location/bus1.jpg>일반 버스 : 701번</span><br>\r\n");
      out.write("\t\t\t\t\t\t<span><img class= \"bus_img\" src=/resources/img/location/bus2.jpg>마을 버스 : 1번 </span><br>\r\n");
      out.write("\t\t\t\t\t\t<span><img class= \"bus_img\" src=/resources/img/location/bus2.jpg>외곽 버스 : 첨단 1번</span>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"location_bottom\">\t\r\n");
      out.write("\t\t\t\t<div class= location_title>\r\n");
      out.write("\t\t\t\t\t<a>포항 본사</a>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class= location_contents>\r\n");
      out.write("\t\t\t\t\t<div class= location_inner>\r\n");
      out.write("\t\t\t\t\t\t<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d959.3162097539312!2d129.36066471625324!3d36.02658714939575!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x35670182210398eb%3A0xf06063ad3ff7d174!2z7ISx7JuQ66mU65SU7Lus!5e0!3m2!1sko!2skr!4v1585646821363!5m2!1sko!2skr\" width=\"600\" height=\"450\" style=\"border:0;\" aria-hidden=\"false\" tabindex=\"0\"></iframe>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class= location_inner>\r\n");
      out.write("\t\t\t\t\t\t<div class=inner_title>\r\n");
      out.write("\t\t\t\t\t\t\t<span >주소</span>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<span>경북 포항시 북구 중흥로 265 (죽도동) 성원메디컬 108호</span><br><br>\r\n");
      out.write("\t\t\t\t\t\t<div class=inner_title>\r\n");
      out.write("\t\t\t\t\t\t\t<span>대중교통 이용안내</span>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<span><img class= \"bus_img\" src=/resources/img/location/bus1.jpg>일반버스 : 105번, 108번, 109번, </span> <br>\r\n");
      out.write("\t\t\t\t\t\t<span><img class= \"bus_img\" src=/resources/img/location/bus2.jpg>좌석버스 : 100번, 200번, 500번, 600번, 700번</span><br>\r\n");
      out.write("\t\t\t\t\t\t<span><img class= \"bus_img\" src=/resources/img/location/bus2.jpg>지선버스 : 510번 </span><br>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<!-- Footer -->\t\r\n");
      out.write("\t    <footer class=\"footer\" id=\"footer\">\r\n");
      out.write("\t\t    ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- Footer -->\r\n");
      out.write("\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\t<div class=\"address\">\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<p class=\" txtBase\">\r\n");
      out.write("\t\t\t\t\t대표자(성명) : 김병용&nbsp;&nbsp;사업자 등록번호 : 375-85-00293, 314-86-5779<br>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\t포항 \t본사 \t주소 : (37748) 경북 포항시 북구 중흥로 265 (죽도동) 성원메디컬 108호<br>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\t대전 연구소 주소 : (34027) 대전광역시 유성구 테크노9로 35 (탑립동) 지능로봇산업화센터 401호 <br>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\t전화 : 070-4265-3411&nbsp;&nbsp;팩스 : 070-4015-0616&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t<a href=\"../board/write\"><img class=mail src=\"/resources/img/index/mail.png\" alt=\"\"></a>\r\n");
      out.write("\t\t\t\t</p> \r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t");
      out.write("\r\n");
      out.write("\t\t</footer>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<script src=\"/resources/js/jquery-3.4.1.min.js\"></script>\r\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"/resources/js/jstyle.js\"></script>\r\n");
      out.write("\t</body>\r\n");
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
}
