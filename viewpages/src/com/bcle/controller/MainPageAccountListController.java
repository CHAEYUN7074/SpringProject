/*==========================
 * SampleController.java
 * - �궗�슜�옄 �젙�쓽 而⑦듃濡ㅻ윭
==========================*/

package com.bcle.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.bcle.DAO.ISummaryDAO;
import com.bcle.DTO.Summary;

public class MainPageAccountListController implements Controller
{
	
	private ISummaryDAO dao;
	

	public void setDao(ISummaryDAO dao)
	{
		this.dao = dao;
	}


	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		ModelAndView mav = new ModelAndView();
		
		int beecnt = 0;
		int newclubcnt = 0;
		int newbiecnt = 0;
		int totclubcnt = 0;
		int pertimememcnt = 0;
		ArrayList<Summary> summaryList = new ArrayList<Summary>();
		ArrayList<Summary> psummaryList = new ArrayList<Summary>();
		
		try
		{
			
			newbiecnt = dao.calcNewbie();
			psummaryList = dao.p_list();
			summaryList = dao.list();
			beecnt = dao.calcBee();
			newclubcnt = dao.calcNewClub();
			
			System.out.println(newbiecnt);
			
			totclubcnt = dao.calcTotClub();
			
			mav.addObject("totclubcnt", totclubcnt);
			mav.addObject("newbiecnt", newbiecnt);
			mav.addObject("newclubcnt", newclubcnt);
			mav.addObject("beecnt",beecnt);
			mav.addObject("pertimememcnt",pertimememcnt);
			mav.addObject("summaryList", summaryList);
			mav.addObject("psummaryList", psummaryList);
			
			
			mav.setViewName("/WEB-INF/view/MainAccount.jsp");
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		
		return mav;
	}
	
	
	
	
}

