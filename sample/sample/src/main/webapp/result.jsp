<%@page import="com.sample.servlet.UserInfo"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="error.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<%
		/* String name = (String) request.getAttribute("name");
			String location = (String) request.getAttribute("location");
			
			out.println(name + "<br/>");
			out.println(location); */

			UserInfo user = (UserInfo) request.getAttribute("userInfo");

			out.println(user.getName() + "<br/>");
			out.println(user.getLocation().toUpperCase());

			String value = null;

		out.println(value.toLowerCase());
	%>

	<br />

	<%=user.getName() + "<br/>"%>
	<%=user.getLocation()%>

	<br />

	<jsp:useBean id="userInfo" scope="request"
		class="com.sample.servlet.UserInfo" />

	<jsp:getProperty property="name" name="userInfo" />
	<br />
	<jsp:getProperty property="location" name="userInfo" />

	<br />

	<%
		if ("NJ".equalsIgnoreCase(user.getLocation())) {
	%>
	<jsp:forward page="nj.jsp">
		<jsp:param value="<%=user.getLocation()%>" name="location" />
	</jsp:forward>

	<%
		} else if ("NY".equalsIgnoreCase(user.getLocation())) {
	%>
	<jsp:forward page="ny.jsp">
		<jsp:param value="<%=user.getLocation()%>" name="location" />
	</jsp:forward>
	<%
		} else {
	%>
	<jsp:include page="others.jsp">
		<jsp:param value="<%=user.getLocation()%>" name="location" />
	</jsp:include>
	<%
		}
	%>





</body>
</html>