package net.member.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.member.db.MemberDAO;
import net.member.db.Memberbean;

public class MemberListAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		MemberDAO mdao = new MemberDAO();
		ArrayList<Memberbean> list = new ArrayList();
		ActionForward forward = new ActionForward();
		
		request.setCharacterEncoding("UTF-8");
		list = mdao.memberList();
		request.setAttribute("memberlist", list);
		
		forward.setRedirect(false);
		forward.setPath("member_list.jsp");
	
		return forward;
	}

}
