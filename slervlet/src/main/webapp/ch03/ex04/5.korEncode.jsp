<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ page import='java.net.URLEncoder' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>

<% String url = "5.target.jsp?msg=" + URLEncoder.encode("한글", "utf-8"); %>

<c:redirect url='<%= url %>'/> 