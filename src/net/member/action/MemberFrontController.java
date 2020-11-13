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
    	System.out.println("RequestURI="+RequestURI);
    	/* /JSP */
    	System.out.println("contextPath="+contextPath);
    	/* /7Day/MemberAddAction.me */
    	System.out.println("command="+command);
    	
    	
    	
    	
    	ActionForward forward=null;
    	Action action = null;
    	
    	if(command.equals("/7Day/MemberAddAction.me")) {
    		/*회원가입과 관련된 로직과 DB연동*/
    		action = new BoardAddAction();
    		try {
    			forward=action.execute(request, response);
    		}catch(Exception e) {
    			e.printStackTrace();
    		}finally {
    			
    		}
    	}
    
    	
    	
    	
    	
    	
    	
    	if(forward != null) {
        	if(forward.isRedirect()) {
        		response.sendRedirect(forward.getPath());
        	} else {
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
