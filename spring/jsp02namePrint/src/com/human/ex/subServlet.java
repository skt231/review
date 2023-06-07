package com.human.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class jspServlet
 */
@WebServlet("/subServlet")
public class subServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public subServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("servletSubPage에서 에서 나의 이름은 홍길동 입니다.<br>");
		out.println("<a href='main/htmlMain.html'>htmlMain으로 이동</a><br>");
		out.println("<a href='main/jspMain.jsp'>jspMain으로 이동</a><br>");
		out.println("<a href='servletMain.java'>servletMain으로 이동</a><br>");
		out.println("<a href='sub/subHtml.html'>htmlsub으로 이동</a><br>");
		out.println("<a href='sub/jspSub.jsp'>jspsub으로 이동</a><br>");
		out.println("<a href='subServlet'>servletsub으로 이동</a><br>");
		out.println("</body>");
		out.println("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
