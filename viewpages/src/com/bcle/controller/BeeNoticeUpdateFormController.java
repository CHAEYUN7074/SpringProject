package com.bcle.controller;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.bcle.DAO.IBeeNoticeDAO;
import com.bcle.DTO.BeeNotice;

public class BeeNoticeUpdateFormController implements Controller
{
	private IBeeNoticeDAO dao;
	
	public void setDao(IBeeNoticeDAO dao)
	{
		this.dao = dao;
	}
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		ModelAndView mav = new ModelAndView();
HttpSession session = request.getSession();
		// 세션 처리 과정 추가 ------------------------------------------
		/*
		 * 
		 * 
		 * if (session.getAttribute("name") == null) // -- 로그인이 되어 있지 않은 상황 {
		 * mav.setViewName("redirect:loginform.action"); return mav; } else if
		 * (session.getAttribute("admin") == null) // -- 로그인은 되었지만 관리자가 아닌 상황 {
		 * mav.setViewName("redirect:logout.action"); return mav; // -- 로그인은 되어 있지만 이 때
		 * 클라이언트는 // 일반 직원으로 로그인 되어 있는 상황이므로 // 로그아웃 액션 처리하여 다시 관리자로 로그인할 수 있도록 처리 }
		 */
		// ------------------------------------------ 세션 처리 과정 추가

		//ArrayList<BeeNotice> beenotice = new ArrayList<BeeNotice>();
		Object getCid = session.getAttribute("cid");
		String sessionCid = (String)getCid;
		
		Object getB = session.getAttribute("b");
		String b = (String)getB;
		try
		{
			// 데이터 수신(BeeNoticeArticle.jsp로부터... beeId수신)
			String beeId = request.getParameter("beeId");
			//System.out.println(beeId);
			
			BeeNotice beenotice = new BeeNotice();
			
			beenotice = dao.showBeenotion(beeId);
			
			mav.addObject("beenotice", beenotice);			
			mav.addObject("b", b);
			mav.addObject("sessionCid", sessionCid);


			mav.setViewName("BeeNoticeUpdate.jsp");
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}

		return mav;
	}

}
