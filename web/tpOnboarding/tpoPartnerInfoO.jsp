<%@page import="com.mss.ediscv.tpOnboarding.TpOnboardingBean"%>
<!DOCTYPE html>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.mss.ediscv.util.AppConstants"%>
<html>
    <head>
        <title>Miracle TP On-boarding portal</title>
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
         <script language="JavaScript" src='<s:url value="/includes/js/common.js"/>'></script>
        <script language="JavaScript"
        src='<s:url value="/includes/js/tpOnbordingDeatails.js"/>'></script>
        <style>
            .fld_disable input{
                -webkit-user-select: none;  /* Chrome all / Safari all */
                -moz-user-select: none;     /* Firefox all */
                -ms-user-select: none;      /* IE 10+ */
                user-select: none;     
            }
            .tab_head td{
                background: transparent;   
                text-align: center;
            }
            .tab_head{
                background: #88e2f8;
            }
            .tooltip > i {
                color:#0174DF;
                font-size:16px;
            }
            .tooltip1 > i {
                color:#0174DF;
                font-size:16px;
            }
            .tooltip {
                position: relative;
                display: inline-block;
            }
            .tooltip .tooltiptext {
                visibility: hidden;
                width: 250px;
                background-color: black;
                color: #fff;
                text-align: center;
                border-radius: 6px;
                padding: 5px 0;
                top:23px;
                left:-32px;
                /* Position the tooltip */
                position: absolute;
                z-index: 1;
            }
            .tooltip:hover .tooltiptext {
                visibility: visible;
            }
           
        </style>
    </head>
   <body onload="setStyle('partnerInfo','');">
        <script type="text/javascript" src='<s:url value="/includes/js/wz_tooltip.js"/>'></script>
        <div id="wrapper">
            <div id="main">
                    <header>
                    <div id="logo"><s:include value="/includes/template/tpohead.jsp"/></div>

                    <nav>
                        <ul class="sf-menu" id="nav">

                            <s:include value="/includes/template/tpoMenu.jsp"/>
                        </ul> 
                    </nav>

                </header>
                <div id="site_content">
                    <div id="sidebar_container"></div>
                    <div class="content" >
                        <div class="content_item" id="searchdiv">
                    
                            <h3>Trading Partner</h3>     
                            <s:form action="" method="POST" enctype="multipart/form-data" name="addTpOnboard" id="addTpOnboard" theme="simple">
                                  <div>  <h3 style="color: blue">Trading Partner Information</h3>
                                    <div id="tpResultMessage"></div>
                                    <table>
                                        <tbody>
                                            <tr>
                                                <td class="lableLeft">Partner Name <font color="red">*</font></td><td>
                                                    <s:textfield cssClass="inputStyle" name="partnerName" id="partnerName" tabindex="1" value="%{tpOnboardingBean.partnerName}" onchange="fieldLengthValidator(this);" readOnly="true"/>
                                                </td><td class="lableLeft">Contact Name <font color="red">*</font> </td><td>
                                                    <s:textfield cssClass="inputStyle" name="contactName" id="contactName" tabindex="2" value="%{tpOnboardingBean.contactName}" onchange="fieldLengthValidator(this);"  readOnly="true"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lableLeft">Email<font color="red">*</font> </td><td>
                                                    <s:textfield cssClass="inputStyle" name="contactEmail" id="contactEmail" tabindex="3" value="%{tpOnboardingBean.contactEmail}" onchange="validateEmail(this);fieldLengthValidator(this);"  readOnly="true"/>
                                                </td><td class="lableLeft">Phone No<font color="red">*</font> </td><td>
                                                    <s:textfield cssClass="inputStyle" name="phoneNo" id="phoneNo" tabindex="4" value="%{tpOnboardingBean.phoneNo}" onchange="fieldLengthValidator(this);"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lableLeft">Address<font color="red">*</font> </td><td>
                                                    <s:textfield cssClass="inputStyle" name="address1" id="address1" tabindex="5" value="%{tpOnboardingBean.address1}" onchange="fieldLengthValidator(this);"/>
                                                </td><td class="lableLeft">City<font color="red">*</font> </td><td>
                                                    <s:textfield cssClass="inputStyle" name="city" id="city" tabindex="6" value="%{tpOnboardingBean.city}" onchange="fieldLengthValidator(this);"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lableLeft">State<font color="red">*</font> </td><td>
                                                    <s:textfield cssClass="inputStyle" name="state" id="state" tabindex="7" value="%{tpOnboardingBean.state}" onchange="fieldLengthValidator(this);"/>
                                                </td><td class="lableLeft">Country<font color="red">*</font> </td><td>
                                                    <s:select list="#@java.util.LinkedHashMap@{'US':'USA','IN':'India','CN':'Canada','UK':'United Kingdom'}" name="country" id="country" value="%{tpOnboardingBean.country}" tabindex="8" cssStyle="width : 143px" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lableLeft">Zip&nbsp;or&nbsp;Postal&nbsp;Code<font color="red">*</font> </td><td>
                                                    <s:textfield cssClass="inputStyle" name="zipCode" id="zipCode" tabindex="9" value="%{tpOnboardingBean.zipCode}" onchange="fieldLengthValidator(this);"/>
                                                </td></tr>
                                        </tbody>
                                    </table>
                                </div>
                                

                                
                                <%-- 810 Outbound   End div--%>
                                <div>

                                    <s:submit value="Save" cssClass="button" tabindex="10" onclick="return check()"/>
                                    <s:reset   value="Reset" cssClass="button" tabindex="11"/>
                                </div>
                            </s:form>
                        </div>
                    </div>
                </div>
            </div> 
            <script type="text/javascript">
                var pager = new Pager('results', 10); 
                pager.init(); 
                pager.showPageNav('pager', 'pageNavPosition'); 
                pager.showPage(1);
            </script>
        </div>        
      
    <footer> 
        <p><font color="white">&#169 2016 Miracle Software Systems, Inc. All rights reserved</font></p>
    </footer>
                        <script type="text/javascript">
    function check()
        {
            //alert('hiii');
            var partnerName = document.getElementById("partnerName").value;
            var contactName = document.getElementById("contactName").value;
            var contactEmail = document.getElementById("contactEmail").value;
            var phoneNo = document.getElementById("phoneNo").value;
            var address1 = document.getElementById("address1").value;
            var city = document.getElementById("city").value;
            var state = document.getElementById("state").value;
            var country = document.getElementById("country").value;
            var zipCode = document.getElementById("zipCode").value;
            document.getElementById('tpResultMessage').innerHTML = "";
           // var commnProtocol =document.getElementById('commnProtocol').value;
            if(((partnerName==null)||(partnerName=="")) || ((contactName==null)||(contactName=="")) || ((contactEmail==null)||(contactEmail=="")) || ((phoneNo==null)||(phoneNo=="")) || ((address1==null)||(address1=="")) || ((city==null)||(city=="")) || ((state==null)||(state=="")) || ((country==null)||(country=="")) || ((zipCode==null)||(zipCode=="")) || ((commnProtocol=="-1"))){
                document.getElementById('tpResultMessage').innerHTML = "<font color=red>Please Enter all amndetory fields in partner details</font>";
                return false;
            }
         
        }
                            </script>
</body>
</html>
