package ch01;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ch01/get/add") // 중복되지않고 유일해야함
public class C1_Get extends HttpServlet{ // java를 써서 webapp을 만들고싶어서
	@Override // get 타입 객체라면 조회(read 읽기)를 뜻함 <-> post는 write 의미
	public void doGet(HttpServletRequest req, HttpServletResponse res)
		throws ServletException, IOException { // doGet method를 tomcat(servletcontainer)이 call
		int num1 = 1;
		int num2 = 2;
		
		res.setContentType("text/html; charset=utf-8"); // response header
		PrintWriter out = res.getWriter(); // response body
		out.println("<h2>GET</h2>");
		out.printf("<p>%d + %d = %d</p>", num1, num2, num1 + num2);
	} // response 주소에는 contextpath 주소가 안담기에 해야함
}
