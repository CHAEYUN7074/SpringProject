package com.bcle.controller;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.bcle.DAO.IBeeNoticeDAO;
import com.bcle.DTO.BeeNotice;

public class BeeNoticeArticleController implements Controller
{
	private IBeeNoticeDAO dao;
	
	public void setDao(IBeeNoticeDAO dao)
	{
		this.dao = dao;
	}
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		// 세션 처리 과정 추가 ------------------------------------------
		/*
		 * HttpSession session = request.getSession();
		 * 
		 * if (session.getAttribute("name") == null) // -- 로그인이 되어 있지 않은 상황 {
		 * mav.setViewName("redirect:loginform.action"); return mav; } else if
		 * (session.getAttribute("admin") == null) // -- 로그인은 되었지만 관리자가 아닌 상황 {
		 * mav.setViewName("redirect:logout.action"); return mav; // -- 로그인은 되어 있지만 이 때
		 * 클라이언트는 // 일반 직원으로 로그인 되어 있는 상황이므로 // 로그아웃 액션 처리하여 다시 관리자로 로그인할 수 있도록 처리 }
		 */
		// ------------------------------------------ 세션 처리 과정 추가
		String cid = request.getParameter("cid");
		
		BeeNotice beenotice = new BeeNotice();
		
		String beeId = request.getParameter("beeId");
		
		// 조회수
		String cnt = request.getParameter("cnt");
		
		Object getCid = session.getAttribute("cid");
		String sessionCid = (String)getCid;
		
		Object getB = session.getAttribute("b");
		String b = (String)getB;
		try
		{ 	
			// 이전글 다음글
			int beforeNum = dao.getBeforeNum(beeId);
			//System.out.println(beforeNum.getClass().getName());
			String beforeNumStr = String.valueOf(beforeNum);
			//System.out.println(beforeNumStr.getClass().getName());
			//System.out.println(beeId);
			int nextNum = dao.getNextNum(beeId);
			//System.out.println(nextNum);
			String nextNumStr = String.valueOf(nextNum);
			
			BeeNotice dtoBefore = new BeeNotice();
			BeeNotice dtoNext = new BeeNotice();
			
			dtoBefore =null;
			dtoNext =null;
			
			
			
			//조회수 증가
			dao.updateCnt(beeId);
			
			// 이게 위코드 밑으로와야 누르자마자 조회수 적용됨
			beenotice = dao.showBeenotion(beeId);
			
			
			
			
			if (beforeNum != -1)
			{
				// 형변환 어케?? ㅎ
				dtoBefore = dao.showBeenotion(beforeNumStr);
				//dtoBefore = dao.showBeenotion(Integer.toString(beforeNum));
				//System.out.println("숫자는 출력 잘되나?"+beforeNum); //-> 잘됨
				//System.out.println(dtoBefore.getBeeId()+"  =====이전번 호출력~!");
				//--> 이거 안됨 ~~!~!~ 형식 이상하게나옴 ㅠ
				mav.addObject("dtoBefore", dtoBefore);
				//System.out.println(dtoBefore.getBeeId());
				//System.out.println(dtoBefore.getTitle());
				//System.out.println(dtoBefore.getContent());
				//System.out.println("test");
			}
			else
				mav.addObject("endBefore", "end");
			
			if (nextNum != -1)
			{
				dtoNext = dao.showBeenotion(nextNumStr);
				//System.out.println("다음 숫자는 출력 잘되나??? == "+nextNum); //--> 잘됨
				//System.out.println(dtoNext.getBeeId()+" ==== 다음 번호출력~!");
				mav.addObject("dtoNext", dtoNext);
				System.out.println(dtoNext.getBeeId());
			}
			else
			{
				mav.addObject("endNext", "end");
				//System.out.println("TEST");
			}
			
			mav.addObject("beenotice", beenotice);
			
			// 이전글 다음글 추가
			//mav.addObject("dtoBefore", dtoBefore);
			//mav.addObject("dtoBefore", dtoNext);
			//mav.addObject("beforeNum", beforeNum);
			//mav.addObject("nextNum", nextNum);		
			mav.addObject("cid", cid);
			mav.addObject("b", b);
			mav.addObject("sessionCid", sessionCid);
			
			mav.setViewName("/WEB-INF/view/BeeNoticeArticle.jsp");
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}

		return mav;
	}

}
