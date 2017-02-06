package com.tip.action;

import java.io.File;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.action.Action;
import com.controller.action.ActionForward;
import com.oreilly.servlet.MultipartRequest;
import com.tip.model.TipBean;
import com.tip.model.TipDAO;

public class TipAddAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		// 파일 업로드 위치
		String saveFolder = "C:\\Users\\acorn\\git\\web_project\\webproject\\WebContent\\tipImage";
		// 허용 용량 지정
		int fileSize = 10*1024*1024; 
		
		// 이진파일 업로드 객체 생성
		MultipartRequest multi = new MultipartRequest(request, saveFolder, fileSize, "utf-8"); // orelly패키지 제공하는
		
		String ID = multi.getParameter("ID");
		String pno = multi.getParameter("pno");
		String location = multi.getParameter("location");
		String tip = multi.getParameter("tip");
		File sshot = multi.getFile("sshot");
		
		TipDAO dao = new TipDAO();
		int i = dao.addTip(new TipBean(ID,pno,location,tip,sshot.getName()));
		if(i<=0){
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('등록실패!');history.back();</script>");
			return null;
		}
		
		//System.out.println(ID+pno+location+tip+sshot);
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("");
		return forward;
	}

}
