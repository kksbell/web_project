package com.member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.action.Action;
import com.controller.action.ActionForward;
import com.member.model.MemberDAO;
import com.member.model.MemberDTO;

public class MemberJoinOKAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		String id = request.getParameter("id").trim();
		String nickname = request.getParameter("nickname").trim();
		String pwd = request.getParameter("pwd").trim();
		
		// memberDTO 객체 만들기
		MemberDTO dto = new MemberDTO();
		dto.setId(id);
		dto.setNickname(nickname);
		dto.setPwd(pwd);
		
		// memberDAO를 통해 입력
		MemberDAO dao = new MemberDAO();
		dao.joinMember(dto);
		
		// viewpage 포워딩
		PrintWriter out = response.getWriter();
		out.println("<script>");
		out.println("opener.document.location.href='/main.do'");
		out.println("self.close()");
		out.println("</script>");
		return null;
	}

}
