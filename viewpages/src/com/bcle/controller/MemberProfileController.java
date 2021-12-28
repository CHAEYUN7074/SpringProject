package com.bcle.controller;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.bcle.DAO.IClubDAO;
import com.bcle.DTO.Club;
import com.bcle.DTO.MemberInfo;

public class MemberProfileController implements Controller
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

		// 세션처리 -----------------------------------------

		HttpSession session = request.getSession();
		if (session.getAttribute("id") == null) // -- 로그인이 되어 있지 않은 상황
		{
			mav.setViewName("redirect:loginpage.action");
			return mav;
		}
		// ------------------------------------------------- 세션 처리
		
		ArrayList<Club> clubList = new ArrayList<Club>();
		MemberInfo member = new MemberInfo();
		
		// mid 수신
		String mid = request.getParameter("mid");
		
		try
		{
			member = dao.memberProfile(mid); //회원의 기본정보
			clubList =dao.memberClubList(mid); //회원의 개설 동아리 
			
			mav.addObject("member", member);
			mav.addObject("clubList", clubList);
			
			mav.setViewName("/WEB-INF/view/MemberProfile.jsp");

		} catch (Exception e)
		{
			System.out.println(e.toString());
		}

		return mav;
	}

}