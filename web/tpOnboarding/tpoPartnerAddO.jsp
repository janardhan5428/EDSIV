<%@page import="com.mss.ediscv.util.AppConstants"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Miracle TP Onboarding portal</title>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <meta http-equiv="pragma" content="no-cache" />
        <meta http-equiv="cache-control" content="no-cache" />
        <link rel="stylesheet" href='<s:url value="/includes/css/style.css"/>' type="text/css"/>
        <link rel="stylesheet" href='<s:url value="/includes/css/jquery-ui.css"/>' type="text/css"/>
        <link rel="stylesheet" href='<s:url value="/includes/css/dhtmlxcalendar.css"/>' type="text/css"/>
        <link rel="stylesheet" href='<s:url value="/includes/css/dhtmlxcalendar_omega.css"/>' type="text/css"/>
        <link rel="stylesheet" href='<s:url value="/includes/css/footerstyle.css"/>' type="text/css"/>
        <link rel="stylesheet" href='<s:url value="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css"/>' type="text/css"/>
        <script language="JavaScript" src='<s:url value="/includes/js/jquery-1.9.1.js"></s:url>'></script>
        <script language="JavaScript" src='<s:url value="/includes/js/jquery-ui.js"/>'></script>
        <script language="JavaScript" src='<s:url value="/includes/js/GridNavigation.js"/>'></script>
        <script language="JavaScript" src='<s:url value="/includes/js/generalValidations.js"/>'></script>
        <script language="JavaScript" src='<s:url value="/includes/js/GeneralAjax.js"/>'></script>
        <script language="JavaScript" src='<s:url value="/includes/js/modernizr-1.5.min.js"/>'></script>
        <script language="JavaScript" src='<s:url value="/includes/js/dhtmlxcalendar.js"/>'></script>
        <script language="JavaScript" src='<s:url value="/includes/js/dbgridDisplay.js"/>'></script>
        <script language="JavaScript" src='<s:url value="/includes/js/tpOnbordingDeatails.js"/>'></script>
        <script>
            function resetvalues()
            {
                $("#correctImg").hide();
                $("#wrongImg").hide();
                $("#correctImg1").hide();
                $("#wrongImg1").hide();
            }
        </script>
    </head>
    <body>
        <div id="wrapper">
            <div id="main">
                <header>
                    <div id="logo"><s:include value="/includes/template/tpohead.jsp"/></div>
                    <nav>
                        <ul class="sf-menu" id="nav">
                            <li class="current"><a href="<s:url action="tpoSuccess"/>">User Creation</a></li>
                            <li><a href="<s:url action="tpoPartnerAdd"/>">Add Partner</a></li>                          
                        </ul>
                    </nav>
                </header>
                <div id="site_content">
                    <div id="sidebar_container"></div>
                    <div class="content" >
                        <div class="content_item" id="searchdiv">
                            <%
                                if (session.getAttribute(AppConstants.REQ_RESULT_MSG) != null) {
                                    String reqponseString = session.getAttribute(AppConstants.REQ_RESULT_MSG).toString();
                                    out.println(reqponseString);
                                    session.setAttribute(AppConstants.REQ_RESULT_MSG, null);
                                }
                            %>
                            <div id="loadingImage"></div>
                            <h3>Trading Partner</h3>     
                            <s:form action="tpoRegister" method="post" name="tporeg" id="tporeg" theme="simple">
                                <div>  <h3 style="color: blue">Trading Partner Information</h3>
                                    <div id="tpResultMessage"></div>
                                    <table>
                                        <tbody>
                                            <tr>
                                                <td colspan="4" align="left" style="background-color: white">
                                                    <div id="addpartnerMsg"></div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lableLeft">Partner Name <font color="red">*</font></td><td>
                                                    <s:textfield cssClass="inputStyle" name="addpartnerName" id="addpartnerName" tabindex="1" value="%{addpartnerName}" onblur="isExistedPartnerName();"/>
                                                    <img id="correctImg" style="display: none;" src="/<%=AppConstants.CONTEXT_PATH%>/includes/images/right.png" width="13" height="13" border="0">
                                                    <img id="wrongImg" style="display: none;" src="/<%=AppConstants.CONTEXT_PATH%>/includes/images/wrong.jpg" width="13" height="13" border="0"><img id="loadingImageAjax" style="display: none;" width="16" height="16" border="0" src="<s:url value="/includes/images/ajax-loader.gif"/>">
                                                </td>
                                                <td class="lableLeft">Phone No<font color="red">*</font> </td><td>
                                                    <s:textfield cssClass="inputStyle"  name="addphoneNo" id="addphoneNo" tabindex="4" value="%{addphoneNo}" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lableLeft">Address<font color="red">*</font> </td><td>
                                                    <s:textfield cssClass="inputStyle" name="addaddress1" id="addaddress1" tabindex="5" value="%{addaddress1}" />
                                                </td><td class="lableLeft">City<font color="red">*</font> </td><td>
                                                    <s:textfield cssClass="inputStyle" name="addcity" id="addcity" tabindex="6" value="%{addcity}" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lableLeft">State<font color="red">*</font> </td><td>
                                                    <s:textfield cssClass="inputStyle" name="addstate" id="addstate" tabindex="7" value="%{addstate}" />
                                                </td><td class="lableLeft">Country<font color="red">*</font> </td><td>
                                                    <s:select list="#@java.util.LinkedHashMap@{'US':'USA','IN':'India','CN':'Canada','UK':'United Kingdom'}" name="addcountry" id="addcountry" value="%{addcountry}" tabindex="8" cssStyle="width : 143px" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lableLeft">Zip&nbsp;or&nbsp;Postal&nbsp;Code<font color="red">*</font> </td><td>
                                                    <s:textfield cssClass="inputStyle" name="addzipCode" id="addzipCode" tabindex="9" value="%{addzipCode}" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="background-color: white;">
                                                    <input type="button" Class="button" value="Reset" onClick="resetPartnerValues();"/>
                                                    <input type="button" Class="button" id="addbutton" value="Add" onclick="partnerAdding();"/> 
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </s:form>
                        </div>
                    </div>
                </div>
            </div> 
        </div>  

        <footer> 
            <p><font color="white">&#169 2016 Miracle Software Systems, Inc. All rights reserved</font></p>
        </footer>
    </body>
</html>