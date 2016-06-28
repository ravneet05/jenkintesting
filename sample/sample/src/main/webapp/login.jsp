<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login ..</title>
</head>
<body>

	<s:form action="login" namespace="/Student" theme="simple">

		<s:label key="username" /> : <s:textfield name="username"></s:textfield>
		<br />
		<s:label key="password" /> : <s:password name="password"></s:password>
		<br />
		<s:submit value="Login"></s:submit>
		<br />
		<s:actionerror />

	</s:form>

</body>
</html>