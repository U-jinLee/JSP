package net.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.member.db.*;

public class MemberDelAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		MemberDAO mDAO = new MemberDAO();
		Memberbean mbean = new Memberbean();
		mbean.setId(request.getParameter("id"));
		mDAO.MemberDel(mbean);
		ActionForward forward = new ActionForward();
		
		
		forward.setRedirect(true);
		forward.setPath("MemberListAction.me");
		return forward;
	}

}
