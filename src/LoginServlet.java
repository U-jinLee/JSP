import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/2Day/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("login.jsp와 LoginServlet이 연결되었음.");
		//한글깨짐방지
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		String stuNo = request.getParameter("no");
		String stuName = request.getParameter("name");
		String stuGrade = request.getParameter("grade");
		String subject = request.getParameter("choose");
		
		System.out.println("학번="+stuNo);
		System.out.println("이름="+stuName);
		System.out.println("학년="+stuGrade);
		System.out.println("과목선택="+subject);
	
		PrintWriter out= response.getWriter();
		
		out.println("<h1>"+"학번="+stuNo+"<br></h1>");
		out.println("<h1>"+"이름="+stuName+"<br></h1>");
		out.println("<h1>"+"학년="+stuGrade+"<br></h1>");
		out.println("<h1>"+"과목선택="+subject+"<br></h1>");
		
	}

}