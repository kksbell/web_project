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
		
		
		int page = 1;
		int limit = 10;
		int row = 12;
		
		if(request.getParameter("page") != null)
			page=Integer.parseInt(request.getParameter("page"));
		
		int listcount=dao.getListCount();
		System.out.println("listcount : "+listcount);
		List<IndexDTO> list= dao.getName(page,row);
		
		int maxpage = (int) ((double) listcount / row + 0.95);
		// 시작 페이지 구하는 수식 : 현재페이지 1~10 -> 1, 11~20 -> 11
		int startpage = (int) (page / ((double) limit + 0.00000001)) * limit + 1; //
		// 끝 페이지 구하는 수식 : 시작페이지 1~10 -> 10, 11 이상 -> 시작페이지+9(11+9=20)
		int endpage = maxpage;
		if (endpage > startpage + limit - 1)
			endpage = startpage + limit - 1;
		
		request.setAttribute("page",page); // 페이지 번호(화면에 보여줄 page)
		request.setAttribute("maxpage", maxpage); // 총페이지 수
		request.setAttribute("startpage", startpage);// 시작페이지
		request.setAttribute("endpage", endpage); // 끝 페이지
		request.setAttribute("listcount",listcount); // 총레코드 수
		//request.setAttribute("noticeList",noticeList); // 게시물 목록
		request.setAttribute("limit", limit); // 페이지 목록 수
		
		//키 저장
		request.setAttribute("LIST", list);
	
		//뷰 페이지로 포워딩
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("./index.jsp");
		return forward;
	}

}
