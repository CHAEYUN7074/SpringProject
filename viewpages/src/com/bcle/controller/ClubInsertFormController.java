package com.bcle.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.bcle.DAO.IClubDAO;
import com.bcle.DTO.Category;
import com.bcle.DTO.Region;

public class ClubInsertFormController implements Controller
{
	private IClubDAO dao;
	
	public void setDao(IClubDAO dao)
	{
		this.dao = dao;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		ModelAndView mav = new ModelAndView();
		
		//세션처리
			
		HttpSession session = request.getSession();
		if (session.getAttribute("id")==null) //-- 로그인이 되어 있지 않은 상황 
			{
		mav.setViewName("redirect:loginpage.action"); 
		return mav; }
		
		//세션값 id 수신
		String id = (String)session.getAttribute("id");
		System.out.println(id);	
		// ------------------------------------------------------------------------------ 세션 처리 과정 추가 
		
		ArrayList<Region> regionLList = new ArrayList<Region>(); 
		ArrayList<Category> categoryLList = new ArrayList<Category>();
		
		try
		{
			regionLList = dao.regionLList();
			categoryLList = dao.categoryLList();
			
			mav.addObject("regionLList", regionLList);
			mav.addObject("categoryLList", categoryLList);
			
			mav.setViewName("/WEB-INF/view/ClubCreate.jsp");
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
	
		
		return mav;
	}

}