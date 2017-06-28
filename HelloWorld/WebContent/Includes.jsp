<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Include files!</title>
</head>
<body>

<!-- static include: content changes infrequently -->
<%@ include file="copyright.txt" %>

<br />

<!-- dynamic include: content changes a lot -->
<jsp:include page="Update.txt" />

<br />

<!-- Must use static include if we want to include java code -->
<%@ include file="Variables.jsp"%>
<%=name %>

</body>
</html>