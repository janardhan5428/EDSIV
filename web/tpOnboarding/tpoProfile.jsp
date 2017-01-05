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
   <body onload="setStyle('profile','oldProfile');">
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
                                    //TpOnboardingBean.po_date;addTpOnboard
                                }
                            %>
                            <h3>Trading Partner</h3>     
                            <s:form action="" method="POST" enctype="multipart/form-data" name="addTpOnboard" id="addTpOnboard" theme="simple">
                                
                                <div>
                                    <h3 style="color: blue">Communications</h3>
                                    <div id="protocolmsg"></div>
                                    <table>
                                        <tbody>
                                            <tr>
                                                <td class="lableLeft">Protocol</td>
                                                <td>
                                                    <s:select headerKey="-1" headerValue="-- Select --" list="#@java.util.LinkedHashMap@{'FTP':'FTP/FTPS','AS2':'AS2','SFTP':'SFTP','HTTP':'HTTP/HTTPS','SMTP':'SMTP'}" name="commnProtocol" id="commnProtocol" value="%{commnProtocol}" tabindex="10" cssStyle="width : 143px" onchange="protocolsSelect(this.value)"/>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div id="transferModeDiv"  style="display: none">
                                    <h2 style="float:left">Transfer&nbsp;Mode&nbsp;:</h2>
                                    <div style="float:left;position:relative;left: 27px;top:14px">
                                         <input type="text" id="tempTransferMode" style="display:none"/>
                                        <s:radio name="transferMode" id="transferMode" list="{'get','put'}" value="%{tpOnboardingBean.transferMode}" onchange="gettransferModeSelection(this.value)"  tabindex="11"></s:radio>&nbsp;&nbsp;
                                            <div class="tooltip"><i class="fa fa-question-circle-o"></i>
                                                <span class="tooltiptext">get&nbsp;:&nbsp;Partner&nbsp;Server <br>put&nbsp;:&nbsp;Your&nbsp;Server </span>
                                            </div>
                                        </div>
                                    <%--  <div style="float:left;position:relative;left: 27px;top:14px">
                                          <input type = "radio" name ="transferMode" id ="transferMode1" value="%{tpOnboardingBean.transferMode}" onchange="transferModeSelection(this.value)"/>&nbsp; &nbsp;get 
                                      </div>

                                    <div style="float:left;position:relative;left: 47px;top:14px">

                                        <input type = "radio" name ="transferMode"  id ="transferMode2" value="%{tpOnboardingBean.transferMode}" onchange="transferModeSelection(this.value)"/>&nbsp; &nbsp;put
                                        <div class="tooltip"><i class="fa fa-question-circle-o"></i>
                                            <span class="tooltiptext">get&nbsp;:&nbsp;Partner&nbsp;Server <br>put&nbsp;:&nbsp;Your&nbsp;Server </span>
                                        </div>
                                    </div> --%>
                                </div>
                                <div id="loaderdiv" class="loadingImg" style="display: none">
                                    <span id ="LoadingContent" > <img src="<s:url value="/includes/images/Loader2.gif"/>"   ></span>
                                </div>
                                <div id="transferModeMsg" style="display: none;position: relative;right: 226px;bottom: 11px;"></div>
                                <div id="ftpDiv" style="display: none;clear:both">
                                    <div id="protocolmsgFtp"></div>
                                    <h2 style="color: blue">Server&nbsp;Details :</h2>
                                    <h3>FTP : </h3>
                                    <table>
                                        <tbody>
                                            <tr>
                                                <td class="lableLeft">FTP&nbsp;Type </td>
                                                <td>
                                                    <s:select list="#@java.util.LinkedHashMap@{'GET':'Get','PUT':'Put'}" name="ftp_method" id="ftp_method" value="%{ftp_method}" tabindex="12" cssStyle="width : 143px"/>
                                                </td>
                                                <td class="lableLeft">Connection&nbsp;Type </td>
                                                <td>
                                                    <s:select list="#@java.util.LinkedHashMap@{'ACTIVE':'Active','PASSIVE':'Passive'}" name="ftp_conn_method" id="ftp_conn_method" value="%{ftp_conn_method}" tabindex="13" cssStyle="width : 143px"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lableLeft">Receiving&nbsp;Protocol </td>
                                                <td>
                                                    <s:textfield cssClass="inputStyle" name="ftp_recv_protocol" id="ftp_recv_protocol" tabindex="14" value="FTP"/>
                                                </td>
                                                <td class="lableLeft">Response&nbsp;Timeout&nbsp;(sec) </td>
                                                <td>
                                                    <s:textfield cssClass="inputStyle" name="ftp_resp_time" id="ftp_resp_time" tabindex="15" value="%{ftp_resp_time}" onchange="fieldLengthValidator(this);"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lableLeft">FTP&nbsp;Host </td>
                                                <td>
                                                    <s:textfield cssClass="inputStyle" name="ftp_host" id="ftp_host" tabindex="16" value="%{ftp_host}"/>
                                                </td>
                                                <td class="lableLeft">FTP&nbsp;Port </td>
                                                <td>
                                                    <s:textfield cssClass="inputStyle" name="ftp_port" id="ftp_port" tabindex="17" value="%{ftp_port}" onchange="fieldLengthValidator(this);"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lableLeft">FTP&nbsp;User&nbsp;ID </td>
                                                <td>
                                                    <s:textfield cssClass="inputStyle" name="ftp_userId" id="ftp_userId" tabindex="18" value="%{ftp_userId}"/>
                                                </td>
                                                <td class="lableLeft">FTP&nbsp;Password  </td>
                                                <td>
                                                    <s:password cssClass="inputStyle" name="ftp_pwd" id="ftp_pwd" tabindex="19" value="%{ftp_pwd}"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lableLeft">FTP&nbsp;Directory </td>
                                                <td>
                                                    <s:textfield cssClass="inputStyle" name="ftp_directory" id="ftp_directory" tabindex="20" value="%{ftp_directory}"/>
                                                </td>
                                                <td class="lableLeft">SSL&nbsp;Required </td>
                                                <td>
                                                    <s:checkbox cssClass="inputStyle" name="ftp_ssl_req" id="ftp_ssl_req" tabindex="21" value="%{ftp_ssl_req}" onclick="sslRequired('ftp')"/>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div id="sftpDiv" style="display: none;clear:both">
                                    <div id="protocolmsgSftp"></div>
                                    <h2 style="color: blue">Server&nbsp;Details :</h2>
                                    <h3>SFTP : </h3>
                                    <table>
                                        <tbody>
                                            <tr>
                                                <td class="lableLeft">Connection&nbsp;Type </td>
                                                <td>
                                                    <s:select list="#@java.util.LinkedHashMap@{'ACTIVE':'Active','PASSIVE':'Passive'}" name="sftp_conn_method" id="sftp_conn_method" value="%{sftp_conn_method}" tabindex="22" cssStyle="width : 143px"/>
                                                </td>
                                                <td class="lableLeft">Authentication&nbsp;Type </td>
                                                <td>
                                                    <s:select list="#@java.util.LinkedHashMap@{'Pwd_Only':'Password only','SSH_Public_Key':'SSH Public Key','pwd_and_public':'Password & Public Key'}" name="sftp_auth_method" id="sftp_auth_method" value="%{sftp_auth_method}" tabindex="23" cssStyle="width:143px"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lableLeft">SSH&nbsp;Public&nbsp;key </td>
                                                <td class="lableLeft">My&nbsp;SSH&nbsp;Public&nbsp;Key </td>
                                                <td id="download" >
                                                    <%-- <s:textfield cssClass="button" name="sftp_public_key" id="sftp_public_key" tabindex="24" value="Download"/>--%>
                                                    <a href="../tpOnboarding/tpOnboardingDownloads.action">Download this file</a>
                                                </td>
                                                <td id="upload">
                                                    <%-- <s:file name="sftp_upload_public_key" id= "sftp_upload_public_key" label="sftp_upload_public_key" tabindex="25"/>--%>
                                                    <s:file name="upload" id= "attachmentFileNameSftp" label="sftp_upload_public_key" tabindex="25"/>
                                                </td>
                                            </tr>
                                            <!--                                            <tr id="upload">
                                                                                            <td></td>
                                                                                            <td class="lableLeft">Upload&nbsp;your&nbsp;SSH&nbsp;Public&nbsp;Key </td>
                                                                                            
                                                                                            <td></td>
                                                                                        </tr>-->
                                            <tr>
                                                <td class="lableLeft">Remote&nbsp;Host&nbsp;IP&nbsp;Address </td>
                                                <td>
                                                    <s:textfield cssClass="inputStyle" name="sftp_host_ip" id="sftp_host_ip" tabindex="26" value="%{sftp_host_ip}"/>
                                                </td>
                                                <td class="lableLeft">Remote&nbsp;Port </td>
                                                <td>
                                                    <s:textfield cssClass="inputStyle" name="sftp_remote_port" id="sftp_remote_port" tabindex="27" value="%{sftp_remote_port}" onchange="fieldLengthValidator(this);"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lableLeft">Remote&nbsp;UserId </td>
                                                <td>
                                                    <s:textfield cssClass="inputStyle" name="sftp_remote_userId" id="sftp_remote_userId" tabindex="28" value="%{sftp_remote_userId}"/>
                                                </td>
                                                <td class="lableLeft">Remote&nbsp;Password </td>
                                                <td>
                                                    <s:password cssClass="inputStyle" name="sftp_remote_pwd" id="sftp_remote_pwd" tabindex="19" value="%{sftp_remote_pwd}"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lableLeft">Type </td>
                                                <td>
                                                    <s:select list="#@java.util.LinkedHashMap@{'GET':'Get','PUT':'Put'}" name="sftp_method" id="sftp_method" value="%{sftp_method}" tabindex="30" cssStyle="width : 143px"/>
                                                </td>
                                                <td class="lableLeft">Directory </td>
                                                <td>
                                                    <s:textfield cssClass="inputStyle" name="sftp_directory" id="sftp_directory" tabindex="31" value="%{sftp_directory}"/>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div id="httpDiv" style="display: none;clear:both">
                                    <div id="protocolmsgHttp"></div>
                                    <h2 style="color: blue">Server&nbsp;Details :</h2>
                                    <h3>HTTP : </h3>
                                    <table>   
                                        <tbody>  
                                            <tr>
                                                <td class="lableLeft">Receiving&nbsp;Protocol </td>
                                                <td>
                                                    <s:textfield cssClass="inputStyle" name="http_recv_protocol" id="http_recv_protocol" tabindex="32" value="HTTP"/>
                                                </td>
                                                <td class="lableLeft">Response&nbsp;Timeout&nbsp;(sec) </td>
                                                <td>
                                                    <s:textfield cssClass="inputStyle" name="http_resp_time" id="http_resp_time" tabindex="33" value="%{http_resp_time}" onchange="fieldLengthValidator(this);"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lableLeft">HTTP&nbsp;End&nbsp;Point </td>
                                                <td>
                                                    <s:textfield cssClass="inputStyle" name="http_endpoint" id="http_endpoint" tabindex="34" value="%{http_endpoint}"/>
                                                </td>
                                                <td class="lableLeft">HTTP&nbsp;Port </td>
                                                <td>
                                                    <s:textfield cssClass="inputStyle" name="http_port" id="http_port" tabindex="35" value="%{http_port}" onchange="fieldLengthValidator(this);"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lableLeft">HTTP&nbsp;Mode </td>
                                                <td>
                                                    <s:select list="#@java.util.LinkedHashMap@{'GET':'Get','POST':'Post'}" name="http_protocol_mode" id="http_protocol_mode" value="%{http_protocol_mode}" tabindex="36" cssStyle="width : 143px"/>
                                                </td>
                                                <td class="lableLeft">URL </td>
                                                 <td>
                                                    <s:textfield cssClass="inputStyle" name="http_url" id="http_url" tabindex="35" value="%{http_url}" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lableLeft">SSL&nbsp;Required </td>
                                                <td>
                                                    <s:checkbox cssClass="inputStyle" name="http_ssl_req" id="http_ssl_req" tabindex="37" value="%{http_ssl_req}" onclick="sslRequired('http')"/>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div id="smtpDiv" style="display: none;clear:both">
                                    <div id="protocolmsgSmtp"></div>
                                    <h2 style="color: blue">Server&nbsp;Details :</h2>
                                    <h3>SMTP : </h3>
                                    <table>   
                                        <tbody>  
                                        <tbody>  
                                            <tr>
                                                <td class="lableLeft">Receiving&nbsp;Protocol </td>
                                                <td>
                                                    <s:textfield cssClass="inputStyle" name="smtp_recv_protocol" id="smtp_recv_protocol" tabindex="38" value="SMTP"/>
                                                </td>
                                                <td class="lableLeft">SMTP&nbsp;Server&nbsp;Host </td>
                                                <td>
                                                    <s:textfield cssClass="inputStyle" name="smtp_server_protocol" id="smtp_server_protocol" tabindex="39" value="%{smtp_server_protocol}"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lableLeft">SMTP&nbsp;Server&nbsp;Port </td>
                                                <td>
                                                    <s:textfield cssClass="inputStyle" name="smtp_server_port" id="smtp_server_port" tabindex="40" value="%{smtp_server_port}" onchange="fieldLengthValidator(this);"/>
                                                </td>
                                                <td class="lableLeft">From&nbsp;email&nbsp;address </td>
                                                <td>
                                                    <s:textfield cssClass="inputStyle" name="smtp_from_email" id="smtp_from_email" tabindex="41" value="%{smtp_from_email}" onchange="validateEmail(this);"/>
                                                </td></tr>
                                            <tr>
                                                <td class="lableLeft">To email&nbsp;address </td>
                                                <td>
                                                    <s:textfield cssClass="inputStyle" name="smtp_to_email" id="smtp_to_email" tabindex="42" value="%{smtp_to_email}" onchange="validateEmail(this);"/>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div id="loadingImage"></div>
                                <div id="as2Div" style="display: none;clear:both">
                                    <div id="protocolmsgAs2"></div>
                                    <h2 style="color: blue">Server&nbsp;Details :</h2>
                                    <h3>AS2 : </h3>
                                    <table>   
                                        <tbody>  
                                            <tr>
                                                <td class="lableLeft">System&nbsp;Certificates </td>
                                                <td class="lableLeft">Upload&nbsp;Your&nbsp;System&nbsp;Certificate </td>
                                                <td>
                                                    <%-- <s:file name="as2_part_cert" id= "as2_part_cert" label="as2_part_cert" tabindex="44"/>--%>
                                                    <s:file name="upload" id= "attachmentFileNameAs2" label="as2_part_cert" tabindex="44"/>                                                    
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lableLeft">Organization&nbsp;Profiles </td>
                                                <td class="lableLeft">My&nbsp;Organization</td>
                                                <td>
                                                    <s:textfield cssClass="inputStyle" name="as2_myOrgName" id="as2_myOrgName" tabindex="45" value="%{as2_myOrgName}" onkeyup="as2OrgProfileNames(this);" onblur="isExistedAS2PartnerProfileName();"/><img id="correctImg" style="display: none;" src="/<%=AppConstants.CONTEXT_PATH%>/includes/images/right.png" 
                                                         width="13" height="13" border="0"><img id="wrongImg" style="display: none;" src="/<%=AppConstants.CONTEXT_PATH%>/includes/images/wrong.jpg" width="13" height="13" border="0"><img id="loadingImageAjax" style="display: none;" width="16" height="16" border="0" src="<s:url value="/includes/images/ajax-loader.gif"/>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td class="lableLeft">Your&nbsp;Organization </td>
                                                <td>
                                                    <s:textfield cssClass="inputStyle" name="as2_partOrgName" id="as2_partOrgName" tabindex="46" value="%{as2_partOrgName}" onkeyup="as2PartnerProfileNames(this);"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lableLeft">Partner&nbsp;Profiles</td>
                                                <td class="lableLeft">My&nbsp;Partner&nbsp;Profile&nbsp;Name </td>
                                                <td>
                                                    <s:textfield cssClass="inputStyle" name="as2_myPartname" id="as2_myPartname" tabindex="47" value="%{as2_myPartname}"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td class="lableLeft">Your&nbsp;Partner&nbsp;Profile&nbsp;Name </td>
                                                <td>
                                                    <s:textfield cssClass="inputStyle" name="as2_yourPartname" id="as2_yourPartname" tabindex="48" value="%{as2_yourPartname}" readonly="true"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lableLeft">AS2&nbsp;End&nbsp;Point </td>
                                                <td class="lableLeft">My&nbsp;End&nbsp;Point </td>
                                                <td>
                                                    <s:textfield cssClass="inputStyle" name="as2_myEndPoint" id="as2_myEndPoint" tabindex="49" value="%{as2_myEndPoint}"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td class="lableLeft">Your&nbsp;End&nbsp;Point </td>
                                                <td>
                                                    <s:textfield cssClass="inputStyle" name="as2_partendpoint" id="as2_partendpoint" tabindex="50" value="%{as2_partendpoint}"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td class="lableLeft">Store&nbsp;AS2&nbsp;Messages&nbsp;in </td>
                                                <td>
                                                    <s:select list="#@java.util.LinkedHashMap@{'MailBox':'MailBox','FSA':'FSA'}" name="as2_strMsg" id="as2_strMsg" value="%{as2_strMsg}" tabindex="51" cssStyle="width : 143px"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lableLeft">Wait&nbsp;For&nbsp;Synchronous&nbsp;MDN&nbsp;Process</td>
                                                <td>
                                                    <s:select list="#@java.util.LinkedHashMap@{'YES':'Yes','NO':'No'}" name="as2_waitForSync" id="as2_waitForSync" value="%{as2_waitForSync}" tabindex="52" cssStyle="width : 143px"/>
                                                </td>          
                                                 <td class="lableLeft fld_disable">SSL&nbsp;Required&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <s:checkbox cssClass="inputStyle" name="as2_ssl_req" id="as2_ssl_req" tabindex="53" value="%{as2_ssl_req}" onclick="sslRequired('as2')"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lableLeft">Payload&nbsp;Send&nbsp;Mode</td>
                                                   <td>
                                                    <s:select list="#@java.util.LinkedHashMap@{'SYNC':'SYNC','ASYNC':'ASYNC','NoMDN':'No MDN'}" name="as2_payloadSendMode" id="as2_payloadSendMode" value="%{as2_payloadSendMode}" tabindex="52" cssStyle="width : 143px"/>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div id="sslDiv" style="display: none">
                                    <h3>SSL : </h3>
                                    <table>  
                                        <tbody>  
                                            <tr>
                                                <td class="lableLeft">SSL&nbsp;Priority:</td>
                                                <td>
                                                    <s:select list="#@java.util.LinkedHashMap@{'MUST':'Must','NONE':'None'}" name="ssl_priority" id="ssl_priority" value="%{ssl_priority}" tabindex="54" cssStyle="width : 143px" onchange="sslPriorityChange(this.value)"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lableLeft">Cipher&nbsp;Strength:</td>
                                                <td>
                                                    <s:select list="#@java.util.LinkedHashMap@{'STRONG':'Strong','NONE':'None'}" name="ssl_cipher_stergth" id="ssl_cipher_stergth" value="%{ssl_cipher_stergth}" tabindex="56" cssStyle="width : 143px"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lableLeft">CA&nbsp;Certificates&nbsp;(Certificate&nbsp;Groups):</td>
                                                <td>
                                                    <%--<s:textfield cssClass="button" name="ssl_sysStore" id="ssl_sysStore" tabindex="57" value="Download"/>--%>
                                                    <a href="../tpOnboarding/tpOnboardingDownloads.action">Download this file</a>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>

                                <div id="sslDiv2" style="display: none">
                                    <div id="protocolmsgSsl"></div>
                                    <h3>SSL : </h3>
                                    <table>  
                                        <tbody>  
                                            <tr>
                                                <td class="lableLeft">SSL&nbsp;Priority:</td>
                                                <td>
                                                    <s:select list="#@java.util.LinkedHashMap@{'MUST':'Must','NONE':'None'}" name="ssl_priority2" id="ssl_priority2" value="%{ssl_priority2}" tabindex="54" cssStyle="width : 143px" onchange="sslPriorityChange(this.value)"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lableLeft">Cipher&nbsp;Strength:</td>
                                                <td>
                                                    <s:select list="#@java.util.LinkedHashMap@{'STRONG':'Strong','NONE':'None'}" name="ssl_cipher_stergth2" id="ssl_cipher_stergth2" value="%{ssl_cipher_stergth2}" tabindex="56" cssStyle="width : 143px"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lableLeft">CA&nbsp;Certificates&nbsp;(Certificate&nbsp;Groups):</td>
                                                <td>
                                                    <%--  <s:file name="certGroups" id="certGroups" label="certGroups" tabindex="58"/>--%>
                                                    <s:file name="upload1" id= "attachmentFileName" label="certGroups" tabindex="58"/> 
                                                </td>
                                            </tr>
                                        </tbody>
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
     
    <footer> 
        <p><font color="white">&#169 2016 Miracle Software Systems, Inc. All rights reserved</font></p>
    </footer>
    <script type="text/javascript"> 
        $(function () {
            /*  Inbound function start*/
            $("#ib850").click(function () {
                var transferMode = document.forms["addTpOnboard"]["transferMode"].value;
                var protocol=document.getElementById("commnProtocol").value;
                if((transferMode == 'get') || (transferMode == 'put') || (protocol == 'AS2') || (protocol == 'SMTP')){
                    
                    if ($(this).is(":checked")) {
                        document.getElementById('ibvalue850').value='850';
                        document.getElementById('ibdirection').value='Inbound';
                        document.getElementById('trans850IdcodeIB').value='850';
                        document.getElementById('trans850IdcodeIB').readOnly = true;
                        $("#ibenvelop850").show();
                    } else {
                        $("#ibenvelop850").hide();
                    }
                }else{
                    document.getElementById("transferModeMsg").style.display = "block";
                    document.getElementById('transferModeMsg').innerHTML = "<font color=red>Please select Transfer Mode.</font>";
                }
            });
            $("#ib855").click(function () {
                var transferMode = document.forms["addTpOnboard"]["transferMode"].value;
                var protocol=document.getElementById("commnProtocol").value;
                if((transferMode == 'get') || (transferMode == 'put') || (protocol == 'AS2') || (protocol == 'SMTP')){
                    if ($(this).is(":checked")) {
                        document.getElementById('ibvalue855').value='855';
                        document.getElementById('ibdirection855').value='Inbound';
                        document.getElementById('trans855IdcodeIB').value='855';
                        document.getElementById('trans855IdcodeIB').readOnly = true;
                        $("#ibenvelop855").show();
                    } else {
                        $("#ibenvelop855").hide();
                    }
                }else{
                    document.getElementById("transferModeMsg").style.display = "block";
                    document.getElementById('transferModeMsg').innerHTML = "<font color=red>Please select Transfer Mode.</font>";
                }
            });
            $("#ib856").click(function () {
                var transferMode = document.forms["addTpOnboard"]["transferMode"].value;
                var protocol=document.getElementById("commnProtocol").value;
                if((transferMode == 'get') || (transferMode == 'put') || (protocol == 'AS2') || (protocol == 'SMTP')){
                    if ($(this).is(":checked")) {
                        document.getElementById('ibvalue856').value='856';
                        document.getElementById('ibdirection856').value='Inbound';
                        document.getElementById('trans856IdcodeIB').value='856';
                        document.getElementById('trans856IdcodeIB').readOnly = true;
                        $("#ibenvelop856").show();
                    } else {
                        $("#ibenvelop856").hide();
                    }}else{
                    document.getElementById("transferModeMsg").style.display = "block";
                    document.getElementById('transferModeMsg').innerHTML = "<font color=red>Please select Transfer Mode.</font>";
                }
                
            });
            $("#ib810").click(function () {
                var transferMode = document.forms["addTpOnboard"]["transferMode"].value;
                var protocol=document.getElementById("commnProtocol").value;
                if((transferMode == 'get') || (transferMode == 'put') || (protocol == 'AS2') || (protocol == 'SMTP')){
                    if ($(this).is(":checked")) {
                        document.getElementById('ibvalue810').value='810';
                        document.getElementById('ibdirection810').value='Inbound';
                        document.getElementById('trans810IdcodeIB').value='810';
                        document.getElementById('trans810IdcodeIB').readOnly = true;
                        $("#ibenvelop810").show();
                    } else {
                        $("#ibenvelop810").hide();
                    }
                }else{
                    document.getElementById("transferModeMsg").style.display = "block";
                    document.getElementById('transferModeMsg').innerHTML = "<font color=red>Please select Transfer Mode.</font>";
                }
            });
            /*  Outbound function Start*/
            $("#ob850").click(function () {
                var transferMode = document.forms["addTpOnboard"]["transferMode"].value;
                var protocol=document.getElementById("commnProtocol").value;
                if((transferMode == 'get') || (transferMode == 'put') || (protocol == 'AS2') || (protocol == 'SMTP')){
                    if ($(this).is(":checked")) {
                        document.getElementById('obvalue850').value='850';
                        document.getElementById('trans850IdcodeOB').value='850';
                        document.getElementById('trans850IdcodeOB').readOnly = true;
                        document.getElementById('obdirection').value='Outbound';
                        $("#obenvelop850").show();
                    } else {
                        $("#obenvelop850").hide();
                    }
                }else{
                    document.getElementById("transferModeMsg").style.display = "block";
                    document.getElementById('transferModeMsg').innerHTML = "<font color=red>Please select Transfer Mode.</font>";
                }
            });
            $("#ob855").click(function () {
                var transferMode = document.forms["addTpOnboard"]["transferMode"].value;
                var protocol=document.getElementById("commnProtocol").value;
                if((transferMode == 'get') || (transferMode == 'put') || (protocol == 'AS2') || (protocol == 'SMTP')){
                    if ($(this).is(":checked")) {
                        document.getElementById('obvalue855').value='855';
                        document.getElementById('trans855IdcodeOB').value='855';
                        document.getElementById('trans855IdcodeOB').readOnly = true;
                        document.getElementById('obdirection855').value='Outbound';
                        $("#obenvelop855").show();
                    } else {
                        $("#obenvelop855").hide();
                    }
                }else{
                    document.getElementById("transferModeMsg").style.display = "block";
                    document.getElementById('transferModeMsg').innerHTML = "<font color=red>Please select Transfer Mode.</font>";
                }
            });
            $("#ob856").click(function () {
                var transferMode = document.forms["addTpOnboard"]["transferMode"].value;
                var protocol=document.getElementById("commnProtocol").value;
                if((transferMode == 'get') || (transferMode == 'put') || (protocol == 'AS2') || (protocol == 'SMTP')){
                    if ($(this).is(":checked")) {
                        document.getElementById('obvalue856').value='856';
                        document.getElementById('trans856IdcodeOB').value='856';
                        document.getElementById('trans856IdcodeOB').readOnly = true;
                        document.getElementById('obdirection856').value='Outbound';
                        $("#obenvelop856").show();
                    } else {
                        $("#obenvelop856").hide();
                    }
                }else{
                    document.getElementById("transferModeMsg").style.display = "block";
                    document.getElementById('transferModeMsg').innerHTML = "<font color=red>Please select Transfer Mode.</font>";
                }
            });
            $("#ob810").click(function () {
                var transferMode = document.forms["addTpOnboard"]["transferMode"].value;
                var protocol=document.getElementById("commnProtocol").value;
                if((transferMode == 'get') || (transferMode == 'put') || (protocol == 'AS2') || (protocol == 'SMTP')){
                    if ($(this).is(":checked")) {
                        document.getElementById('obvalue810').value='810';
                        document.getElementById('trans810IdcodeOB').value='810';
                        document.getElementById('trans810IdcodeOB').readOnly = true;
                        document.getElementById('obdirection810').value='Outbound';
                        $("#obenvelop810").show();
                    } else {
                        $("#obenvelop810").hide();
                    }
                }else{
                    document.getElementById("transferModeMsg").style.display = "block";
                    document.getElementById('transferModeMsg').innerHTML = "<font color=red>Please select Transfer Mode.</font>";
                }
            });
            /*  Outbound function End*/
        });
        
        function check()
        {
            var commnProtocol =document.getElementById('commnProtocol').value;
    
            if(commnProtocol == 'FTP'){
                ftpValidate=validateFTP();
                if(ftpValidate==false)
                    return false;
            }else if(commnProtocol == 'SFTP'){
                sftpValidate=validateSFTP();
                if(sftpValidate==false)
                    return false;
            }else if(commnProtocol == 'HTTP'){
                httpValidate=validateHTTP();
                if(httpValidate==false)
                    return false;
            }else if(commnProtocol == 'SMTP'){
                smtpValidate=validateSMTP();
                if(smtpValidate==false)
                    return false;
            }else if(commnProtocol == 'AS2'){
                as2Validate=validateAS2();
                if(as2Validate==false)
                    return false;
            }

        }
       
       
    </script>
</body>
</html>
