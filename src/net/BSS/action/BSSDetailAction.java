package net.BSS.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.BSS.db.*;
import net.member.action.Action;
import net.member.action.ActionForward;

public class BSSDetailAction implements Action {

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		BSSbean bbean = new BSSbean();
		BSSDAO bdao = new BSSDAO();
		ActionForward forward = new ActionForward();
		
		request.setCharacterEncoding("UTF-8");
		bbean.setC_num(Integer.parseInt(request.getParameter("c_num")));
		BSSbean detail=bdao.BSSDetail(bbean);
		request.setAttribute("BSSDetail", detail);
		forward.setRedirect(false);
		forward.setPath("BSSDetail.jsp");
		return forward;
	}

}
