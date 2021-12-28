/*===============================
	FindPasswordConfirmController.java
	- 사용자 정의 컨트롤러
===============================*/

package com.bcle.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.bcle.DAO.IMemberInfoDAO;

public class FindPasswordConfirmController implements Controller
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
		
		String userId = request.getParameter("userId");
		String email = request.getParameter("email");
				
		
		// 회원가입 시 닉네임과 아이디를 받아오기 위함 
		String checkPassword = dao.findPwd(userId, email);
					
		mav.addObject("checkPassword", checkPassword);
		
		mav.setViewName("/WEB-INF/view/FindPasswordConfirm.jsp");
		
		return mav;
	}

}
