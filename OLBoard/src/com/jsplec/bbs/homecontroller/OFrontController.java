package com.jsplec.bbs.homecontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.bbs.command.OCommand;
import com.jsplec.bbs.command.ODeleteCommand;
import com.jsplec.bbs.command.OMainCommand;
import com.jsplec.bbs.command.OWriteCommand;

/**
 * Servlet implementation class OFrontController
 */
@WebServlet("*.olb")
public class OFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		actionDo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		actionDo(request, response);
	}

	
	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("actionDo()");
		request.setCharacterEncoding("UTF-8"); // 한글 들어와도 잘 처리한다...
		
		String uri = request.getRequestURI();  // 주소의 맨 끝에만 비교하기 위해서 쓰는 것....
		//System.out.println(uri);
		
		String conPath = request.getContextPath();
		//System.out.println(conPath);
		
		String com = uri.substring(conPath.length());
		//System.out.println(com);
		
		String viewPage = null; //000.jsp라는 파일을 여기다가 줄거다 
		OCommand command = null;
		
		switch (com) {
		case("/main.olb") :
			command = new OMainCommand();
			command.execute(request, response);
			viewPage = "main_view.jsp";
			break;
		case("/write_view.olb") :
			viewPage = "write_view.jsp";
			break;
		case("/write.olb") :
			command = new OWriteCommand();
			command.execute(request, response);
			viewPage = "main.olb";
			break;
		case("/delete.olb") :
			command = new ODeleteCommand();
			command.execute(request, response);
			viewPage = "main.olb";
			break;
			
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
		
	
	
	}
	
	
	
}
