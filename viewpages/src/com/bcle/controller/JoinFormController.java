/*==========================
 * JoinFornController.java
 * - 사용자 정의 컨트롤러
==========================*/

package com.bcle.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.bcle.DAO.IJoinDAO;
import com.bcle.DTO.Category;
import com.bcle.DTO.Region;

public class JoinFormController implements Controller
{
	private IJoinDAO dao;
	
	public void setDao(IJoinDAO dao)
	{
		this.dao = dao;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		ModelAndView mav = new ModelAndView();
		
		ArrayList<Region> regionLList = new ArrayList<Region>();
		ArrayList<Category> categoryLList = new ArrayList<Category>();
		
		
	try
	{
		regionLList = dao.regionLList();
		categoryLList = dao.categoryLList();
		         
		mav.addObject("regionLList", regionLList);
		mav.addObject("categoryLList", categoryLList);
		         
		mav.setViewName("/WEB-INF/view/Join.jsp");
		         
	} catch (Exception e)
	{
		System.out.println(e.toString());
	}
		
		
		
		return mav;
	}

}
