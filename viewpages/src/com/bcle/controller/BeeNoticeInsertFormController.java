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


public class BeeNoticeInsertFormController implements Controller
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
		
		// 세션 처리과정 추가 ----------------------------------------------------------------
		HttpSession session = request.getSession();
		/*
		if (session.getAttribute("name")==null)
		{
			mav.setViewName("redirect:loginform.action");
			return mav;
		}
		else if (session.getAttribute("admin")==null)
		{
			mav.setViewName("redirect:logout.action");
			return mav;
		}
		
		// ---------------------------------------------------------------- 세션 처리과정 추가
		*/
		
		ArrayList<BeeNotice> beenoticeList = new ArrayList<BeeNotice>();
				
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
			
			mav.addObject("b", b);
			mav.addObject("sessionCid", sessionCid);
			
			mav.setViewName("BeeNoticeInsertForm.jsp");
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		
		return mav;
	}

}
