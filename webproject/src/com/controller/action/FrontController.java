﻿package com.controller.action;

import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServlet;
import java.util.*;

// 프론트 컨트롤러
public class FrontController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException {
		String RequestURI=request.getRequestURI();
		String contextPath=request.getContextPath();
		String command=RequestURI.substring(contextPath.length());
		ActionForward forward=null;
		Action action=null;

		Properties prop = new Properties();
		FileInputStream fis = 
	/* 다슬 : 
			new FileInputStream("C:\\NCS\\jsp\\workspace(jsp)\\MVC\\src\\com\\controller\\action\\mapping.properties");*/
	/* 은경 :*/
			new FileInputStream("C:\\Users\\acorn\\git\\web_project\\webproject\\src\\com\\controller\\action\\mapping.properties");

		//프로퍼티화일로드, 자바 경로 구분은 \\ or /
		prop.load(fis);
		fis.close();
		String value = prop.getProperty(command);
        
		if(value.substring(0,7).equals("execute")){
			try{
				StringTokenizer st = new StringTokenizer(value,"|");
				String url_1 = st.nextToken();
				String url_2 = st.nextToken();
				Class url = Class.forName(url_2);//문자열로 읽어온 클래스 파일명을 객체화 한다.
				//객체화한 클래스는 Object형이다.그러므로 강제 다운캐스팅해야 한다. 
				action  = (Action)url.newInstance();
				try {
					forward=action.execute(request, response);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}catch(ClassNotFoundException ex){
				ex.printStackTrace();
			}catch(InstantiationException ex){
				ex.printStackTrace();
			}catch(IllegalAccessException ex){
				ex.printStackTrace();
			}
		}else{  // view page
			forward=new ActionForward();
			forward.setRedirect(false);
			forward.setPath(value);
		}

		if(forward != null){
			if(forward.isRedirect()){ // true
				response.sendRedirect(forward.getPath());
			}else{ // false
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}
	} 	    
}
