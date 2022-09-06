<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
A
<%
	RequestDispatcher dispatcher = request.getRequestDispatcher("1.b.jsp");
	dispatcher.forward(request, response);
%>
<!-- dispatcher : a slervlet에서 쓰던걸 b에 그대로 전달 -->