package com.bcle.controller;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.bcle.DAO.IBeeNoticeDAO;
import com.bcle.DTO.BeeNotice;
import com.webjjang.util.PageObject;

public class BeeNoticeListController implements Controller
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
		 * if (session.getAttribute("name") == null) // -- 로그인이 되어 있지 않은 상황 {
		 * mav.setViewName("redirect:loginform.action"); return mav; } else if
		 * (session.getAttribute("admin") == null) // -- 로그인은 되었지만 관리자가 아닌 상황 {
		 * mav.setViewName("redirect:logout.action"); return mav; // -- 로그인은 되어 있지만 이 때
		 * 클라이언트는 // 일반 직원으로 로그인 되어 있는 상황이므로 // 로그아웃 액션 처리하여 다시 관리자로 로그인할 수 있도록 처리 }
		 */
		// ------------------------------------------ 세션 처리 과정 추가

		ArrayList<BeeNotice> beenoticeList = new ArrayList<BeeNotice>();
		
		String cid = request.getParameter("cid");
		//String b = request.getParameter("b");
		//System.out.println("공지사항 리스트페이징 테스트(cid - b): "+ cid + " - " + b );

		Object getCid = session.getAttribute("cid");
		String sessionCid = (String)getCid;
		
		Object getB = session.getAttribute("b");
		String b = (String)getB;
		
		try
		{
			//페이징 처리 위해 추가 ------
	        int page = 1; //현재 페이지를 표시해주기 위한 변수 
	        // 현재 페이지 디폴트는 1임! (처음에 보여질 페이지는 1페이지이니까!)
	        
	        if(request.getParameter("page")!=null) //페이지 값이 넘어오면 
	           page = Integer.parseInt(request.getParameter("page")); //그 값을 page에 대입
	        
	        PageObject pageObject = new PageObject(page,10); //한 페이지에 10개씩 보여줄거야
	       
	        //System.out.println(pageObject.getPerPageNum()); --확인 
	        
	        long count = dao.pageCount(); //게시글의 갯수 
	        //System.out.println(count); --확인
	        pageObject.setTotalRow(count); 
	        //------- 추가  페이징 처리
			
			
			
			beenoticeList = dao.list(pageObject);

			mav.addObject("beenoticeList", beenoticeList);
			mav.addObject("pageObject", pageObject); // 페이징 처리한거..
			mav.addObject("cid", cid);
			mav.addObject("b", b);
			mav.addObject("sessionCid", sessionCid);
			//mav.addObject("sessionB", sessionB);

			session.setAttribute("cid", cid);
			session.setAttribute("b", b);
			mav.setViewName("/WEB-INF/view/BeeNoticeList.jsp");
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}

		return mav;
	}

}
