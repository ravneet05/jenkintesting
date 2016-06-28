<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isErrorPage="true"%>

<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%-- 	Error Message:

	<%
	Integer  statusCode = (Integer ) request.getAttribute("javax.servlet.error.status_code");
	String exceptionType = (String) request.getAttribute("javax.servlet.error.exception_type");
	String message = (String) request.getAttribute("javax.servlet.error.message");

	out.println("statusCode - " + statusCode + "<br/>");
	out.println("exceptionType - " + exceptionType + "<br/>");
	out.println("message - " + message + "<br/>");
%>
 --%>

	<s:form theme="simple">
		<div style="min-height: 30px; width: 500px; background-color: yellow;">
			<s:actionerror theme="simple" />
		</div>
	</s:form>

</body>
</html>