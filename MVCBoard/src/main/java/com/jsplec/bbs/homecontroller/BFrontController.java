
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
import com.jsplec.bbs.command.BEditCommand;
import com.jsplec.bbs.command.BListCommand;
import com.jsplec.bbs.command.BWriteCommand;

/**
 * Servlet implementation class BFrontController
 */
@WebServlet("*.do") // ---(매핑)---어떤 것이든 *.do로 받아와 실행
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
		// TODO Auto-generated method stub
		System.out.println("doGet()");
		actionDo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doPost()");
		actionDo(request, response);
	}

	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("actionDo()");
		
		request.setCharacterEncoding("utf-8"); // 한글 표기되도록 설정
		
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String com = uri.substring(conPath.length());
		
		String viewPage = null;
		BCommand command = null;
		
//		System.out.println(uri); // '/MVCBoard/start.do'가 출력됨, 주소를 뺀 나머지가 출력됨
//		System.out.println(conPath);// '/MVCBoard' 출력됨, 프로젝트 이름만을 출력
//		System.out.println(com); // '/start.do' 출력됨,
		
		
		switch(com) {
		case("/list.do"):
			command = new BListCommand(); // BCommand 대신 BListCommand 사용가능
			command.execute(request, response); // BDao 실행
			viewPage = "list.jsp"; // 화면 출력
			break;
		case("/write_view.do"):
			viewPage = "write_view.jsp"; // 화면 출력
			break;
		case("/write.do"):
			command = new BWriteCommand();
			command.execute(request, response);
			viewPage = "list.do"; // case "/list.do" 실행
			break;
		case("/content_view.do"):
			command = new BContentCommand();
			command.execute(request, response);
			viewPage = "content_view.jsp";
			break;
		case("/delete.do"):
			command = new BDeleteCommand();
			command.execute(request, response);
			viewPage = "list.do"; // case "/list.do" 실행
			break;
		case("/edit.do"):
			command = new BEditCommand();
			command.execute(request, response);
			viewPage = "list.do"; // case "/list.do" 실행
			
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage); // viewPage의 내용을 출력함
		dispatcher.forward(request, response);
		
	}

	
	
	
	
	
}