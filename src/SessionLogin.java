
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/3Day/sessionLogin")
public class SessionLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public SessionLogin() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		// 한글 깨짐 방지
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		HttpSession session = request.getSession();
		
		System.out.println(id);
		System.out.println(pw);
		if(id != null && pw != null/*아이디와 패스워드를 입력한 상태*/) {
			session.setAttribute("id"/*세션영역의 'id'에 저장*/, id);
			session.setAttribute("pw"/*세션영역의 'pw'에 저장*/, pw);
		}
		
		PrintWriter out = response.getWriter();
		out.println("<h1>"+session.getAttribute("id")+"</h1>");
		out.println("<h1>"+session.getAttribute("pw")+"</h1>");
	}

}
