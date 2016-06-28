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

	Recent Student
	<br />
	<table border="1">
		<tr>
			<td>First Name: <s:property value="%{student.firstName}" /></td>
		</tr>
		<tr>
			<td>Last Name: <s:property value="%{student.lastName}" /></td>
		</tr>
		<tr>
			<td>Gender: <s:property value="%{student.gender}" /></td>
		</tr>
		<tr>
			<td>Visa: <s:property value="%{student.visa}" /></td>
		</tr>
		<tr>
			<td>Language: <s:property value="%{student.languange}" /></td>
		</tr>
		<tr>
			<td>Description: <s:property value="%{student.desciption}" /></td>
		</tr>
	</table>
	<br />
	<br />
	<br /> All Students
	<br />
	<table border="1">

		<thead>
			<tr>
				<td>First Namr</td>
				<td>Last Name</td>
				<td>Gender</td>
				<td>Visa</td>
				<td>Language</td>
				<td>Description</td>
			</tr>
		</thead>
		<s:if test="%{studentList != null}">
			<s:iterator var="std" value="studentList">
				<tr>
					<td><s:property value="firstName" /></td>
					<td><s:property value="lastName" /></td>
					<td><s:property value="gender" /></td>
					<td><s:property value="visa" /></td>
					<td><s:property value="languange" /></td>
					<td><s:property value="desciption" /></td>
				</tr>
			</s:iterator>
		</s:if>
		<s:else>
			No Student Records in the list
		</s:else>
	</table>


</body>
</html>