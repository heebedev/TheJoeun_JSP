package com.servlet.base;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Sum100
 */
@WebServlet("/Sum100")
public class Sum100 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sum100() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int total = 0;
		for (int i = 1; i <= 100; i++) {
			total += i;
		}
		request.setAttribute("result", total);
		
		for(int i = 101; i <= 200; i++) {
			total += i;	
		}
		request.setAttribute("result2", total);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("sum100.jsp");
		dispatcher.forward(request, response);
	}

	

}
