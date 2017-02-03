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
			String checked_id = dto.getId();
			String nickname = dto.getNickname();
			String checked_pwd = dto.getPwd();
			String regdate = dto.getRegdate();
			
			// 사용자의 세션 객체 생성
			session.setAttribute("id", checked_id);
			session.setAttribute("name", checked_pwd);
			session.setAttribute("nickname", nickname);
			session.setAttribute("regdate", regdate);
			
			// viewpage 포워딩
			ActionForward forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath("./index.do");
			return forward;
		}else if(re==0){ // 비번 틀림
			out.println("<script>");
			out.println("alert('비밀번호가 틀렸습니다.')");
			out.println("history.back()");
			out.println("</script>");			
		}else if(re==-1){// id 없음
			out.println("<script>");
			out.println("alert('등록되지 않은 아이디입니다.')");
			out.println("history.back()");
			out.println("</script>");
		}		
		
		return null;
	}
}
