<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ page import='ch05.service.LaborerService, ch05.service.LaborerServiceImpl' %>
<%
	LaborerService laborerService = new LaborerServiceImpl();
%> 

<%= laborerService.getLaborer() %>