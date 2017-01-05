<%@page import="com.mss.ediscv.util.AppConstants"%>
<%-- 
    Document   : tpoRegistration
    Created on : 13 Oct, 2016, 1:31:03 PM
    Author     : raja
--%>
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
        <style>
             div#overlay {
            display: none;
            z-index: 2;
            background: #000;
            position: fixed;
            width: 100%;
            height: 100%;
            top: 0px;
            left: 0px;
            overflow: auto;
            text-align: center;
        }
        div#specialBox {
            display: none;
              top: 50px;
            left: 80px;
        position: absolute;
            z-index: 3;
            margin: 10px auto 0px auto;
            width: 1102px; 
            height: auto;
            background: #FFF;
            overflow: auto;
            overflow-y: auto;
            color: #000;
        }

        </style>
    </head>
    <body>
        <div id="wrapper">
            <div id="main">
                <header>
                    <div id="logo"><s:include value="/includes/template/tpohead.jsp"/></div>

                </header>
                <div id="site_content">
                    <div id="sidebar_container"></div>
                    <div class="content" >
                        <div class="content_item" id="searchdiv">
                            <%
                                if (session.getAttribute(AppConstants.REQ_RESULT_MSG) != null) {
                                    String reqponseString = session.getAttribute(AppConstants.REQ_RESULT_MSG).toString();
                                    //request.getSession(false).removeAttribute("responseString");
                                    out.println(reqponseString);
                                    session.setAttribute(AppConstants.REQ_RESULT_MSG, null);
                                    //System.out.println("reqponseString-------"+reqponseString);
                                }
                            %>
                            
                             <div id="overlay"></div>              <!-- Start Overlay -->
                                            
                                    <div id="specialBox" style="left:auto;width:540px;">
                                       
                                        <s:form action="" method="post" name="addpartner" id="addpartner" theme="simple">
                                             <table align="center" border="0" cellspacing="0" style="width:100%;" >
                                        <tbody>
                                                <tr>                               
                                                    <td colspan="4" style="background-color: #288AD1" >
                                                       
                                                   
                                                  <h2 style="color:darkblue;" align="left">
                                                                <span id="headerLabel"></span>
                                                            </h2>
                                                
                                                        <a style="float:right;" href="#" onmousedown="addPartner(0)" >
                                                            <img src="/<%=AppConstants.CONTEXT_PATH%>/includes/images/closeButton.png" /> 

                                                        </a>  

                                                    </td></tr>
                                      
                                            <tr>
                                                <td class="lableLeft">Partner Name <font color="red">*</font></td><td>
                                                    <s:textfield cssClass="inputStyle" readonly="true" name="partnerName" id="partnerName" tabindex="1" value="%{tpoPartnerName}" onchange="fieldLengthValidator(this);"/>
                                                </td>
                                                   <td class="lableLeft">Phone No<font color="red">*</font> </td><td>
                                                    <s:textfield cssClass="inputStyle" readonly="true" name="phoneNo" id="phoneNo" tabindex="4" value="%{tpoPhoneNo}" onchange="fieldLengthValidator(this);"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lableLeft">Address<font color="red">*</font> </td><td>
                                                    <s:textfield cssClass="inputStyle" name="address1" id="address1" tabindex="5" value="%{address1}" onchange="fieldLengthValidator(this);"/>
                                                </td><td class="lableLeft">City<font color="red">*</font> </td><td>
                                                    <s:textfield cssClass="inputStyle" name="city" id="city" tabindex="6" value="%{city}" onchange="fieldLengthValidator(this);"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lableLeft">State<font color="red">*</font> </td><td>
                                                    <s:textfield cssClass="inputStyle" name="state" id="state" tabindex="7" value="%{state}" onchange="fieldLengthValidator(this);"/>
                                                </td><td class="lableLeft">Country<font color="red">*</font> </td><td>
                                                    <s:select list="#@java.util.LinkedHashMap@{'US':'USA','IN':'India','CN':'Canada','UK':'United Kingdom'}" readonly="true" name="country" id="country" value="%{#session.tpoCountry}" tabindex="8" cssStyle="width : 143px" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lableLeft">Zip&nbsp;or&nbsp;Postal&nbsp;Code<font color="red">*</font> </td><td>
                                                    <s:textfield cssClass="inputStyle" name="zipCode" id="zipCode" tabindex="9" value="%{zipCode}" onchange="fieldLengthValidator(this);"/>
                                                </td></tr>
                                                                                 <tr>
                                                <td style="background-color: white;" colspan="2">
                                                    <s:submit value="Add" cssClass="button" tabindex="7"/></td>
                                                </tr>
                                        </tbody>
                                    </table>

                                                
                                        </s:form> 
                               
                                
                                         </div>


								
                            
                            <div id="loadingImage"></div>
                            <h3>Trading Partner</h3>     
                            <s:form action="tpoRegister" method="post" name="tporeg" id="tporeg" theme="simple">
                                <div>  <h3 style="color: blue">Trading Partner Information</h3>
                                    <div id="tpResultMessage"></div>
                                    <div id="tpRegisteValidation"></div>
                                    <table>
                                        <tbody>
                                            <tr>
                                                <td class="lableLeft">Partner Name <font color="red">*</font></td><td>
                                                    <s:select headerKey="-1" headerValue="Select Type" list="partnerNameList" name="regpartnerName" id="regpartnerName" value="%{regpartnerName}" tabindex="3" cssStyle="width : 150px"/>
                                                </td>
                                                <td><input type="button" value="Add" cssClass="button" onclick="addPartner();" tabindex="7"/></td>
                                                <td class="lableLeft">Contact Name <font color="red">*</font> </td><td>
                                                    <s:textfield cssClass="inputStyle" name="regcontactName" id="regcontactName" tabindex="2" value="%{regcontactName}" onchange="fieldLengthValidator(this);"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lableLeft">Email<font color="red">*</font> </td><td>
                                                    <s:textfield cssClass="inputStyle" name="regcontactEmail" id="regcontactEmail" tabindex="3" value="%{regcontactEmail}" onchange="validateEmail(this);fieldLengthValidator(this);" onblur="isExistedUserEmail();"/><img id="correctImg1" style="display: none;" src="/<%=AppConstants.CONTEXT_PATH%>/includes/images/right.png" 
                                                         width="15" height="15" border="0"><img id="wrongImg1" style="display: none;" src="/<%=AppConstants.CONTEXT_PATH%>/includes/images/wrong.jpg" width="15" height="15" border="0"><img id="loadingImageEmailCheck" style="display: none;" width="16" height="16" border="0" src="<s:url value="/includes/images/ajax-loader.gif"/>">
                                                </td>  <td class="lableLeft">Password<font color="red">*</font></td>
                                                <td>
                                                    <s:password cssClass="inputStyle" name="regpassword" id="regpassword" tabindex="4"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lableLeft">Country<font color="red">*</font> </td><td>
                                                    <s:select list="#@java.util.LinkedHashMap@{'US':'USA','IN':'India','CN':'Canada','UK':'United Kingdom'}" name="regcountry" id="regcountry" value="%{country}" tabindex="5" cssStyle="width : 145px" />
                                                </td><td class="lableLeft">Phone No<font color="red">*</font> </td><td>
                                                    <s:textfield cssClass="inputStyle" name="regphoneNo" id="regphoneNo" tabindex="6" value="%{regphoneNo}" onchange="fieldLengthValidator(this);"/>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td style="background-color: white;" colspan="2">
                                                    <s:submit value="Register" cssClass="button" tabindex="7"/>

                                                    <s:reset value="Reset" cssClass="button" tabindex="8"/>
                                                        <%--  <input type="button" Class="button" value="Reset" onClick="this.form.reset();"/>
                                                                <strong><input type="button" value="Reset" class="button" tabindex="8" onclick="return resetvalues();"/></strong>--%>
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