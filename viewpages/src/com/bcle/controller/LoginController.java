/*==========================
	LoginController.java
	- 사용자 정의 컨트롤러
==========================*/

package com.bcle.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.bcle.DAO.IAdminDAO;
import com.bcle.DAO.IMemberInfoDAO;
import com.bcle.DTO.MemberInfo;

public class LoginController implements Controller
{
	private IMemberInfoDAO memberinfoDAO;
	private IAdminDAO adminDAO;

	// setter 구성
	public void setMemberinfoDAO(IMemberInfoDAO memberinfoDAO)
	{
		this.memberinfoDAO = memberinfoDAO;
	}

	public void setAdminDAO(IAdminDAO adminDAO)
	{
		this.adminDAO = adminDAO;
	}
	


	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		ModelAndView mav = new ModelAndView();
		
		String userId = request.getParameter("userId"); 
		String pwd = request.getParameter("pwd");
		String admin = request.getParameter("admin");
		
		
		String id = null;
		
		try
		{
			if(admin==null)
			{
				id = memberinfoDAO.login(userId,pwd);		// 일반 로그인
			}
			else
			{
				id = adminDAO.logAdmin(userId, pwd);	// 관리자 로그인
			}
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		// 로그인 수행에 따른 성공 여부 확인 및 구분 / 분기
		if(id==null)
		{
			// 로그인 실패 시 로그인페이지를 다시 요청
			mav.setViewName("redirect:loginpage.action");
		}
		else
		{
			// 로그인 성공!
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			
			// 관리자인지의 여부 확인
			if(admin==null)
			{
				//System.out.println("test");
				
				MemberInfo memberInfo = new MemberInfo();
				System.out.println(id);
				Object getId = session.getAttribute("id");
				String idStr = (String)getId;
				System.out.println(idStr);
				memberInfo = memberinfoDAO.searchId(idStr);
				System.out.println(memberInfo.getNickname());
				mav.addObject("memberInfo", memberInfo);
				//mav.addObject("test", "test1");
				mav.setViewName("redirect:mainpage.action");	// 일반사람으로 로그인 성공한 경우 메인 페이지로
			}
			else
			{
				//System.out.println("admintest");
				session.setAttribute("admin", "admin");
				mav.setViewName("redirect:memberlist.action");	// 관리자 로그인 성공한 경우 관리자 메인 페이지(MemberList.jsp)로!
			}
		}
		return mav;
	}

	

}
