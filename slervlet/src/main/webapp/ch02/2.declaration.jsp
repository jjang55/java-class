<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%!
	public int add(int num1, int num2) {
		return num1 + num2;
	}

	int num1 = 1; // 맴버변수
%>
<%
	int num2 = 2; // 지역변수
%>
<%= num1 %> + <%= num2 %> = <%= add(num1, num2) %>