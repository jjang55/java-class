<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	pageContext.setAttribute("one", "페이지");
	// scope: 페이지가 실행되는 동안 - 페이지에서 사용
	request.setAttribute("two", "리퀘스트");
	// scope: client로 response 보내기 전까지 (주로 사용 / 페이지간 공유) - 업무에서 사용
	session.setAttribute("three", "세션");
	// scope: user가 logout을 했을 때(client단) or 일정 시간 초과 timeout(server단) - 유저별 사용
	application.setAttribute("four", "애플리케이션");
	// scope: tomcat이 실행되는 동안 - 어플에서 사용
%>
<c:redirect url='1.scopeB.jsp'/>