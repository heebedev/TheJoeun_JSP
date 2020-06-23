package com.servlet.base;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ResponseAge_02
 */
@WebServlet("/ResponseAge_02")
public class ResponseAge_02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResponseAge_02() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		int age = Integer.parseInt(request.getParameter("age"));
		
		if (age >= 20) {
			request.setAttribute("adult", "성인");
			request.setAttribute("age", Integer.toString(age));
			request.setAttribute("possible", "가능");
		} else {
			request.setAttribute("adult", "미성년자");
			request.setAttribute("age", Integer.toString(age));
			request.setAttribute("possible", "불가능");
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("ResponseAge_03.jsp");
		dispatcher.forward(request, response);
				
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		doGet(request, response);
	}

	

}
