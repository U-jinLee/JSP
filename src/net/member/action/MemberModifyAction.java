package net.member.action;
import net.member.db.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class MemberModifyAction implements Action {

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		MemberDAO mdao = new MemberDAO();  //update를 하기 위한 db연결 dao
		Memberbean mbean = new Memberbean(); //사용자 폼에서 입력된 데이터를 저장하기 위한 databean
		ActionForward forward = new ActionForward(); //화면 이동
		
		System.out.println("aaaaaa");
		
		request.setCharacterEncoding("UTF-8");
		//where 절에 들어갈 id; 필통에 저장시키기 위한 작업
		mbean.setId(request.getParameter("id"));
		//set 비밀번호
		mbean.setPw(request.getParameter("pw"));
		//set 이름
		mbean.setName(request.getParameter("name"));
		//set 폰번호
		mbean.setTel(request.getParameter("tel"));
		
		// 회원정보 수정을 하기 위한 membermodify 메서드 선언
		mdao.MemberModify(mbean);
		
		forward.setRedirect(true);
		forward.setPath("MemberDetailAction.me?id="+request.getParameter("id"));
//		forward.setPath("MemberListAction.me");
		return forward;
	}

}
