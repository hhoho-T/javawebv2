/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.74
 * Generated at: 2023-05-09 22:37:24 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.sql.SQLException");
    _jspx_imports_classes.add("java.sql.Connection");
    _jspx_imports_classes.add("java.sql.ResultSet");
    _jspx_imports_classes.add("java.sql.PreparedStatement");
    _jspx_imports_classes.add("java.sql.DriverManager");
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

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("            .text {\n");
      out.write("                font-family: 'Open Sans', sans-serif;\n");
      out.write("                font-size: 14px;\n");
      out.write("                color: #333;\n");
      out.write("                line-height: 1.5;\n");
      out.write("                text-align: center;\n");
      out.write("                text-decoration: none;\n");
      out.write("                text-transform: uppercase;\n");
      out.write("                letter-spacing: 0.2em;\n");
      out.write("                font-weight: 900;\n");
      out.write("                margin-bottom:  10px;\n");
      out.write("                -webkit-text-emphasis-style: none;\n");
      out.write("                -webkit-text-decoration-style: none;\n");
      out.write("                -webkit-text-emphasis-color: #000;\n");
      out.write("                -webkit-text-decoration-color: #000;\n");
      out.write("                -webkit-font-smoothing: antialiased;\n");
      out.write("                -webkit-font-feature-settings: \"liga\" on;\n");
      out.write("                -webkit-font-feature-settings: \"kern\" on;\n");
      out.write("                -webkit-font-feature-settings: \"tilt\" on;\n");
      out.write("                -webkit-font-feature-settings: \"opbd\" on;\n");
      out.write("            }\n");
      out.write("            label {\n");
      out.write("                float: left;\n");
      out.write("                margin-left: 8px;\n");
      out.write("            }\n");
      out.write("            .center {\n");
      out.write("                width: 380px;\n");
      out.write("                text-align: center;\n");
      out.write("                margin: auto;\n");
      out.write("                border: 2px #333 solid;\n");
      out.write("            }\n");
      out.write("            input {\n");
      out.write("                right: 0;\n");
      out.write("            }\n");
      out.write("            .save {\n");
      out.write("                width: 60px;\n");
      out.write("                height: 30px;\n");
      out.write("                font-size: 16px;\n");
      out.write("                margin-bottom: 10px;\n");
      out.write("            }\n");
      out.write("            button {\n");
      out.write("                width: 90px;\n");
      out.write("                height: 30px;\n");
      out.write("                font-size: 16px;\n");
      out.write("                margin-bottom: 10px;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            a {\n");
      out.write("                text-decoration: none;\n");
      out.write("                color: #000;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"center\">\n");
      out.write("            <h1>Quản lý sinh viên</h1>\n");
      out.write("            <form action=\"Sinh_Vien\" method=\"POST\">\n");
      out.write("                <div class=\"text\">\n");
      out.write("                    <label for=\"text\">Mã sinh viên :</label>\n");
      out.write("                    <input type=\"text\" name=\"masv\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"text\">\n");
      out.write("                    <label for=\"text\">Họ và Tên : </label>\n");
      out.write("                    <input  type=\"text\" name=\"hoten\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"text\">\n");
      out.write("                    <label for=\"text\">Lớp : </label>\n");
      out.write("                    <input type=\"text\" name=\"lop\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"text\">\n");
      out.write("                    <label for=\"text\">Giới Tính : </label>\n");
      out.write("                    <input type=\"text\" name=\"gioitinh\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"text\">\n");
      out.write("                    <label for=\"text\">Địa Chỉ : </label>\n");
      out.write("                    <input type=\"text\" name=\"diachi\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"text\">\n");
      out.write("                    <label for=\"text\">Số điện thoại :</label>\n");
      out.write("                    <input  type=\"text\" name=\"sdt\">\n");
      out.write("                </div>\n");
      out.write("                <input type=\"submit\" value=\"SAVE\" class=\"save\"/>\n");
      out.write("                \n");
      out.write("            </form>\n");
      out.write("        </div\n");
      out.write("\n");
      out.write("    </body>\n");
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