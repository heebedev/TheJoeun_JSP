/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.49
 * Generated at: 2020-05-28 09:30:53 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class BackEx_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<meta charset=\"UTF-8\">\n");
      out.write("<title>Form Tag</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t<form action=\"#\" method=\"post\" style=\"font-family: nanum gothic;\">\n");
      out.write("\t\t<table align=\"center\">\n");
      out.write("\t\t\t<tr>\n");
      out.write("\t\t\t\t<td>이름 : </td>\n");
      out.write("\t\t\t\t<td><input type=\"text\" name=\"userName\" /></td>\n");
      out.write("\t\t\t</tr>\n");
      out.write("\t\t\t<tr>\n");
      out.write("\t\t\t\t<td>아이디 : </td>\n");
      out.write("\t\t\t\t<td><input type=\"text\" name=\"userId\" /></td>\n");
      out.write("\t\t\t</tr>\n");
      out.write("\t\t\t<tr>\n");
      out.write("\t\t\t\t<td>비밀번호 : </td>\n");
      out.write("\t\t\t\t<td><input type=\"password\" name=\"userPassword\" /></td>\n");
      out.write("\t\t\t</tr>\n");
      out.write("\t\t\t<tr>\n");
      out.write("\t\t\t\t<td>연락처 :</td>\n");
      out.write("\t\t\t\t<td><input type=\"text\" name=\"phone1\" size=\"5\" /> - \n");
      out.write("\t\t\t\t\t    <input type=\"text\" name=\"phone2\" size=\"5\" /> - \n");
      out.write("\t\t\t\t\t\t<input type=\"text\" name=\"phone3\" size=\"5\" /></td>\n");
      out.write("\t\t\t</tr>\n");
      out.write("\t\t\t<tr>\n");
      out.write("\t\t\t\t<td>사진 :</td>\n");
      out.write("\t\t\t\t<td><input type=\"file\" name=\"picture\" value=\"파일 선택\" /></td>\n");
      out.write("\t\t\t</tr>\n");
      out.write("\t\t\t<tr>\n");
      out.write("\t\t\t\t<td>성별 : </td>\n");
      out.write("\t\t\t\t<td><input type=\"radio\" name=\"gender\" value=\"man\" checked=\"checked\" /> 남\n");
      out.write("\t\t\t\t\t  <input type=\"radio\" name=\"gender\" value=\"woman\" /> 여 </td>\n");
      out.write("\t\t\t</tr>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<tr>\n");
      out.write("\t\t\t\t<td>언어 : </td>\n");
      out.write("\t\t\t\t<td><input type=\"checkbox\" name=\"lang\" value=\"Kor\" checked=\"checked\" /> 한국어\n");
      out.write("\t\t\t\t\t  <input type=\"checkbox\" name=\"lang\" value=\"Eng\" /> 영어\n");
      out.write("\t\t\t\t\t  <input type=\"checkbox\" name=\"lang\" value=\"Chn\" /> 중국어\n");
      out.write("\t\t\t\t\t  <input type=\"checkbox\" name=\"lang\" value=\"Jpn\" /> 일어\t</td>\n");
      out.write("\t\t\t</tr>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<tr>\n");
      out.write("\t\t\t\t<td>자기소개 : </td>\n");
      out.write("\t\t\t\t<td><textarea rows=\"5\" cols=\"20\">간단하게 입력하세요.</textarea></td>\n");
      out.write("\t\t\t</tr>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<tr>\n");
      out.write("\t\t\t\t<td>국적 : </td>\n");
      out.write("\t\t\t\t<td><select>\n");
      out.write("\t\t\t\t\t\t<option>Korea</option>\n");
      out.write("\t\t\t\t\t\t<option>USA</option>\n");
      out.write("\t\t\t\t\t\t<option>Japan</option>\n");
      out.write("\t\t\t\t\t\t<option>China</option>\n");
      out.write("\t\t\t\t\t </select> </td>\n");
      out.write("\t\t\t</tr>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<tr>\n");
      out.write("\t\t\t\t<td>좋아하는 음식 : </td>\n");
      out.write("\t\t\t\t<td><select multiple=\"multiple\">\n");
      out.write("\t\t\t\t\t\t\t\t<option>김치</option>\n");
      out.write("\t\t\t\t\t\t\t\t<option>불고기</option>\n");
      out.write("\t\t\t\t\t\t\t\t<option>파전</option>\n");
      out.write("\t\t\t\t\t\t\t\t<option>비빔밥</option>\n");
      out.write("\t\t\t\t\t\t\t\t<option>냉면</option>\n");
      out.write("\t\t\t\t\t\t\t\t<option>순대</option>\n");
      out.write("\t\t\t\t\t</select> </td>\n");
      out.write("\t\t\t</tr>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<tr>\n");
      out.write("\t\t\t\t<td colspan=\"2\" align=\"center\"><input type=\"submit\" name=\"okBtn\" value=\"OK\" /></td>\n");
      out.write("\t\t\t</tr>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t</table>\n");
      out.write("\t</form>\t\n");
      out.write("</body>\n");
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