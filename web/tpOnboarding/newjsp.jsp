<%@ taglib prefix="s" uri="/struts-tags" %>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.mss.ediscv.util.AppConstants"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
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
                                <s:textfield cssClass="form-control" name="address1" id="address1" tabindex="5" value="%{tpOnboardingBean.address1}" onchange="fieldLengthValidator(this);"/>
                            </td><td class="lableLeft">City<font color="red">*</font> </td><td>
                                <s:textfield cssClass="form-control" name="city" id="city" tabindex="6" value="%{tpOnboardingBean.city}" onchange="fieldLengthValidator(this);"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="lableLeft">State<font color="red">*</font> </td><td>
                                <s:textfield cssClass="form-control" name="state" id="state" tabindex="7" value="%{tpOnboardingBean.state}" onchange="fieldLengthValidator(this);"/>
                            </td><td class="lableLeft">Country<font color="red">*</font> </td><td>
                                <s:select cssClass="form-control" list="#@java.util.LinkedHashMap@{'US':'USA','IN':'India','CN':'Canada','UK':'United Kingdom'}" name="country" id="country" value="%{tpOnboardingBean.country}" tabindex="8" cssStyle="width : 143px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="lableLeft">Zip&nbsp;or&nbsp;Postal&nbsp;Code<font color="red">*</font> </td><td>
                                <s:textfield cssClass="form-control" name="zipCode" id="zipCode" tabindex="9" value="%{tpOnboardingBean.zipCode}" onchange="fieldLengthValidator(this);"/>
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
    </body>
</html>
