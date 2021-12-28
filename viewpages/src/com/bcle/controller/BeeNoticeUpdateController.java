package com.bcle.controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.bcle.DAO.IBeeNoticeDAO;
import com.bcle.DTO.BeeNotice;

public class BeeNoticeUpdateController implements Controller
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

		// 세션 처리 과정 추가 ------------------------------------------
		
		 HttpSession session = request.getSession();
		 /* 
		 * if (session.getAttribute("name") == null) // -- 로그인이 되어 있지 않은 상황 {
		 * mav.setViewName("redirect:loginform.action"); return mav; } else if
		 * (session.getAttribute("admin") == null) // -- 로그인은 되었지만 관리자가 아닌 상황 {
		 * mav.setViewName("redirect:logout.action"); return mav; // -- 로그인은 되어 있지만 이 때
		 * 클라이언트는 // 일반 직원으로 로그인 되어 있는 상황이므로 // 로그아웃 액션 처리하여 다시 관리자로 로그인할 수 있도록 처리 }
		 */
		// ------------------------------------------ 세션 처리 과정 추가
		
		//String beeId = request.getParameter("beeId");
		String beeId = request.getParameter("beeId");
		String title = request.getParameter("title");
		String content = request.getParameter("content");	
		
		Object getCid = session.getAttribute("cid");
		String sessionCid = (String)getCid;
		
		Object getB = session.getAttribute("b");
		String b = (String)getB;
				
		try
		{
			BeeNotice beenotice = new BeeNotice();
			
			//beenotice.setBeeId(beeId);
			beenotice.setTitle(title);
			beenotice.setContent(content);
			beenotice.setBeeId(beeId);
			
			// 수정하면... 글쓴시간이 변경되어야하나?
			// 근데.. 그러면 정렬 꼬임..(정렬을 등록시간순으로함)
						
			//bee.setClubmemId(clubmemId); // 나중에는 세션에서 받아가지고 함수 써서 쇼로록 넣기
			//bee.setClubmemId("CM1");
			mav.addObject("b", b);
			mav.addObject("sessionCid", sessionCid);

			dao.modify(beenotice);
			
			mav.setViewName("redirect:beenoticelist.action?cid="+ sessionCid +"&b=b");
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}

		return mav;
	}

}
