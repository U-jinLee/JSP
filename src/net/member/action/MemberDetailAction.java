package net.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.member.db.*;

public class MemberDetailAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception{		
		MemberDAO mdao = new MemberDAO();
		Memberbean mbean = new Memberbean();
		ActionForward forward = new ActionForward();
		
		request.setCharacterEncoding("UTF-8");
		mbean.setId(request.getParameter("id"));
		
		mdao.MemberDetail(mbean);
		
		forward.setRedirect(false);
		forward.setPath();
		return null;
	}
}
