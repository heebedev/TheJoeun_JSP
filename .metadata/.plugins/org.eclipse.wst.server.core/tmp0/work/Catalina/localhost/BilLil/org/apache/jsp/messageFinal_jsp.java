/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.49
 * Generated at: 2020-06-18 08:53:03 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class messageFinal_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("jar:file:/usr/local/apache-tomcat-8.5.49/lib/taglibs-standard-impl-1.2.5.jar!/META-INF/c.tld", Long.valueOf(1425946270000L));
    _jspx_dependants.put("file:/usr/local/apache-tomcat-8.5.49/lib/taglibs-standard-impl-1.2.5.jar", Long.valueOf(1574016365000L));
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
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.release();
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta charset=\"UTF-8\">\n");
      out.write("<title>쪽지 보관함</title>\n");
      out.write("\t<script type=\"text/JavaScript\">\n");
      out.write("\t\n");
      out.write("         function msgDetail(textseq, nickname_send, nickname_receive, message, insertdate) { \n");
      out.write("               \tvar seq = textseq;\n");
      out.write("               \tvar send = nickname_send;\n");
      out.write("               \tvar receive = nickname_receive;\n");
      out.write("               \tvar msg = message;\n");
      out.write("               \tvar date = insertdate;\n");
      out.write("               \t\n");
      out.write("               \tdocument.getElementById(\"send\").innerHTML = '보낸사람 : ' + send;\n");
      out.write("               \tdocument.getElementById(\"receive\").innerHTML = '받는사람 : ' + receive;\n");
      out.write("               \tdocument.getElementById(\"message\").innerHTML = msg;\n");
      out.write("               \tdocument.getElementById(\"date\").innerHTML = date;\n");
      out.write("     \n");
      out.write("        \t}\n");
      out.write("    </script>\n");
      out.write("\t\n");
      out.write("\t<style>\n");
      out.write("\t.item1 { grid-area: header1; height: 40px; margin: 0 300px 0 300px; width: 800px;}\n");
      out.write("\t.item2 { grid-area: menu; height: 400px; margin: 0 0 0 300px; width: 300px;}\n");
      out.write("\t.item3 { grid-area: main; height: 405px; margin: 0 530px 0 0; width: 485px;}\n");
      out.write("\t.item4 { grid-area: footer; height: 40px; margin: 0 300px 0 300px; width: 800px;}\n");
      out.write("\t.tablenick_send { grid-area: nicksend;}\n");
      out.write("\t.tablenick_receive { grid-area: nickreceive;}\n");
      out.write("\t.tabledate { grid-area: date;}\n");
      out.write("\t.tablemessage { grid-area: message;}\n");
      out.write("\t.detail_send { grid-area: detailsend; width:458px; font-weight: bold; text-align: left; padding-top:20px; padding-left:20px;}\n");
      out.write("\t.detail_receive { grid-area: detailreceive; width:458px; font-weight: bold; text-align: left; padding-left:20px;}\n");
      out.write("\t.detaildate { grid-area: detaildate; padding-top: 20px; width:458px; }\n");
      out.write("\t.detailmessage { grid-area: detailmessage; width:450px; padding-left:15px; padding-top: 20px;}\n");
      out.write("\t\n");
      out.write("\t\n");
      out.write("\t.grid-container {\n");
      out.write("\t  display: grid;\n");
      out.write("\t  grid-template-areas:\n");
      out.write("\t    'header1 header1 header1'\n");
      out.write("\t    'menu main main'\n");
      out.write("\t    'footer footer footer';\n");
      out.write("\t  grid-gap: 5px;\n");
      out.write("\t  padding: 20px;\n");
      out.write("\t  font-family: sans-serif;\n");
      out.write("\t}\n");
      out.write("\t\n");
      out.write("\t.item2 {\n");
      out.write("\t  display: grid;\n");
      out.write("\t  grid-template-areas:\n");
      out.write("\t    'nicksend nickreceive'\n");
      out.write("\t    'message'\n");
      out.write("\t    'date';\n");
      out.write("\t  padding: 5px;\n");
      out.write("\t  font-family: sans-serif;\n");
      out.write("\t  overflow: scroll;\n");
      out.write("\t}\n");
      out.write("\t\n");
      out.write("\t.grid-container > div {\n");
      out.write("\t  background-color: rgba(231, 235, 238, 100);\n");
      out.write("\t  text-align: center;\n");
      out.write("\t  font-size: 15px;\n");
      out.write("\t}\n");
      out.write("\t\n");
      out.write("\tform {\n");
      out.write("\t\tdisplay: inline;\n");
      out.write("\t\tvertical-align: middle;\n");
      out.write("\t}\n");
      out.write("\t\n");
      out.write("\t.tablemessage {\n");
      out.write("    overflow: hidden;\n");
      out.write("    text-overflow: ellipsis;\n");
      out.write("    white-space: nowrap;\n");
      out.write("    width: 280px;\n");
      out.write("\t}\n");
      out.write("\t\n");
      out.write("\t.tablenick_send {\n");
      out.write("\t float:left;\n");
      out.write("     font-weight: bold;\n");
      out.write("\t}\n");
      out.write("\t.tablenick_receive {\n");
      out.write("\t float:right;\n");
      out.write("     font-weight: bold;\n");
      out.write("\t}\n");
      out.write("\n");
      out.write("\t.tabledate {\n");
      out.write("    float: right;\n");
      out.write("\t}\n");
      out.write("\t\n");
      out.write("\t.messageTable {\n");
      out.write("    width: 280px;\n");
      out.write("    border-top:1px solid silver;\n");
      out.write("    border-bottom:1px solid silver;\n");
      out.write("    margin-bottom:5px;\n");
      out.write("    \n");
      out.write("\t}\n");
      out.write("\t.messageTable:active {\n");
      out.write("    background-color: silver;\n");
      out.write("    \n");
      out.write("\t}\n");
      out.write("\t</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t\t<div class=\"grid-container\">\n");
      out.write("\t\t  <div class=\"item1\">\n");
      out.write("\t\t  \t<div style=\"float: left; width: 50%;\">\n");
      out.write("\t\t\t  \t<form action=\"message.bill\" method=\"post\" align=\"left\">\n");
      out.write("\t\t\t\t\t<input type=\"radio\" name=\"selection\" value=\"total\" checked=\"checked\">전체\n");
      out.write("\t\t\t\t\t<input type=\"radio\" name=\"selection\" value=\"receive\">받은 쪽지\n");
      out.write("\t\t\t\t\t<input type=\"radio\" name=\"selection\" value=\"send\">보낸 쪽지\n");
      out.write("\t\t\t\t\t<input type=\"submit\" value=\"확인\">\n");
      out.write("\t\t\t  \t</form>\n");
      out.write("\t\t  \t</div>\n");
      out.write("\t\t  \t<div style=\"float: right; width: 50%;\">\n");
      out.write("\t\t  \t\t<form action=\"message.bill\" method=\"post\" align=\"right\">\n");
      out.write("\t\t\t\t<select name=\"search\">\n");
      out.write("\t\t\t\t\t<option value=\"nick_send\">보낸 사람</option>\n");
      out.write("\t\t\t\t\t<option value=\"nick_receive\">받는 사람</option>\n");
      out.write("\t\t\t\t\t<option value=\"message\">내용</option>\n");
      out.write("\t\t\t\t</select>\n");
      out.write("\t\t\t\t\t<input type=\"text\" width=\"100\" name=\"searchText\">\n");
      out.write("\t\t\t\t\t<input type=\"submit\" value=\"검색\">\n");
      out.write("\t\t  \t\t</form>\n");
      out.write("\t\t  \t</div>\n");
      out.write("\t\t  </div>\n");
      out.write("\t\t  <div class=\"item2\">\n");
      out.write("\t\t\t\t");
      if (_jspx_meth_c_005fforEach_005f0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t  <div class=\"item3\">\n");
      out.write("\t\t\t<div class=\"detailTable\">\n");
      out.write("\t\t\t\t<div id=\"send\" class=\"detail_send\" text-align=\"left\"></div>\n");
      out.write("\t\t\t\t<div id=\"receive\" class=\"detail_receive\" text-align=\"right\"></div>\n");
      out.write("\t\t\t\t<div id=\"message\" class=\"detailmessage\"></div>\n");
      out.write("\t\t\t\t<div id=\"date\" class=\"detaildate\" text-align=\"right\"></div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t  </div>  \n");
      out.write("\t\t  <div class=\"item4\"><input type=\"button\" value=\"닫기\" onClick=\"window.close()\"></div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\n");
      out.write("\n");
      out.write("\n");
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
      // /messageFinal.jsp(131,4) name = items type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setItems(new org.apache.jasper.el.JspValueExpression("/messageFinal.jsp(131,4) '${messageList }'",_jsp_getExpressionFactory().createValueExpression(_jspx_page_context.getELContext(),"${messageList }",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
      // /messageFinal.jsp(131,4) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setVar("message");
      int[] _jspx_push_body_count_c_005fforEach_005f0 = new int[] { 0 };
      try {
        int _jspx_eval_c_005fforEach_005f0 = _jspx_th_c_005fforEach_005f0.doStartTag();
        if (_jspx_eval_c_005fforEach_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\n");
            out.write("\t\t\t\t\t<div class=\"messageTable\" onClick = \"msgDetail(");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${message.textseq}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write(',');
            out.write('\'');
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${message.nickname_send}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("', '");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${message.nickname_receive}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("', '");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${message.message}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("', '");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${message.date}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("')\">\n");
            out.write("\t\t\t\t\t\t<div class=\"tablenick_send\" text-align=\"left\">보낸 사람 : ");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${message.nickname_send}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</div>\n");
            out.write("\t\t\t\t\t\t<div class=\"tablenick_receive\" text-align=\"right\">받는 사람 : ");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${message.nickname_receive}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</div>\n");
            out.write("\t\t\t\t\t\t<div class=\"tablemessage\">");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${message.message}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</div>\n");
            out.write("\t\t\t\t\t\t<div class=\"tabledate\" text-align=\"right\">");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${message.date}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</div>\n");
            out.write("\t\t\t\t\t</div>\n");
            out.write("\t\t\t\t");
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
}