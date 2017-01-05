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
            .loadingImg {
                width: 100%;
                height: 100%;
                top: 0px;
                left: 0px;
                position: fixed;
                display: block;
                opacity: 0.7;
                background-color: #9999C2;
                z-index: 99;
                text-align: center;
            }

            #LoadingContent {
                position: absolute;
                top: 50%;
                left: 50%;
                z-index: 100;
            }
            #LoadingContent > img{
                width:150px;
            }
        </style>
    </head>
    <body onload="setStyle('Envelopes','oldEnvelopes');">
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
                            <%
                                if (session.getAttribute(AppConstants.REQ_RESULT_MSG) != null) {
                                    String reqponseString = session.getAttribute(AppConstants.REQ_RESULT_MSG).toString();
                                    //request.getSession(false).removeAttribute("responseString");
                                    out.println(reqponseString);
                                    session.setAttribute(AppConstants.REQ_RESULT_MSG, null);
                                    //System.out.println("reqponseString-------"+reqponseString);
                                    //TpOnboardingBean.po_date;
                                }
                            %>
                            <h3>Trading Partner</h3>     
                            <s:form action="" method="POST" enctype="multipart/form-data" name="addTpOnboard" id="addTpOnboard" theme="simple">
                                

                                <div id="transactionsDiv" > 
                                    <h3 style="color: blue">Transactions&nbsp;</h3>
                                    <table>                                     
                                        <tr>
                                            <td class="lableLeft">Inbound&nbsp;Trans</td>
                                            <td class="lableLeft">
                                                <s:checkbox name="ib850" id="ib850" fieldValue="true" label="850" tabindex="59"/>850&nbsp;
                                                <s:checkbox name="ib855" id="ib855" fieldValue="true" label="855" tabindex="60"/>855&nbsp; 
                                                <s:checkbox name="ib856" id ="ib856" fieldValue="true" label="856" tabindex="61"/>856&nbsp; 
                                                <s:checkbox name="ib810" id ="ib810" fieldValue="true" label="810" tabindex="62"/>810&nbsp;  
                                            </td>
                                            <td class="lableLeft">Outbound&nbsp;Trans</td>
                                            <td class="lableLeft">
                                                <s:checkbox name="ob850" id ="ob850" fieldValue="true" label="850" tabindex="63"/>850&nbsp;
                                                <s:checkbox name="ob855" id="ob855" fieldValue="true" label="855" tabindex="64"/>855&nbsp;
                                                <s:checkbox name="ob856" id="ob856" fieldValue="true" label="856" tabindex="65"/>856&nbsp;
                                                <s:checkbox name="ob810" id="ob810" fieldValue="true"  label="810" tabindex="66"/>810&nbsp;
                                            </td>      
                                        </tr>
                                    </table>
                                </div>
                                <%-- 850 Inbound   Start div--%>    
                                <div id="ibenvelop850" style="display: none" >
                                    <h2 style="color: blue">Envelopes&nbsp;:</h2>
                                    <h3 style="color: black">Transaction : &nbsp;&nbsp;<s:textfield type="text" style="border: 0;cursor:default" name="ibvalue850" id="ibvalue850" value="" readonly="true" /></h3>
                                    <h3 style="color: black">Direction &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;<s:textfield type="text" style="border: 0;cursor:default" name="ibdirection" id="ibdirection" value="" readonly="true" /></h3>
                                    <input type="hidden" name="IB850Transaction" id="IB850Transaction" value="%{IB850Transaction}"/>
                                    <div id="resultMessage"></div>
                                    <table>
                                        <tr class="tab_head">
                                            <td></td>
                                            <td class="alignright"><b>ISA</b></td>
                                            <td class="alignright"><b>GS</b></td>
                                            <td class="alignright"><b>ST</b></td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">SenderId </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="isa850senderIdIB" id="isa850senderIdIB" value="%{isa850senderIdIB}" tabindex="67" onchange="fieldLengthValidator850IB(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="gs850senderIdIB" id="gs850senderIdIB" value="%{gs850senderIdIB}" tabindex="68" onchange="fieldLengthValidator850IB(this);"  onkeyup="IBsender850();" />
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="st850senderIdIB" id="st850senderIdIB" value="%{st850senderIdIB}" tabindex="69" onchange="fieldLengthValidator850IB(this);" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">ReceiverID </td> 
                                            <td>
                                                <s:select list="{'12345','123456'}" name="isa850RecIdIB" id="isa850RecIdIB" value="%{isa850RecIdIB}" tabindex="70" cssStyle="width : 144px"/>
                                            </td>
                                            <td>
                                                <s:select list="{'12345','123456'}" name="gs850RecIdIB" id="gs850RecIdIB" value="%{gs850RecIdIB}" tabindex="71" cssStyle="width : 144px" onclick="IBrecId850();"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="st850RecIdIB" id="st850RecIdIB" value="%{st850RecIdIB}" tabindex="72"  />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Version </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="isa850VersionIB" id="isa850VersionIB" value="%{isa850VersionIB}" tabindex="73" onchange="fieldLengthValidator850IB(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="gs850VersionIB" id="gs850VersionIB" value="%{gs850VersionIB}" tabindex="74" onchange="fieldLengthValidator850IB(this);" onkeyup="IBversion850(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="st850VersionIB" id="st850VersionIB" value="%{st850VersionIB}" tabindex="75" onchange="fieldLengthValidator850IB(this);" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Functional ID Code:</td>
                                            <td></td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="fun850GroupIdIB" id="fun850GroupIdIB" value="%{fun850GroupIdIB}" tabindex="76" onchange="fieldLengthValidator850IB(this);"/>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Responsible Agency Code:</td>
                                            <td></td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="res850AgecodeIB" id="res850AgecodeIB" placeholder="x" value="%{res850AgecodeIB}" tabindex="77" onchange="fieldLengthValidator850IB(this);"/>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Generate An Acknowledgement</td>
                                            <td></td>                                  
                                            <td>
                                                <s:checkbox cssClass="inputStyle" name="gen850AckIB" id="gen850AckIB" tabindex="78" value="%{gen850AckIB}" />
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Transaction Set ID Code:</td>
                                            <td></td>
                                            <td></td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="trans850IdcodeIB" id="trans850IdcodeIB" value="%{trans850IdcodeIB}" tabindex="79" onchange="fieldLengthValidator850IB(this);"/>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <%-- 850 Inbound   End div--%>
                                <%-- 855 Inbound   Start div--%>
                                <div id="ibenvelop855" style="display: none">
                                    <h2 style="color: blue">Envelopes&nbsp;:</h2>
                                    <h3 style="color: black">Transaction : &nbsp;&nbsp;<s:textfield type="text" style="border: 0;" name="ibvalue855" id="ibvalue855" value="" readonly="true" /></h3>
                                    <h3 style="color: black">Direction &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;<s:textfield type="text" style="border: 0;" name="ibdirection855" id="ibdirection855" value="" readonly="true" /></h3>
                                    <input type="hidden" name="IB855Transaction" id="IB855Transaction" value="%{IB855Transaction}"/>
                                    <div id="resultMessage855ib"></div>
                                    <table>
                                        <tr class="tab_head">
                                            <td></td>
                                            <td class="alignright"><b>ISA</b></td>
                                            <td class="alignright"><b>GS</b></td>
                                            <td class="alignright"><b>ST</b></td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">SenderId </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="isa855senderIdIB" id="isa855senderIdIB" value="%{isa855senderIdIB}" tabindex="80" onchange="fieldLengthValidator855IB(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="gs855senderIdIB" id="gs855senderIdIB" value="%{gs855senderIdIB}" tabindex="81" onchange="fieldLengthValidator855IB(this);" onkeyup="IBsender855(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="st855senderIdIB" id="st855senderIdIB" value="%{st855senderIdIB}" tabindex="82" onchange="fieldLengthValidator855IB(this);"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">ReceiverID </td>
                                            <td>
                                                <s:select list="{'12345','123456'}" name="isa855RecIdIB" id="isa855RecIdIB" value="%{isa855RecIdIB}" tabindex="83" cssStyle="width : 144px"/>
                                            </td>
                                            <td>
                                                <s:select list="{'12345','123456'}" name="gs855RecIdIB" id="gs855RecIdIB" value="%{gs855RecIdIB}" tabindex="84" cssStyle="width : 144px" onclick="IBrecId855(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="st855RecIdIB" id="st855RecIdIB" value="%{st855RecIdIB}" tabindex="85" />

                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Version </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="isa855VersionIB" id="isa855VersionIB" value="%{isa855VersionIB}" tabindex="86" onchange="fieldLengthValidator855IB(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="gs855VersionIB" id="gs855VersionIB" value="%{gs855VersionIB}" tabindex="87" onchange="fieldLengthValidator855IB(this);" onkeyup="IBversion855(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="st855VersionIB" id="st855VersionIB" value="%{st855VersionIB}" tabindex="88" onchange="fieldLengthValidator855IB(this);" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Functional ID Code:</td>
                                            <td></td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="fun855GroupIdIB" id="fun855GroupIdIB" value="%{fun855GroupIdIB}" tabindex="89" onchange="fieldLengthValidator855IB(this);"/>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Responsible Agency Code:</td>
                                            <td></td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="res855AgecodeIB" id="res855AgecodeIB" placeholder="X" value="%{res855AgecodeIB}" tabindex="90" onchange="fieldLengthValidator855IB(this);"/>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Generate An Acknowledgement</td>
                                            <td></td>                                  
                                            <td>
                                                <s:checkbox cssClass="inputStyle" name="gen855AckIB" id="gen855AckIB" tabindex="91" value="%{gen855AckIB}" onchange="" />
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Transaction Set ID Code:</td>
                                            <td></td>
                                            <td></td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="trans855IdcodeIB" id="trans855IdcodeIB" value="%{trans855IdcodeIB}" tabindex="92" onchange="fieldLengthValidator855IB(this);"/>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <%-- 855 Inbound   End div--%>

                                <%-- 856 Inbound   Start div--%>
                                <div id="ibenvelop856" style="display: none">
                                    <h2 style="color: blue">Envelopes&nbsp;:</h2>
                                    <h3 style="color: black">Transaction : &nbsp;&nbsp;<s:textfield type="text" style="border: 0;" name="ibvalue856" id="ibvalue856" value="" readonly="true" /></h3>
                                    <h3 style="color: black">Direction &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;<s:textfield type="text" style="border: 0;" name="ibdirection856" id="ibdirection856" value="" readonly="true" /></h3>
                                    <input type="hidden" name="IB856Transaction" id="IB856Transaction" value="%{IB856Transaction}"/>
                                    <div id="resultMessage856ib"></div>
                                    <table>
                                        <tr class="tab_head">
                                            <td></td>
                                            <td class="alignright"><b>ISA</b></td>
                                            <td class="alignright"><b>GS</b></td>
                                            <td class="alignright"><b>ST</b></td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">SenderId </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="isa856senderIdIB" id="isa856senderIdIB" value="%{isa856senderIdIB}" tabindex="93" onchange="fieldLengthValidator856IB(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="gs856senderIdIB" id="gs856senderIdIB" value="%{gs856senderIdIB}" tabindex="94" onchange="fieldLengthValidator856IB(this);" onkeyup="IBsender856(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="st856senderIdIB" id="st856senderIdIB" value="%{st856senderIdIB}" tabindex="95" onchange="fieldLengthValidator856IB(this);" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">ReceiverID </td>
                                            <td>
                                                <s:select list="{'12345','123456'}" name="isa856RecIdIB" id="isa856RecIdIB" value="%{isa856RecIdIB}" tabindex="96" cssStyle="width : 144px"/>
                                            </td>
                                            <td>
                                                <s:select list="{'12345','123456'}" name="gs856RecIdIB" id="gs856RecIdIB" value="%{gs856RecIdIB}" tabindex="97" cssStyle="width : 144px" onclick="IBrecId856(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="st856RecIdIB" id="st856RecIdIB" value="%{st856RecIdIB}" tabindex="98" />

                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Version </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="isa856VersionIB" id="isa856VersionIB" value="%{isa856VersionIB}" tabindex="99" onchange="fieldLengthValidator856IB(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="gs856VersionIB" id="gs856VersionIB" value="%{gs856VersionIB}" tabindex="100" onchange="fieldLengthValidator856IB(this);" onkeyup="IBversion856(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="st856VersionIB" id="st856VersionIB" value="%{st856VersionIB}" tabindex="101" onchange="fieldLengthValidator856IB(this);" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Functional ID Code:</td>
                                            <td></td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="fun856GroupIdIB" id="fun856GroupIdIB" value="%{fun856GroupIdIB}" tabindex="102" onchange="fieldLengthValidator856IB(this);"/>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Responsible Agency Code:</td>
                                            <td></td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="res856AgecodeIB" id="res856AgecodeIB" placeholder="X" value="%{res856AgecodeIB}" tabindex="103" onchange="fieldLengthValidator856IB(this);"/>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Generate An Acknowledgement</td>
                                            <td></td>                                  
                                            <td>
                                                <s:checkbox cssClass="inputStyle" name="gen856AckIB" id="gen856AckIB" tabindex="104" value="%{gen856AckIB}" onchange=""/>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Transaction Set ID Code:</td>
                                            <td></td>
                                            <td></td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="trans856IdcodeIB" id="trans856IdcodeIB" value="%{trans856IdcodeIB}" tabindex="105" onchange="fieldLengthValidator856IB(this);" />
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <%-- 856 Inbound   End div--%>
                                <%-- 810 Inbound   Start div--%>
                                <div id="ibenvelop810" style="display: none">
                                    <h2 style="color: blue">Envelopes&nbsp;:</h2>
                                    <h3 style="color: black">Transaction : &nbsp;&nbsp;<s:textfield type="text" style="border: 0;" name="ibvalue810" id="ibvalue810" value="" readonly="true" /></h3>
                                    <h3 style="color: black">Direction &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;<s:textfield type="text" style="border: 0;" name="ibdirection810" id="ibdirection810" value="" readonly="true" /></h3>
                                    <input type="hidden" name="IB810Transaction" id="IB810Transaction" value="%{IB810Transaction}"/>
                                    <div id="resultMessage810ib"></div>
                                    <table>
                                        <tr class="tab_head">
                                            <td></td>
                                            <td class="alignright"><b>ISA</b></td>
                                            <td class="alignright"><b>GS</b></td>
                                            <td class="alignright"><b>ST</b></td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">SenderId </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="isa810senderIdIB" id="isa810senderIdIB" value="%{isa810senderIdIB}" tabindex="106" onchange="fieldLengthValidator810IB(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="gs810senderIdIB" id="gs810senderIdIB" value="%{gs810senderIdIB}" tabindex="107" onchange="fieldLengthValidator810IB(this);" onkeyup="IBsender810(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="st810senderIdIB" id="st810senderIdIB" value="%{st810senderIdIB}" tabindex="108" onchange="fieldLengthValidator810IB(this);" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">ReceiverID </td>
                                            <td>
                                                <s:select list="{'12345','123456'}" name="isa810RecIdIB" id="isa810RecIdIB" value="%{isa810RecIdIB}" tabindex="109" cssStyle="width : 144px"/>
                                            </td>
                                            <td>
                                                <s:select list="{'12345','123456'}" name="gs810RecIdIB" id="gs810RecIdIB" value="%{gs810RecIdIB}" tabindex="110" cssStyle="width : 144px" onclick="IBrecId810(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="st810RecIdIB" id="st810RecIdIB" value="%{st810RecIdIB}" tabindex="111"  />

                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Version </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="isa810VersionIB" id="isa810VersionIB" value="%{isa810VersionIB}" tabindex="112" onchange="fieldLengthValidator810IB(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="gs810VersionIB" id="gs810VersionIB" value="%{gs810VersionIB}" tabindex="113" onchange="fieldLengthValidator810IB(this);" onkeyup="IBversion810(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="st810VersionIB" id="st810VersionIB" value="%{st810VersionIB}" tabindex="114" onchange="fieldLengthValidator810IB(this);" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Functional ID Code:</td>
                                            <td></td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="fun810GroupIdIB" id="fun810GroupIdIB" value="%{fun810GroupIdIB}" tabindex="115" onchange="fieldLengthValidator810IB(this);"/>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Responsible Agency Code:</td>
                                            <td></td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="res810AgecodeIB" id="res810AgecodeIB" placeholder="X" value="%{res810AgecodeIB}" tabindex="116" onchange="fieldLengthValidator810IB(this);"/>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Generate An Acknowledgement</td>
                                            <td></td>                                  
                                            <td>
                                                <s:checkbox cssClass="inputStyle" name="gen810AckIB" id="gen810AckIB" tabindex="117" value="%{gen810AckIB}" onchange="()"/>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Transaction Set ID Code:</td>
                                            <td></td>
                                            <td></td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="trans810IdcodeIB" id="trans810IdcodeIB" value="%{trans810IdcodeIB}" tabindex="118" onchange="fieldLengthValidator810IB(this);"/>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <%-- 810 Inbound   End div--%>
                                <%-- 850 outbound   End div--%>
                                <div id="obenvelop850" style="display: none">
                                    <h2 style="color: blue">Envelopes&nbsp;:</h2>
                                    <h3 style="color: black">Transaction : &nbsp;&nbsp;<s:textfield type="text" style="border: 0;" name="obvalue850" id="obvalue850" value="" readonly="true" /></h3>
                                    <h3 style="color: black">Direction &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;<s:textfield type="text" style="border: 0;" name="obdirection" id="obdirection" value="" readonly="true" /></h3>
                                    <input type="hidden" name="OB850Transaction" id="OB850Transaction" value="%{OB850Transaction}"/>
                                    <div id="resultMessage850ob"></div>
                                    <table>
                                        <tr class="tab_head">
                                            <td></td>
                                            <td class="alignright"><b>ISA</b></td>
                                            <td class="alignright"><b>GS</b></td>
                                            <td class="alignright"><b>ST</b></td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">SenderId </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="isa850senderIdOB" id="isa850senderIdOB" value="%{isa850senderIdOB}" tabindex="119" onchange="fieldLengthValidator850OB(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="gs850senderIdOB" id="gs850senderIdOB" value="%{gs850senderIdOB}" tabindex="120" onchange="fieldLengthValidator850OB(this);" onkeyup="OBsender850(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="st850senderIdOB" id="st850senderIdOB" value="%{st850senderIdOB}" tabindex="121" onchange="fieldLengthValidator850OB(this);" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">ReceiverID </td>
                                            <td>
                                                <s:select list="{'12345','123456'}" name="isa850RecIdOB" id="isa850RecIdOB" value="%{isa850RecIdOB}" tabindex="122" cssStyle="width : 144px"/>
                                            </td>
                                            <td>
                                                <s:select list="{'12345','123456'}" name="gs850RecIdOB" id="gs850RecIdOB" value="%{gs850RecIdOB}" tabindex="123" cssStyle="width : 144px" onclick="OB850recId(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="st850RecIdOB" id="st850RecIdOB" value="%{st850RecIdOB}" tabindex="124" /> 
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Version </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="isa850VersionOB" id="isa850VersionOB" value="%{isa850VersionOB}" tabindex="125" onchange="fieldLengthValidator850OB(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="gs850VersionOB" id="gs850VersionOB" value="%{gs850VersionOB}" tabindex="126" onchange="fieldLengthValidator850OB(this);" onkeyup="OBversion850(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="st850VersionOB" id="st850VersionOB" value="%{st850VersionOB}" tabindex="127" onchange="fieldLengthValidator850OB(this);" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Functional ID Code:</td>
                                            <td></td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="fun850GroupIdOB" id="fun850GroupIdOB" value="%{fun850GroupIdOB}" tabindex="128" onchange="fieldLengthValidator850OB(this);"/>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Responsible Agency Code:</td>
                                            <td></td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="res850AgecodeOB" id="res850AgecodeOB" placeholder="X" value="%{res850AgecodeOB}" tabindex="129" onchange="fieldLengthValidator850OB(this);"/>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Generate An Acknowledgement</td>
                                            <td></td>                                  
                                            <td>
                                                <s:checkbox cssClass="inputStyle" name="gen850AckOB" id="gen850AckOB" tabindex="130" value="%{gen850AckOB}" onchange=""/>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Transaction Set ID Code:</td>
                                            <td></td>
                                            <td></td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="trans850IdcodeOB" id="trans850IdcodeOB" value="%{trans850IdcodeOB}" tabindex="131" onchange="fieldLengthValidator850OB(this);"/>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <%-- 850 Outbound   End div--%>
                                <%-- 855 Outbound   Start div--%>
                                <div id="obenvelop855" style="display: none">
                                    <h2 style="color: blue">Envelops&nbsp;:</h2>
                                    <h3 style="color: black">Transaction : &nbsp;&nbsp;<s:textfield type="text" style="border: 0;" name="obvalue855" id="obvalue855" value="" readonly="true" /></h3>
                                    <h3 style="color: black">Direction &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;<s:textfield type="text" style="border: 0;" name="obdirection855" id="obdirection855" value="" readonly="true" /></h3>
                                    <input type="hidden" name="OB855Transaction" id="OB855Transaction" value="%{OB855Transaction}"/>
                                    <div id="resultMessage855ob"></div>
                                    <table>
                                        <tr class="tab_head">
                                            <td></td>
                                            <td class="alignright"><b>ISA</b></td>
                                            <td class="alignright"><b>GS</b></td>
                                            <td class="alignright"><b>ST</b></td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">SenderId </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="isa855senderIdOB" id="isa855senderIdOB" value="%{isa855senderIdOB}" tabindex="132" onchange="fieldLengthValidator855OB(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="gs855senderIdOB" id="gs855senderIdOB" value="%{gs855senderIdOB}" tabindex="133" onchange="fieldLengthValidator855OB(this);" onkeyup="OBsender855(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="st855senderIdOB" id="st855senderIdOB" value="%{st855senderIdOB}" tabindex="134" onchange="fieldLengthValidator855OB(this);" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">ReceiverID </td>
                                            <td>
                                                <s:select list="{'12345','123456'}" name="isa855RecIdOB" id="isa855RecIdOB" value="%{isa855RecIdOB}" tabindex="135" cssStyle="width : 144px"/>
                                            </td>
                                            <td>
                                                <s:select list="{'12345','123456'}" name="gs855RecIdOB" id="gs855RecIdOB" value="%{gs855RecIdOB}" tabindex="136" cssStyle="width : 144px" onclick="OB855recId(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="st855RecIdOB" id="st855RecIdOB" value="%{st855RecIdOB}" tabindex="137" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Version </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="isa855VersionOB" id="isa855VersionOB" value="%{isa855VersionOB}" tabindex="138" onchange="fieldLengthValidator855OB(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="gs855VersionOB" id="gs855VersionOB" value="%{gs855VersionOB}" tabindex="139" onchange="fieldLengthValidator855OB(this);" onkeyup="OBversion855(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="st855VersionOB" id="st855VersionOB" value="%{st855VersionOB}" tabindex="140" onchange="fieldLengthValidator855OB(this);" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Functional ID Code:</td>
                                            <td></td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="fun855GroupIdOB" id="fun855GroupIdOB" value="%{fun855GroupIdOB}" tabindex="141" onchange="fieldLengthValidator855OB(this);"/>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Responsible Agency Code:</td>
                                            <td></td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="res855AgecodeOB" id="res855AgecodeOB" placeholder="X" value="%{res855AgecodeOB}" tabindex="142" onchange="fieldLengthValidator855OB(this);"/>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Generate An Acknowledgement</td>
                                            <td></td>                                  
                                            <td>
                                                <s:checkbox cssClass="inputStyle" name="gen855AckOB" id="gen855AckOB" tabindex="143" value="%{gen855AckOB}" onchange=""/>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Transaction Set ID Code:</td>
                                            <td></td>
                                            <td></td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="trans855IdcodeOB" id="trans855IdcodeOB" value="%{trans855IdcodeOB}" tabindex="144" onchange="fieldLengthValidator855OB(this);"/>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <%-- 855 Outbound   End div--%>
                                <%-- 856 Outbound   Start div--%>
                                <div id="obenvelop856" style="display: none">
                                    <h2 style="color: blue">Envelopes&nbsp;:</h2>
                                    <h3 style="color: black">Transaction : &nbsp;&nbsp;<s:textfield type="text" style="border: 0;" name="obvalue856" id="obvalue856" value="" readonly="true" /></h3>
                                    <h3 style="color: black">Direction &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;<s:textfield type="text" style="border: 0;" name="obdirection856" id="obdirection856" value="" readonly="true" /></h3>
                                    <input type="hidden" name="OB856Transaction" id="OB856Transaction" value="%{OB856Transaction}"/>
                                    <div id="resultMessage856ob"></div>
                                    <table>
                                        <tr class="tab_head">
                                            <td></td>
                                            <td class="alignright"><b>ISA</b></td>
                                            <td class="alignright"><b>GS</b></td>
                                            <td class="alignright"><b>ST</b></td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">SenderId </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="isa856senderIdOB" id="isa856senderIdOB" value="%{isa856senderIdOB}" tabindex="143" onchange="fieldLengthValidator856OB(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="gs856senderIdOB" id="gs856senderIdOB" value="%{gs856senderIdOB}" tabindex="146" onchange="fieldLengthValidator856OB(this);" onkeyup="OBsender856(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="st856senderIdOB" id="st856senderIdOB" value="%{st856senderIdOB}" tabindex="147" onchange="fieldLengthValidator856OB(this);" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">ReceiverID </td>
                                            <td>
                                                <s:select list="{'12345','123456'}" name="isa856RecIdOB" id="isa856RecIdOB" value="%{isa856RecIdOB}" tabindex="148" cssStyle="width : 144px"/>
                                            </td>
                                            <td>
                                                <s:select list="{'12345','123456'}" name="gs856RecIdOB" id="gs856RecIdOB" value="%{gs856RecIdOB}" tabindex="149" cssStyle="width : 144px" onclick="OB856recId(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="st856RecIdOB" id="st856RecIdOB" value="%{st856RecIdOB}" tabindex="150" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Version </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="isa856VersionOB" id="isa856VersionOB" value="%{isa856VersionOB}" tabindex="151" onchange="fieldLengthValidator856OB(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="gs856VersionOB" id="gs856VersionOB" value="%{gs856VersionOB}" tabindex="152" onchange="fieldLengthValidator856OB(this);" onkeyup="OBversion856(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="st856VersionOB" id="st856VersionOB" value="%{st856VersionOB}" tabindex="153" onchange="fieldLengthValidator856OB(this);" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Functional ID Code:</td>
                                            <td></td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="fun856GroupIdOB" id="fun856GroupIdOB" value="%{fun856GroupIdOB}" tabindex="154" onchange="fieldLengthValidator856OB(this);"/>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Responsible Agency Code:</td>
                                            <td></td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="res856AgecodeOB" id="res856AgecodeOB" placeholder="X" value="%{res856AgecodeOB}" tabindex="155" onchange="fieldLengthValidator856OB(this);"/>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Generate An Acknowledgement</td>
                                            <td></td>                                  
                                            <td>
                                                <s:checkbox cssClass="inputStyle" name="gen856AckOB" id="gen856AckOB" tabindex="156" value="%{gen856AckOB}" onchange=""/>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Transaction Set ID Code:</td>
                                            <td></td>
                                            <td></td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="trans856IdcodeOB" id="trans856IdcodeOB" value="%{trans856IdcodeOB}" tabindex="157" onchange="fieldLengthValidator856OB(this);"/>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <%-- 856 Outbound   End div--%>
                                <%-- 810 Outbound   Start div--%>
                                <div id="obenvelop810" style="display: none">
                                    <h2 style="color: blue">Envelopes&nbsp;:</h2>
                                    <h3 style="color: black">Transaction : &nbsp;&nbsp;<s:textfield type="text" style="border: 0;" name="obvalue810" id="obvalue810" value="" readonly="true" /></h3>
                                    <h3 style="color: black">Direction &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;<s:textfield type="text" style="border: 0;" name="obdirection810" id="obdirection810" value="" readonly="true" /></h3>
                                    <input type="hidden" name="OB810Transaction" id="OB810Transaction" value="%{OB810Transaction}"/>
                                    <div id="resultMessage810ob"></div>
                                    <table>
                                        <tr class="tab_head">
                                            <td></td>
                                            <td class="alignright"><b>ISA</b></td>
                                            <td class="alignright"><b>GS</b></td>
                                            <td class="alignright"><b>ST</b></td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">SenderId </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="isa810senderIdOB" id="isa810senderIdOB" value="%{isa810senderIdOB}" tabindex="158" onchange="fieldLengthValidator810OB(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="gs810senderIdOB" id="gs810senderIdOB" value="%{gs810senderIdOB}" tabindex="159" onchange="fieldLengthValidator810OB(this);" onkeyup="OBsender810(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="st810senderIdOB" id="st810senderIdOB" value="%{st810senderIdOB}" tabindex="160" onchange="fieldLengthValidator810OB(this);" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">ReceiverID </td>
                                            <td>
                                                <s:select list="{'12345','123456'}" name="isa810RecIdOB" id="isa810RecIdOB" value="%{isa810RecIdOB}" tabindex="161" cssStyle="width : 144px"/>
                                            </td>
                                            <td>
                                                <s:select list="{'12345','123456'}" name="gs810RecIdOB" id="gs810RecIdOB" value="%{gs810RecIdOB}" tabindex="162" cssStyle="width : 144px" onclick="OB810recId(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="st810RecIdOB" id="st810RecIdOB" value="%{st810RecIdOB}" tabindex="163"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Version </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="isa810VersionOB" id="isa810VersionOB" value="%{isa810VersionOB}" tabindex="164" onchange="fieldLengthValidator810OB(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="gs810VersionOB" id="gs810VersionOB" value="%{gs810VersionOB}" tabindex="165" onchange="fieldLengthValidator810OB(this);" onkeyup="OBversion810(this);"/>
                                            </td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="st810VersionOB" id="st810VersionOB" value="%{st810VersionOB}" tabindex="166" onchange="fieldLengthValidator810OB(this);" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Functional ID Code:</td>
                                            <td></td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="fun810GroupIdOB" id="fun810GroupIdOB" value="%{fun810GroupIdOB}" tabindex="167" onchange="fieldLengthValidator810OB(this);"/>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Responsible Agency Code:</td>
                                            <td></td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="res810AgecodeOB" id="res810AgecodeOB" placeholder="X" value="%{res810AgecodeOB}" tabindex="168" onchange="fieldLengthValidator810OB(this);"/>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Generate An Acknowledgement</td>
                                            <td></td>                                  
                                            <td>
                                                <s:checkbox cssClass="inputStyle" name="gen810AckOB" id="gen810AckOB" tabindex="169" value="%{gen810AckOB}" onchange=""/>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td class="lableLeft">Transaction Set ID Code:</td>
                                            <td></td>
                                            <td></td>
                                            <td>
                                                <s:textfield cssClass="inputStyle" name="trans810IdcodeOB" id="trans810IdcodeOB" value="%{trans810IdcodeOB}" tabindex="170" onchange="fieldLengthValidator810OB(this);"/>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <%-- 810 Outbound   End div--%>
                                <div>

                                    <s:submit   value="Save" cssClass="button" tabindex="171" onclick="return check()"/>
                                    <s:reset   value="Reset" cssClass="button" tabindex="172"/>
                                </div>
                            </s:form>
                        </div>
                    </div>
                </div>
            </div> 
        </div>        
    </div>  
    <footer> 
        <p><font color="white">&#169 2016 Miracle Software Systems, Inc. All rights reserved</font></p>
    </footer>
     <script type="text/javascript"> 
        $(function () {
            /*  Inbound function start*/
            $("#ib850").click(function () {
               // var transferMode = document.forms["addTpOnboard"]["transferMode"].value;
               // var protocol=document.getElementById("commnProtocol").value;
               // if((transferMode == 'get') || (transferMode == 'put') || (protocol == 'AS2') || (protocol == 'SMTP')){
                    
                    if ($(this).is(":checked")) {
                        document.getElementById('ibvalue850').value='850';
                        document.getElementById('ibdirection').value='Inbound';
                        document.getElementById('trans850IdcodeIB').value='850';
                        document.getElementById('trans850IdcodeIB').readOnly = true;
                        $("#ibenvelop850").show();
                    } else {
                        $("#ibenvelop850").hide();
                    }
             //   }else{
                   // document.getElementById("transferModeMsg").style.display = "block";
                  //  document.getElementById('transferModeMsg').innerHTML = "<font color=red>Please select Transfer Mode.</font>";
             //   }
            });
            $("#ib855").click(function () {
               // var transferMode = document.forms["addTpOnboard"]["transferMode"].value;
              //  var protocol=document.getElementById("commnProtocol").value;
              //  if((transferMode == 'get') || (transferMode == 'put') || (protocol == 'AS2') || (protocol == 'SMTP')){
                    if ($(this).is(":checked")) {
                        document.getElementById('ibvalue855').value='855';
                        document.getElementById('ibdirection855').value='Inbound';
                        document.getElementById('trans855IdcodeIB').value='855';
                        document.getElementById('trans855IdcodeIB').readOnly = true;
                        $("#ibenvelop855").show();
                    } else {
                        $("#ibenvelop855").hide();
                    }
              //  }else{
                 //   document.getElementById("transferModeMsg").style.display = "block";
                 //   document.getElementById('transferModeMsg').innerHTML = "<font color=red>Please select Transfer Mode.</font>";
              //  }
            });
            $("#ib856").click(function () {
              //  var transferMode = document.forms["addTpOnboard"]["transferMode"].value;
              //  var protocol=document.getElementById("commnProtocol").value;
              //  if((transferMode == 'get') || (transferMode == 'put') || (protocol == 'AS2') || (protocol == 'SMTP')){
                    if ($(this).is(":checked")) {
                        document.getElementById('ibvalue856').value='856';
                        document.getElementById('ibdirection856').value='Inbound';
                        document.getElementById('trans856IdcodeIB').value='856';
                        document.getElementById('trans856IdcodeIB').readOnly = true;
                        $("#ibenvelop856").show();
                    } else {
                        $("#ibenvelop856").hide();
                    }
                  //  }else{
                  //  document.getElementById("transferModeMsg").style.display = "block";
                   // document.getElementById('transferModeMsg').innerHTML = "<font color=red>Please select Transfer Mode.</font>";
             //   }
                
            });
            $("#ib810").click(function () {
               // var transferMode = document.forms["addTpOnboard"]["transferMode"].value;
               // var protocol=document.getElementById("commnProtocol").value;
               // if((transferMode == 'get') || (transferMode == 'put') || (protocol == 'AS2') || (protocol == 'SMTP')){
                    if ($(this).is(":checked")) {
                        document.getElementById('ibvalue810').value='810';
                        document.getElementById('ibdirection810').value='Inbound';
                        document.getElementById('trans810IdcodeIB').value='810';
                        document.getElementById('trans810IdcodeIB').readOnly = true;
                        $("#ibenvelop810").show();
                    } else {
                        $("#ibenvelop810").hide();
                    }
               // }else{
                  //  document.getElementById("transferModeMsg").style.display = "block";
                 //   document.getElementById('transferModeMsg').innerHTML = "<font color=red>Please select Transfer Mode.</font>";
               // }
            });
            /*  Outbound function Start*/
            $("#ob850").click(function () {
             //   var transferMode = document.forms["addTpOnboard"]["transferMode"].value;
             //   var protocol=document.getElementById("commnProtocol").value;
             //   if((transferMode == 'get') || (transferMode == 'put') || (protocol == 'AS2') || (protocol == 'SMTP')){
                    if ($(this).is(":checked")) {
                        document.getElementById('obvalue850').value='850';
                        document.getElementById('trans850IdcodeOB').value='850';
                        document.getElementById('trans850IdcodeOB').readOnly = true;
                        document.getElementById('obdirection').value='Outbound';
                        $("#obenvelop850").show();
                    } else {
                        $("#obenvelop850").hide();
                    }
               // }else{
                  //  document.getElementById("transferModeMsg").style.display = "block";
                  //  document.getElementById('transferModeMsg').innerHTML = "<font color=red>Please select Transfer Mode.</font>";
               // }
            });
            $("#ob855").click(function () {
              //  var transferMode = document.forms["addTpOnboard"]["transferMode"].value;
              //  var protocol=document.getElementById("commnProtocol").value;
               // if((transferMode == 'get') || (transferMode == 'put') || (protocol == 'AS2') || (protocol == 'SMTP')){
                    if ($(this).is(":checked")) {
                        document.getElementById('obvalue855').value='855';
                        document.getElementById('trans855IdcodeOB').value='855';
                        document.getElementById('trans855IdcodeOB').readOnly = true;
                        document.getElementById('obdirection855').value='Outbound';
                        $("#obenvelop855").show();
                    } else {
                        $("#obenvelop855").hide();
                    }
             //   }else{
               //     document.getElementById("transferModeMsg").style.display = "block";
               //     document.getElementById('transferModeMsg').innerHTML = "<font color=red>Please select Transfer Mode.</font>";
              //  }
            });
            $("#ob856").click(function () {
               // var transferMode = document.forms["addTpOnboard"]["transferMode"].value;
             //   var protocol=document.getElementById("commnProtocol").value;
               // if((transferMode == 'get') || (transferMode == 'put') || (protocol == 'AS2') || (protocol == 'SMTP')){
                    if ($(this).is(":checked")) {
                        document.getElementById('obvalue856').value='856';
                        document.getElementById('trans856IdcodeOB').value='856';
                        document.getElementById('trans856IdcodeOB').readOnly = true;
                        document.getElementById('obdirection856').value='Outbound';
                        $("#obenvelop856").show();
                    } else {
                        $("#obenvelop856").hide();
                    }
               // }else{
                 //   document.getElementById("transferModeMsg").style.display = "block";
                  //  document.getElementById('transferModeMsg').innerHTML = "<font color=red>Please select Transfer Mode.</font>";
               // }
            });
            $("#ob810").click(function () {
            //    var transferMode = document.forms["addTpOnboard"]["transferMode"].value;
             //   var protocol=document.getElementById("commnProtocol").value;
              //  if((transferMode == 'get') || (transferMode == 'put') || (protocol == 'AS2') || (protocol == 'SMTP')){
                    if ($(this).is(":checked")) {
                        document.getElementById('obvalue810').value='810';
                        document.getElementById('trans810IdcodeOB').value='810';
                        document.getElementById('trans810IdcodeOB').readOnly = true;
                        document.getElementById('obdirection810').value='Outbound';
                        $("#obenvelop810").show();
                    } else {
                        $("#obenvelop810").hide();
                    }
              //  }else{
                 //   document.getElementById("transferModeMsg").style.display = "block";
                    //document.getElementById('transferModeMsg').innerHTML = "<font color=red>Please select Transfer Mode.</font>";
              //  }
            });
            /*  Outbound function End*/
        });
        
        function check()
        {
            //alert('hiii');
            var ib850=document.getElementById("ib850").checked;
            var ib855=document.getElementById("ib855").checked;
            var ib856=document.getElementById("ib856").checked;
            var ib810=document.getElementById("ib810").checked;
            var ob850=document.getElementById("ob850").checked;
            var ob855=document.getElementById("ob855").checked;
            var ob856=document.getElementById("ob856").checked;
            var ob810=document.getElementById("ob810").checked;
            var x=true;
            if(ib850==true)
            {
                x=checkib850();
                if(x==false)
                    return false;
            }
            if(ib855==true)
            {
                x=checkib855();
                if(x==false)
                    return false;
            }
            if(ib856==true)
            {
                x=checkib856();
                if(x==false)
                    return false;
            }
            if(ib810==true)
            {
                x=checkib810();
                if(x==false)
                    return false;
            }
            if(ob850==true)
            {
                x=checkob850();
                if(x==false)
                    return false;
            }
            if(ob855==true)
            {
                x=checkob855();
                if(x==false)
                    return false;
            }
            if(ob856==true)
            {
                x=checkob856();
                if(x==false)
                    return false;
            }
            if(ob810==true)
            {
                x=checkob810();
                if(x==false)
                    return false;
            }
            return x;
        }
       
       
    </script>
</body>
</html>
