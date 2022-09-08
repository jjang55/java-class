<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String userId = request.getParameter("userId");
	String userPw = request.getParameter("userPw");
	
	if(userId.equals("java")) {
		if(userPw.equals("java")) {
%>
			<c:redirect url='main.jsp?msg=Welcom java.'/>
<%
		} else
%>
				<c:redirect url='login.jsp?errmsg=Input corret Password.'/>
<%
	} else
%>
			<c:redirect url='login.jsp?errmsg=Input id: \'java\'.'/>