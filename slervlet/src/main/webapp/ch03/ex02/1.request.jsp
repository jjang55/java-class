<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<ul>
	<li><%= request.getRequestURL() %></li>
	<li><%= request.getProtocol() %></li>
	<li><%= request.getServerName() %></li>
	<li><%= request.getContextPath() %></li>
	<li><%= request.getRequestURI() %></li>
	<li><%= request.getQueryString() %></li>
	<li><%= request.getMethod() %></li>
</ul>