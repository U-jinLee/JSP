package net.member.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;


public class MemberFrontController extends HttpServlet implements javax.servlet.Servlet {
    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String RequestURI=request.getRequestURI();
    	String contextPath=request.getContextPath();
    	String command=RequestURI.substring(contextPath.length());
    	/* /JSP/7Day/MemberAddAction.me */
    		//System.out.println("RequestURI="+RequestURI);
    	/* /JSP */
    		//System.out.println("contextPath="+contextPath);
    	/* /7Day/MemberAddAction.me */
    		//System.out.println("command="+command);
    	
    	
    	
    	
    	ActionForward forward=null;
    	Action action = null;
    	
    	if(command.equals("/7Day/MemberAddAction.me")) {
    		/*회원가입과 관련된 로직과 DB연동*/
    		action = new BoardAddAction();
    		try {
    			forward=action.execute(request, response);
    		}catch(Exception e) {
    			e.printStackTrace();
    		} 
    	} else if(command.equals("/7Day/MemberListAction.me")) {
    		action = new MemberListAction();
    		try {
    			forward=action.execute(request, response);
    		}catch(Exception e) {
    			e.printStackTrace();
    		}
    	}
    
    	
    	
    	
    	
    	
    	//JSP 환경에서 현재 작업중인 페이지에서 다른 페이지로 이동하는 두가지 방식
    	if(forward != null) {
        	if(forward.isRedirect()) {
        		// 1. redirect: 새로운 페이지에서는 request, response객체가 새롭게 생성된다.
        		response.sendRedirect(forward.getPath());
        	} else {
        		// 1. dispatcher(forward): 현재 실행중인 페이지와 forward에 의해 호출될 페이지는 request, response 객체를 공유
        		RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
        		dispatcher.forward(request, response);
        	}
        }
    	
    }   
	
    
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request,response);
	}

}
