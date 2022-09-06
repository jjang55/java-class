<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	for(int i = 0; i < 10; i++)
		out.print(i + "&nbsp;");
%>

<!-- 과제: 위 스파게티 코드를 해결하라.
		out 객체를 쓰지 않는 것으로 refactoring 하라. -->

<%
	for(int i = 0; i < 10; i++) {
%>
		<%= i %> &nbsp;
<%
	}
%>