<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>scriptlet test</title>
</head>
<body>

<%
for(int i=0; i<5; i++){
%>
<p>this html is created inside a scriptlet loop: <%= i %></p>
<%}%>

<%
String id = request.getParameter("id");

if(id==null){ %>

<strong>ID parameter is missing!</strong>
	
<% }else{ %>
ID parameter is <%= id %>
<%}%>

</body>
</html>