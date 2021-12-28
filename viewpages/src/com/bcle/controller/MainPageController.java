/*==========================
 * MainPageController.java
 * - 사용자 정의 컨트롤러
==========================*/

package com.bcle.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.bcle.DAO.IClubDAO;
import com.bcle.DTO.Club;

public class MainPageController implements Controller
{
	private IClubDAO clubDao;
	
	public void setClubDao(IClubDAO clubDao)
	{
		this.clubDao = clubDao;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		ModelAndView mav = new ModelAndView();
		
		//-- 세션 처리에 따른 추가 구성 --------------------------------------------------------
		
		// 로그인 여부만 확인 → 관리자인지 확인할 필요 없음.
		
		HttpSession session =  request.getSession();
		
		/*
		 * if (session.getAttribute("id")==null) //-- 로그인을 하지 못한 상황 {
		 * mav.setViewName("redirect:loginpage.action"); return mav; }
		 */
		
		
		//----------------------------------------------------------  세션 처리에 따른 추가 구성 
		
		//System.out.println(String.valueOf(session.getAttribute("id")));
		
		ArrayList<Club> clubList = new ArrayList<Club>();
		/*
		 * String lowerCoatingVal1 =
		 * String.valueOf(String.valueOf(session.getAttribute("id")));
		 * if("null".equals(lowerCoatingVal1)) { System.out.println("nulltest"); } else
		 * System.out.println("널 아님");
		 */
		Object getId = session.getAttribute("id");
		String id = (String)getId;
		
		try
		{
			
			//clubList = clubDao.myList(String.valueOf(session.getAttribute("id")));
			
			// 개설 예정 동아리 제외하기
			clubList = clubDao.myList(id);
			mav.addObject("clubList", clubList);
			mav.setViewName("/WEB-INF/view/MainPage.jsp");
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		
		return mav;
	}

}
