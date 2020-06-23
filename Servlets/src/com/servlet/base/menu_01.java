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
 * Servlet implementation class menu_01
 */
@WebServlet("/menu_01")
public class menu_01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public menu_01() {
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
	
		out.println("<html>");
		out.println("<head><title>오늘의메뉴</title></head>");
		out.println("<body>");
			out.println("<h3>오늘의 메뉴</h3>");
			out.println("삼계탕<br>");
			out.println("돈까스<br>");
			out.println("우동<br>");
			out.println("짬뽕<br><br>");
			out.println("<hr>");
			
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/Today");
			dispatcher.include(request, response);
			
		out.println("</body>");
	out.println("</html>");
	}

	
	
	
	
	
}
