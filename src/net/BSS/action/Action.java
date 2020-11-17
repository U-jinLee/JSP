package net.BSS.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Action {
	public ActionForward/*리턴 타입*/ execute(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
