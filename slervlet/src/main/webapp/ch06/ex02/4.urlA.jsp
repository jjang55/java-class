<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<h3>A</h3>

<c:url var='page' value='4.urlB.jsp'/>
<a href='${page}'>이동</a><br><br>

${param.num}