package com.pokemon.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pokemon.model.PokemonBean;
import com.pokemon.model.PokemonDAO;
import com.controller.action.Action;
import com.controller.action.ActionForward;

public class PokemonContAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		// 1. 번호 받기
		int PNO= Integer.parseInt
				(request.getParameter("PNO"));
		
		// 2. 조회
		PokemonDAO dao = new PokemonDAO();
		//dao.boardHit(PNO); // 조회수 증가
		PokemonBean dto = dao.getCont(PNO); // 상세보기
		
		// 3. key 생성
		request.setAttribute("bean", dto);
		
		// 4. view page 포워딩
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("./jsp/po.jsp");
		return forward;
		
	}

}
