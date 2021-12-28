/*===============================
	LoginCheckNickNameController.java
	- 사용자 정의 컨트롤러
===============================*/

package com.bcle.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.bcle.DAO.IMemberInfoDAO;

public class LoginCheckNickNameController implements Controller
{
	private IMemberInfoDAO dao;

	public void setDao(IMemberInfoDAO dao)
	{
		this.dao = dao;
	}


	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		ModelAndView mav = new ModelAndView();
		
		//-- 세션 처리에 따른 추가 구성 --------------------------------------------------------
		
		// 로그인 여부만 확인 → 관리자인지 확인할 필요 없음.
		
		/*
		 * HttpSession session = request.getSession();
		 * 
		 * if (session.getAttribute("id")==null) //-- 로그인을 하지 못한 상황 {
		 * mav.setViewName("redirect:loginpage.action"); return mav; }
		 */
		
		
		//----------------------------------------------------------  세션 처리에 따른 추가 구성 
		
		String nickname = request.getParameter("nickname");
		System.out.println(nickname);
		
		int checkNickName = dao.checkNickName(nickname);
		
		// 테스트 
		/*
		 * if (checkId == 0) { System.out.println("이미 존재"); } else if (checkId == 1)
		 * System.out.println("사용 가능");
		 */
		
		mav.addObject("checkNickName", checkNickName);
		
		mav.setViewName("/WEB-INF/view/Join_ok2.jsp");
		
		
		return mav;
	}

	

}