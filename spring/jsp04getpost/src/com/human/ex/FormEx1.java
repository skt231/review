package com.human.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FormEx1
 */
@WebServlet("/FormEx1")
public class FormEx1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FormEx1() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String[] hobby = request.getParameterValues("hobby");
		String major = request.getParameter("major");
		String major1 = request.getParameter("major1");
		String protocol = request.getParameter("protocol");
		String br = "<br>";
		// 브라우저 스트림에 문자열을 찍으면 브라우저에 나타나다.
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("이름 : " + name + br);
		out.println("아이디 : " + id + br);
		out.println("비밀번호 : " + pw + br);
		out.println("취미 : ");
		for (String items : hobby) {
			out.println(items + " ");
		}
		out.println(br);
		out.println("과목 : " + major + ", " + major1 + br);
		out.println("프로토콜 : " + protocol + br);
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
