package com.bcle.controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.bcle.DAO.IBeeNoticeDAO;
import com.bcle.DTO.BeeNotice;

public class BeeNoticeInsertController implements Controller
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
		String clubmemId = request.getParameter("clubmemId");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		// 세션값으로 아이디를 받아오는데 
		// 지금은 걍 회원 번호를 직접 넣을 것임.
		String cid = request.getParameter("cid");
		Object getCid = session.getAttribute("cid");
		String sessionCid = (String)getCid;
		
		Object getB = session.getAttribute("b");
		String b = (String)getB;
		
		try
		{
			BeeNotice beenotice = new BeeNotice();
			
			//beeNotice.setClubmemId(clubmemId);
			beenotice.setClubmemId("CM1");
			beenotice.setTitle(title);
			beenotice.setContent(content);

			//bee.setClubmemId(clubmemId); // 나중에는 세션에서 받아가지고 함수 써서 쇼로록 넣기
			
			
			dao.add(beenotice);
			
			mav.addObject("cid", cid);
			mav.addObject("b", b);
			mav.addObject("sessionCid", sessionCid);
			
			mav.setViewName("redirect:beenoticelist.action?cid="+ sessionCid +"&b=b");
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}

		return mav;
	}

}
