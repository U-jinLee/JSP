package net.member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.member.db.*;/**/

public class BoardAddAction implements Action{
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//회원가입과 관련된 논리적으로 수행해야 하는 것과 DB로 연결해야할 것이 있으면 DAO로 연결.
		//DB연동과 관련있는 객체
		MemberDAO mdao = new MemberDAO();
		//사용자가 데이터 입력후 DB로 데이터 전송(데이터 보호 목적)
		Memberbean mbean = new Memberbean();
		ActionForward forward = new ActionForward();
		
		request.setCharacterEncoding("UTF-8");
		
		/* String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		int age= Integer.parseInt(request.getParameter("age"));
		String gender = request.getParameter("gender");
		String birthDate = request.getParameter("birth");
		String tel = request.getParameter("tel"); */
		
		mbean.setId(request.getParameter("id"));
		mbean.setPw(request.getParameter("pw"));
		mbean.setName(request.getParameter("name"));
		mbean.setAge(Integer.parseInt(request.getParameter("age")));
		mbean.setGender(request.getParameter("gender"));
		mbean.setBirthDate(request.getParameter("birth"));
		mbean.setTel(request.getParameter("tel"));
		
		
		/*membertable에 insert하는 메서드*/
		mdao.memberInsert(mbean);
		
		forward.setRedirect(false);
		forward.setPath("member_list.jsp");
	
		return forward;
	}
}
