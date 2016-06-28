<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%-- <s:actionmessage />
	
	<br /> User Name :
	<s:property value="%{username}" />
	<br /> Password :
	<s:property value="%{password}" /> --%>


	<s:form action="saveStudent" theme="simple">

		<s:label key="firstName" /> : <s:textfield name="student.firstName"></s:textfield>
		<br />
		<s:label key="lastName" /> : <s:textfield name="student.lastName"></s:textfield>
		<br />
		<s:label key="gender" /> :<s:radio name="student.gender"
			list="#{'M':'Male','F':'Female'}"></s:radio>
		<br />
		<s:label key="visa" /> :<s:checkboxlist name="student.visa"
			list="#{'USA':'USA','India':'India','UK':'UK'}"></s:checkboxlist>
		<br />
		<s:label key="language" /> :<s:select name="student.languange"
			list="#{'Hindi':'Hindi','English':'English','Arbic':'Arbic'}"
			headerKey="0" headerValue="Please Select Language"></s:select>
		<br />
		<s:label key="description" /> :<s:textarea name="student.desciption"
			cols="20" rows="5"></s:textarea>
		<br />

		<s:submit value="Save"></s:submit>


	</s:form>




</body>
</html>