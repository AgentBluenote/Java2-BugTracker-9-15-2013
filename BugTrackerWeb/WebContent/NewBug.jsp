<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="edu.uci.java2.controller.NewBugController, java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Bug</title>
</head>
<body>
<h1>New Bug</h1>
<form>
	<p>Summary: <input type="text" name="summary"></p>
	<p>Priority: <select id="Priority" name="priority">
	<%
		@SuppressWarnings("unchecked")
		List<String> priorityList = (List<String>)request.getAttribute(NewBugController.PRIORITY_LIST);
		for(String priority: priorityList) {
			StringBuilder sb = new StringBuilder();
			sb.append("<option value=\"");
			sb.append(priority);
			sb.append("\">");
			sb.append(priority);
			sb.append("</option>");
			out.print(sb.toString());
		}
	%>
	</select></p>
	<p>Status: <select id="Status" name="status">
	<%
	@SuppressWarnings("unchecked")
		List<String> statusList = (List<String>)request.getAttribute(NewBugController.STATUS_LIST);
		for(String status: statusList) {
			StringBuilder sb = new StringBuilder();
			sb.append("<option value=\"");
			sb.append(status);
			sb.append("\">");
			sb.append(status);
			sb.append("</option>");
			out.print(sb.toString());
		}
	%>	
	</select></p>
	<p>Assigned to: <select id="Assigned" name="assigned">
	<%
	@SuppressWarnings("unchecked")
		List<String> usernameList = (List<String>)request.getAttribute(NewBugController.USERNAME_LIST);
		for(String username: usernameList) {
			StringBuilder sb = new StringBuilder();
			sb.append("<option value=\"");
			sb.append(username);
			sb.append("\">");
			sb.append(username);
			sb.append("</option>");
			out.print(sb.toString());
		}
	%>	
	</select></p>
	<p>Full Description:<br/>
	<textarea name="description" rows="7" cols="50"></textarea></p>
	
	<input type="submit" value="Submit"/>
</form>
</body>
</html>