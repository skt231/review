package com.human.ex;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
매핑주소를 *.do 로 하면 .do로 끝나는 모든 주소를 받아올 수 있다.
매핑주소 맨앞에 "/"은 없어야 한다.
*/
/**
 * Servlet implementation class frontcroller
 */
@WebServlet("*.do")
public class frontcroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public frontcroller() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//	URI:/jsp07frontcontroller/hello.do
//	conPath:/jsp07frontcontroller
//	command:/hello.do
		String uri = request.getRequestURI();
		System.out.println("URI:" + uri);
		// 원하는 수소에 대한 처리 방법
		String conPath = request.getRequestURI();
		System.out.println("conPath:" + conPath);

		String command = uri.substring(conPath.length());
		System.out.println("command:" + command);

		String viewPage = "view.jsp";
		if (command.equals("/insert.do")) {
			viewPage = "insert.jsp";
			System.out.println("insert.do");
		} else if (command.equals("/select.do")) {
			viewPage = "select.jsp";
			System.out.println("select작업");
			System.out.println("select.do");
		} else if (command.equals("/delete.do")) {
			viewPage = "delete.jsp";
			System.out.println("delete작업");
			System.out.println("delete.do");
		} else if (command.equals("/update.do")) {
			viewPage = "update.jsp";
			System.out.println("update작업");
			System.out.println("update.do");
		}
		System.out.println(viewPage);
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
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
