package com.human.ex;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class calClass
 */
@WebServlet("/calClass")
public class calClass extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public calClass() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@SuppressWarnings("unused")
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		String operator = request.getParameter("operator");
		int result = 0;

		 if (num1 != null && num2 != null && operator != null) {
		        try {
		            int operand1 = Integer.parseInt(num1);
		            int operand2 = Integer.parseInt(num2);

		            if (operator.equals("+")) {
		                result = operand1 + operand2;
		            } else if (operator.equals("-")) {
		                result = operand1 - operand2;
		            } else if (operator.equals("*")) {
		                result = operand1 * operand2;
		            } else if (operator.equals("/")) {
		                result = operand1 / operand2;
		            }
		        } catch (NumberFormatException e) {
		            e.printStackTrace();
		        }
		    }

		 request.setAttribute("result", result);
		    RequestDispatcher dispatcher = request.getRequestDispatcher("calculator.jsp");
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
