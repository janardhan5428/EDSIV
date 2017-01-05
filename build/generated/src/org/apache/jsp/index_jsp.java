package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_s_url_action_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_s_include_value_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_s_url_value_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_s_url_action_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_s_include_value_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_s_url_value_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_s_url_action_nobody.release();
    _jspx_tagPool_s_include_value_nobody.release();
    _jspx_tagPool_s_url_value_nobody.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

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
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Miracle Supply Chain Visibility portal</title>\n");
      out.write("        <meta name=\"description\" content=\"website description\" />\n");
      out.write("        <meta name=\"keywords\" content=\"website keywords, website keywords\" />\n");
      out.write("        <meta http-equiv=\"content-type\" content=\"text/html; charset=UTF-8\" />\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge\" />\n");
      out.write("        <!--  <link rel=\"stylesheet\" type=\"text/css\" href=\"/includes/css/style.css\" /> -->\n");
      out.write("        <link rel=\"stylesheet\" href='");
      if (_jspx_meth_s_url_0(_jspx_page_context))
        return;
      out.write("'\n");
      out.write("              type=\"text/css\">\n");
      out.write("        <link rel=\"stylesheet\" href='");
      if (_jspx_meth_s_url_1(_jspx_page_context))
        return;
      out.write("'\n");
      out.write("              type=\"text/css\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href='");
      if (_jspx_meth_s_url_2(_jspx_page_context))
        return;
      out.write("'\n");
      out.write("              type=\"text/css\"/>\n");
      out.write("\n");
      out.write("        <script language=\"JavaScript\"\n");
      out.write("        src='");
      if (_jspx_meth_s_url_3(_jspx_page_context))
        return;
      out.write("'></script>\n");
      out.write("\n");
      out.write("        <script language=\"JavaScript\"\n");
      out.write("        src='");
      if (_jspx_meth_s_url_4(_jspx_page_context))
        return;
      out.write("'></script>\n");
      out.write("            <script language=\"JavaScript\"\n");
      out.write("            src='");
      if (_jspx_meth_s_url_5(_jspx_page_context))
        return;
      out.write("'></script>\n");
      out.write(" \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"wrapper\">\n");
      out.write("            <div id=\"main\">\n");
      out.write("                <header>\n");
      out.write("                    <div id=\"logo\">\n");
      out.write("                        ");
      if (_jspx_meth_s_include_0(_jspx_page_context))
        return;
      out.write("  \n");
      out.write("                    </div>\n");
      out.write("                    <nav>\n");
      out.write("                        <ul class=\"sf-menu\" id=\"nav\">\n");
      out.write("                            <li class=\"current\"><a href=\"");
      if (_jspx_meth_s_url_6(_jspx_page_context))
        return;
      out.write("\">TP Onboarding </a></li>\n");
      out.write("\n");
      out.write("                        </ul>\n");
      out.write("                    </nav>\n");
      out.write("                </header>\n");
      out.write("                <div id=\"site_content\">\n");
      out.write("                    <div id=\"sidebar_container\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <div id=\"detail_box\" style=\"display: none;\"> \n");
      out.write("                            <div class=\"sidebar\">\n");
      out.write("                                <h3>Detail Information</h3>\n");
      out.write("                                <div class=\"sidebar_item\">\n");
      out.write("                                    <h4>Detail 1</h4>\n");
      out.write("                                    <h5>Detail 2</h5>\n");
      out.write("                                    <h5>Detail 2</h5>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                            <div class=\"sidebar_base\"></div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"content\">\n");
      out.write("                        <div class=\"content_item\">\n");
      out.write("                            <h2>TP Onboarding</h2>\n");
      out.write("                            <div &nbsp; style=\"alignment-adjust:central;\" >\n");
      out.write("\n");
      out.write("\n");
      out.write("                                <p> Trading Partner provides a complete view of your inbound supply and outbound fulfillment activity across your supply chain network by providing and leveraging connectivity to all your supply chain trading partners, and enterprise applications.</p>\n");
      out.write("                                <p> Supply chain visibility (SCV) is the ability of parts, components or products in transit to be tracked from the manufacturer to their final destination. The goal of SCV is to improve and strengthen the supply chain by making data readily available to all stakeholders, including the customer. Supply chain visibility technology promotes quick response to change by allowing privileged users to take action and reshape demand or redirect supply.</p>\n");
      out.write("                                <p> Search link to  \n");
      out.write("                                    <!--  <a href=\"/MSCVP/doc/DocRepository.jsp\">Document Repository</a></p> -->\n");
      out.write("                                    <a href=\"");
      if (_jspx_meth_s_url_7(_jspx_page_context))
        return;
      out.write("\">TP Onboarding</a> </p>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <div id=\"sec_box\" style=\"display: none;\"> \n");
      out.write("                        <div class=\"content\">\n");
      out.write("                            <div class=\"content_item\" >\n");
      out.write("\n");
      out.write("                                <div class=\"CSSTableGenerator\" >\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                    <table  border=\"0\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#FFFFFF\">\n");
      out.write("\n");
      out.write("                                        <tr align=\"center\">\n");
      out.write("                                            <td class=\"tbd\">PO #</td>\n");
      out.write("                                            <td class=\"tbd\">Item Qty</td>\n");
      out.write("                                            <td class=\"tbd\">Invoice No </td>\n");
      out.write("                                            <td class=\"tbd\">Invoice Amount</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td><a href=\"#\" id=\"detail_link\" >1001</></td>\n");
      out.write("                                            <td class=\"tbd\">3</td>\n");
      out.write("                                            <td class=\"tbd\">6</td>\n");
      out.write("                                            <td class=\"tbd\">$300</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td><a href=\"#\" id=\"detail_link\" >1001</></td>\n");
      out.write("                                            <td class=\"tbd\">3</td>\n");
      out.write("                                            <td class=\"tbd\">6</td>\n");
      out.write("                                            <td class=\"tbd\">$300</td>\n");
      out.write("                                        </tr>\n");
      out.write("\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td><a href=\"#\" id=\"detail_link\" >1001</></td>\n");
      out.write("                                            <td class=\"tbd\">3</td>\n");
      out.write("                                            <td class=\"tbd\">6</td>\n");
      out.write("                                            <td class=\"tbd\">$300</td>\n");
      out.write("                                        </tr>\n");
      out.write("\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td><a href=\"#\" id=\"detail_link\" >1001</></td>\n");
      out.write("                                            <td class=\"tbd\">3</td>\n");
      out.write("                                            <td class=\"tbd\">6</td>\n");
      out.write("                                            <td class=\"tbd\">$300</td>\n");
      out.write("                                        </tr>\n");
      out.write("\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td><a href=\"#\" id=\"detail_link\" >1001</></td>\n");
      out.write("                                            <td class=\"tbd\">3</td>\n");
      out.write("                                            <td class=\"tbd\">6</td>\n");
      out.write("                                            <td class=\"tbd\">$300</td>\n");
      out.write("                                        </tr>\n");
      out.write("\n");
      out.write("                                    </table>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                ");
      out.write("\n");
      out.write("            </div> \n");
      out.write("        </div>\n");
      out.write("        <footer> \n");
      out.write("            <p><font color=\"white\">&#169 2016 Miracle Software Systems, Inc. All rights reserved</font></p>\n");
      out.write("        </footer>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_s_url_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:url
    org.apache.struts2.views.jsp.URLTag _jspx_th_s_url_0 = (org.apache.struts2.views.jsp.URLTag) _jspx_tagPool_s_url_value_nobody.get(org.apache.struts2.views.jsp.URLTag.class);
    _jspx_th_s_url_0.setPageContext(_jspx_page_context);
    _jspx_th_s_url_0.setParent(null);
    _jspx_th_s_url_0.setValue("/includes/css/style.css");
    int _jspx_eval_s_url_0 = _jspx_th_s_url_0.doStartTag();
    if (_jspx_th_s_url_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_s_url_value_nobody.reuse(_jspx_th_s_url_0);
      return true;
    }
    _jspx_tagPool_s_url_value_nobody.reuse(_jspx_th_s_url_0);
    return false;
  }

  private boolean _jspx_meth_s_url_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:url
    org.apache.struts2.views.jsp.URLTag _jspx_th_s_url_1 = (org.apache.struts2.views.jsp.URLTag) _jspx_tagPool_s_url_value_nobody.get(org.apache.struts2.views.jsp.URLTag.class);
    _jspx_th_s_url_1.setPageContext(_jspx_page_context);
    _jspx_th_s_url_1.setParent(null);
    _jspx_th_s_url_1.setValue("/includes/css/jquery-ui.css");
    int _jspx_eval_s_url_1 = _jspx_th_s_url_1.doStartTag();
    if (_jspx_th_s_url_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_s_url_value_nobody.reuse(_jspx_th_s_url_1);
      return true;
    }
    _jspx_tagPool_s_url_value_nobody.reuse(_jspx_th_s_url_1);
    return false;
  }

  private boolean _jspx_meth_s_url_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:url
    org.apache.struts2.views.jsp.URLTag _jspx_th_s_url_2 = (org.apache.struts2.views.jsp.URLTag) _jspx_tagPool_s_url_value_nobody.get(org.apache.struts2.views.jsp.URLTag.class);
    _jspx_th_s_url_2.setPageContext(_jspx_page_context);
    _jspx_th_s_url_2.setParent(null);
    _jspx_th_s_url_2.setValue("/includes/css/footerstyle.css");
    int _jspx_eval_s_url_2 = _jspx_th_s_url_2.doStartTag();
    if (_jspx_th_s_url_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_s_url_value_nobody.reuse(_jspx_th_s_url_2);
      return true;
    }
    _jspx_tagPool_s_url_value_nobody.reuse(_jspx_th_s_url_2);
    return false;
  }

  private boolean _jspx_meth_s_url_3(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:url
    org.apache.struts2.views.jsp.URLTag _jspx_th_s_url_3 = (org.apache.struts2.views.jsp.URLTag) _jspx_tagPool_s_url_value_nobody.get(org.apache.struts2.views.jsp.URLTag.class);
    _jspx_th_s_url_3.setPageContext(_jspx_page_context);
    _jspx_th_s_url_3.setParent(null);
    _jspx_th_s_url_3.setValue("/includes/js/modernizr-1.5.min.js");
    int _jspx_eval_s_url_3 = _jspx_th_s_url_3.doStartTag();
    if (_jspx_th_s_url_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_s_url_value_nobody.reuse(_jspx_th_s_url_3);
      return true;
    }
    _jspx_tagPool_s_url_value_nobody.reuse(_jspx_th_s_url_3);
    return false;
  }

  private boolean _jspx_meth_s_url_4(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:url
    org.apache.struts2.views.jsp.URLTag _jspx_th_s_url_4 = (org.apache.struts2.views.jsp.URLTag) _jspx_tagPool_s_url_value_nobody.get(org.apache.struts2.views.jsp.URLTag.class);
    _jspx_th_s_url_4.setPageContext(_jspx_page_context);
    _jspx_th_s_url_4.setParent(null);
    _jspx_th_s_url_4.setValue("/includes/js/jquery-1.9.1.js");
    int _jspx_eval_s_url_4 = _jspx_th_s_url_4.doStartTag();
    if (_jspx_th_s_url_4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_s_url_value_nobody.reuse(_jspx_th_s_url_4);
      return true;
    }
    _jspx_tagPool_s_url_value_nobody.reuse(_jspx_th_s_url_4);
    return false;
  }

  private boolean _jspx_meth_s_url_5(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:url
    org.apache.struts2.views.jsp.URLTag _jspx_th_s_url_5 = (org.apache.struts2.views.jsp.URLTag) _jspx_tagPool_s_url_value_nobody.get(org.apache.struts2.views.jsp.URLTag.class);
    _jspx_th_s_url_5.setPageContext(_jspx_page_context);
    _jspx_th_s_url_5.setParent(null);
    _jspx_th_s_url_5.setValue("/includes/js/jquery-ui.js");
    int _jspx_eval_s_url_5 = _jspx_th_s_url_5.doStartTag();
    if (_jspx_th_s_url_5.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_s_url_value_nobody.reuse(_jspx_th_s_url_5);
      return true;
    }
    _jspx_tagPool_s_url_value_nobody.reuse(_jspx_th_s_url_5);
    return false;
  }

  private boolean _jspx_meth_s_include_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:include
    org.apache.struts2.views.jsp.IncludeTag _jspx_th_s_include_0 = (org.apache.struts2.views.jsp.IncludeTag) _jspx_tagPool_s_include_value_nobody.get(org.apache.struts2.views.jsp.IncludeTag.class);
    _jspx_th_s_include_0.setPageContext(_jspx_page_context);
    _jspx_th_s_include_0.setParent(null);
    _jspx_th_s_include_0.setValue("/includes/template/indexHead.jsp");
    int _jspx_eval_s_include_0 = _jspx_th_s_include_0.doStartTag();
    if (_jspx_th_s_include_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_s_include_value_nobody.reuse(_jspx_th_s_include_0);
      return true;
    }
    _jspx_tagPool_s_include_value_nobody.reuse(_jspx_th_s_include_0);
    return false;
  }

  private boolean _jspx_meth_s_url_6(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:url
    org.apache.struts2.views.jsp.URLTag _jspx_th_s_url_6 = (org.apache.struts2.views.jsp.URLTag) _jspx_tagPool_s_url_action_nobody.get(org.apache.struts2.views.jsp.URLTag.class);
    _jspx_th_s_url_6.setPageContext(_jspx_page_context);
    _jspx_th_s_url_6.setParent(null);
    _jspx_th_s_url_6.setAction("general/login");
    int _jspx_eval_s_url_6 = _jspx_th_s_url_6.doStartTag();
    if (_jspx_th_s_url_6.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_s_url_action_nobody.reuse(_jspx_th_s_url_6);
      return true;
    }
    _jspx_tagPool_s_url_action_nobody.reuse(_jspx_th_s_url_6);
    return false;
  }

  private boolean _jspx_meth_s_url_7(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  s:url
    org.apache.struts2.views.jsp.URLTag _jspx_th_s_url_7 = (org.apache.struts2.views.jsp.URLTag) _jspx_tagPool_s_url_action_nobody.get(org.apache.struts2.views.jsp.URLTag.class);
    _jspx_th_s_url_7.setPageContext(_jspx_page_context);
    _jspx_th_s_url_7.setParent(null);
    _jspx_th_s_url_7.setAction("general/login");
    int _jspx_eval_s_url_7 = _jspx_th_s_url_7.doStartTag();
    if (_jspx_th_s_url_7.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_s_url_action_nobody.reuse(_jspx_th_s_url_7);
      return true;
    }
    _jspx_tagPool_s_url_action_nobody.reuse(_jspx_th_s_url_7);
    return false;
  }
}
