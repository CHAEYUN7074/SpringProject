/*===============================
	FindIdConfirmController.java
	- 사용자 정의 컨트롤러
===============================*/

package com.bcle.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.bcle.DAO.IMemberInfoDAO;
import com.bcle.DTO.MemberInfo;

public class FindIdConfirmController implements Controller
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
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
				
		ArrayList<MemberInfo> checkId = new ArrayList<MemberInfo>();
		
		// 회원가입 시 닉네임과 아이디를 받아오기 위함 
		checkId = dao.findUserId(name, email);
					
		mav.addObject("checkId", checkId);
		
		mav.setViewName("/WEB-INF/view/FindIdConfirm.jsp");
		
		return mav;
	}

}
