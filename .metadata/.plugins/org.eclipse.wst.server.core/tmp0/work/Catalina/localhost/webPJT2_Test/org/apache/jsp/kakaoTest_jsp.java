/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.49
 * Generated at: 2020-06-12 01:19:13 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class kakaoTest_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

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

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title>???????????? ?????????</title>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"/>\n");
      out.write("<script src=\"http://code.jquery.com/jquery-1.11.2.min.js\"></script>\n");
      out.write("<script src=\"https://developers.kakao.com/sdk/js/kakao.min.js\"></script>\n");
      out.write("\t<script>\n");
      out.write("\t\t$(document).ready(function(){\n");
      out.write("\t\t\tKakao.init(\"7757d6bcf3099615cd2445eb56ccbe29\");\n");
      out.write("\t\n");
      out.write("\t\tfunction getKakaotalkUserProfile(){\n");
      out.write("\t\t\tKakao.API.request({\n");
      out.write("\t\t\turl: '/v1/user/me',\n");
      out.write("\t\t\tsuccess: function(res) {\n");
      out.write("\t\t\t$(\"#kakao-profile\").append(res.properties.nickname);\n");
      out.write("\t\t\t$(\"#kakao-profile\").append($(\"<img/>\",{\"src\":res.properties.profile_image,\"alt\":res.properties.nickname+\"?????? ????????? ??????\"}));\n");
      out.write("\t\t\t},\n");
      out.write("\t\t\tfail: function(error) {\n");
      out.write("\t\t\tconsole.log(error);\n");
      out.write("\t\t\t}\n");
      out.write("\t\t\t});\n");
      out.write("\t\t\t}\n");
      out.write("\t\t\n");
      out.write("\t\tfunction createKakaotalkLogin(){\n");
      out.write("\t\t\t$(\"#kakao-logged-group .kakao-logout-btn,#kakao-logged-group .kakao-login-btn\").remove();\n");
      out.write("\t\t\tvar loginBtn = $(\"<a/>\",{\"class\":\"kakao-login-btn\",\"text\":\"?????????\"});\n");
      out.write("\t\t\tloginBtn.click(function(){\n");
      out.write("\t\t\tKakao.Auth.login({\n");
      out.write("\t\t\tpersistAccessToken: true,\n");
      out.write("\t\t\tpersistRefreshToken: true,\n");
      out.write("\t\t\tsuccess: function(authObj) {\n");
      out.write("\t\t\tgetKakaotalkUserProfile();\n");
      out.write("\t\t\tcreateKakaotalkLogout();\n");
      out.write("\t\t\t},\n");
      out.write("\t\t\tfail: function(err) {\n");
      out.write("\t\t\tconsole.log(err);\n");
      out.write("\t\t\t}\n");
      out.write("\t\t\t});\n");
      out.write("\t\t\t});\n");
      out.write("\t\t\t$(\"#kakao-logged-group\").prepend(loginBtn)\n");
      out.write("\t\t\t}\n");
      out.write("\t\t\n");
      out.write("\t\t\tfunction createKakaotalkLogout(){\n");
      out.write("\t\t\t$(\"#kakao-logged-group .kakao-logout-btn,#kakao-logged-group .kakao-login-btn\").remove();\n");
      out.write("\t\t\tvar logoutBtn = $(\"<a/>\",{\"class\":\"kakao-logout-btn\",\"text\":\"????????????\"});\n");
      out.write("\t\t\tlogoutBtn.click(function(){\n");
      out.write("\t\t\tKakao.Auth.logout();\n");
      out.write("\t\t\tcreateKakaotalkLogin();\n");
      out.write("\t\t\t$(\"#kakao-profile\").text(\"\");\n");
      out.write("\t\t\t});\n");
      out.write("\t\t\t$(\"#kakao-logged-group\").prepend(logoutBtn);\n");
      out.write("\t\t\t}\n");
      out.write("\t\t\tif(Kakao.Auth.getRefreshToken()!=undefined&&Kakao.Auth.getRefreshToken().replace(/ /gi,\"\")!=\"\"){\n");
      out.write("\t\t\tcreateKakaotalkLogout();\n");
      out.write("\t\t\tgetKakaotalkUserProfile();\n");
      out.write("\t\t\t}else{\n");
      out.write("\t\t\tcreateKakaotalkLogin();\n");
      out.write("\t\t\t}\n");
      out.write("\t\t\t});\n");
      out.write("\t</script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t<div id=\"kakao-logged-group\"></div>\n");
      out.write("\t<div id=\"kakao-profile\"></div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
