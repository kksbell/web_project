package com.index.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.action.Action;
import com.controller.action.ActionForward;
import com.index.model.IndexDAO;
import com.index.model.IndexDTO;

public class IndexAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//dao메서드 호출
		IndexDAO dao=new IndexDAO();
		List<IndexDTO> list= dao.getName();
		
		//키 저장
		request.setAttribute("LIST", list);
	
		//뷰 페이지로 포워딩
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("./index.jsp");
		return forward;
	}

}
