package net.BSS.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.BSS.db.BSSDAO;
import net.BSS.db.BSSbean;
import net.member.action.Action;
import net.member.action.ActionForward;

public class BSSAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		BSSDAO bdao = new BSSDAO();
		ArrayList<BSSbean> list = new ArrayList();
		ActionForward forward = new ActionForward();
		
		request.setCharacterEncoding("UTF-8");
		list = bdao.BSS();
		request.setAttribute("BSSlist", list);
		
		forward.setRedirect(false);
		forward.setPath("BSS.jsp");
		
		return forward;
	}

}
