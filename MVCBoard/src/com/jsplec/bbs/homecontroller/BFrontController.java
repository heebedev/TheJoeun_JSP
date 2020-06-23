package com.jsplec.bbs.homecontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.bbs.command.BCommand;
import com.jsplec.bbs.command.BContentCommand;
import com.jsplec.bbs.command.BDeleteCommand;
import com.jsplec.bbs.command.BListCommand;
import com.jsplec.bbs.command.BUpdateCommand;
import com.jsplec.bbs.command.BWriteCommand;

/**
 * Servlet implementation class BFrontController
 */
@WebServlet("*.do")
public class BFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("doGet()");
		actionDo(request, response);  // 가져온 파라미터 그대로 써야한다.
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("doPost()");
		actionDo(request, response);    // 겟으로 오건 포스트로 오건 actionDo로 간다. 방
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
		BCommand command = null;
		
		switch (com) {
		case("/list.do") :
			command = new BListCommand();
			command.execute(request, response);
			viewPage = "list.jsp";
			break;
		case("/write_view.do") :
			viewPage = "write_view.jsp";
			break;
		case("/write.do") :
			command = new BWriteCommand();
			command.execute(request, response);
			viewPage = "list.do";
			break;
		case("/content_view.do") :
			command = new BContentCommand();
			command.execute(request, response);;
			viewPage = "content_view.jsp";
			break;
		case("/update.do") :
			command = new BUpdateCommand();
			command.execute(request, response);;
			viewPage = "list.do";
			break;
		case("/delete.do") :
			command = new BDeleteCommand();
			command.execute(request, response);;
			viewPage = "list.do";
			break;
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
		
	}




}

