/*====================================
 * MemberListController.java
 * - 관리자 페이지 연결 컨트롤러
====================================*/

package com.bcle.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class MainFreeBoardListController implements Controller
{
	/*
	 * private IAdminDAO adminDAO;
	 * 
	 * public void setAdminDAO(IAdminDAO adminDAO) { this.adminDAO = adminDAO; }
	 */


	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		ModelAndView mav = new ModelAndView();
		
		//-- 세션 처리에 따른 추가 구성 --------------------------------------------------------
		
		// 로그인 여부만 확인 → 관리자인지 확인할 필요 없음.
		
		HttpSession session =  request.getSession();
		
		/*
		 * if (session.getAttribute("name")==null) //-- 로그인을 하지 못한 상황 {
		 * mav.setViewName("redirect:loginpage.action"); return mav; } // 로그인 화면으로 돌아감
		 * 로그인은 했는데 관리자는 아니다 메인으로 넘긴다거나
		 * else if (session.getAttribute("admin")==null)
		 * 
		 * 여기 나중에 수정해야 함. 넘겨받는 이름이 name 도 아니고, 로그인을 했다고 하더라도 관리자인지 일반 회원인지 구분해야 함.
		 */
		//----------------------------------------------------------  세션 처리에 따른 추가 구성 
		
		

		
		// 관리자로 판명
		
		// 공지사항 데이터 넘기기
		
		try
		{
			mav.setViewName("/WEB-INF/view/BoardFreeBulletinList.jsp");
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		
		return mav;
	}

}
