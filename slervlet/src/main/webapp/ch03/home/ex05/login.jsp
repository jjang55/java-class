<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<form action='loginProc.jsp'>
	<label for='userId' class='col-form-label'>Id: </label>
	<input type='text' name='userId'/>
	<label for='userPw' class='col-form-label'>Password: </label>
	<input type='password' name='userPw'/>
	<input type='submit'>
</form>
<%
	String errmsg = request.getParameter("errmsg");
%>
<%= errmsg != null ? errmsg : "" %>