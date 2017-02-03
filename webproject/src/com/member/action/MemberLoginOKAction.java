package com.member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.action.Action;
import com.controller.action.ActionForward;
import com.member.model.MemberDAO;
import com.member.model.MemberDTO;

public class MemberLoginOKAction implements Action{
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		// 세션 객체 생성
		HttpSession session = request.getSession();
		String id = request.getParameter("id").trim();
		String pwd = request.getParameter("pwd").trim();
		
		// DAO method를 통해 조회
		MemberDAO dao = new MemberDAO();
		int re = dao.loginCheck(id, pwd);
		if(re==1){
			MemberDTO dto = dao.getMember(id);
		}
		
		return null;
	}
}
