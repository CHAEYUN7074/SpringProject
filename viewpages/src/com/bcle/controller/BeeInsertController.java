package com.bcle.controller;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.bcle.DAO.IBeeDAO;
import com.bcle.DTO.Bee;

public class BeeInsertController implements Controller
{
	//주요 속성 구성
	// → 인터페이스 형태의 자료형을 속성으로 구성
	private IBeeDAO dao;

	// setter 구성
	public void setDao(IBeeDAO dao)
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
		 * 
		 * 
		 * if (session.getAttribute("name") == null) // -- 로그인이 되어 있지 않은 상황 {
		 * mav.setViewName("redirect:loginform.action"); return mav; } else if
		 * (session.getAttribute("admin") == null) // -- 로그인은 되었지만 관리자가 아닌 상황 {
		 * mav.setViewName("redirect:logout.action"); return mav; // -- 로그인은 되어 있지만 이 때
		 * 클라이언트는 // 일반 직원으로 로그인 되어 있는 상황이므로 // 로그아웃 액션 처리하여 다시 관리자로 로그인할 수 있도록 처리 }
		 */
		// ------------------------------------------ 세션 처리 과정 추가
		
		String typeId = request.getParameter("typeId");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String fee = request.getParameter("fee");
		String beeTime1 = request.getParameter("beeTime1");
		String beeTime2 = request.getParameter("beeTime2");
		String location = request.getParameter("location");
		String min = request.getParameter("min");
		String max = request.getParameter("max");
		
		// 세션값으로 아이디를 받아오는데 
		// 동아리회원목록코드로 변환해주는 메소드를 정의해야 되겠다??
		// 지금은 걍 회원 번호를 직접 넣을 것임.
		
		// 정모 열린 날에는 반짝모임 열지 못하도록 해야 함.
		// 그러면 자바파일 만들어서 거기서 메소드를 만들던지 아니면
		// 여기서 검사하게 만들던지 어쨌든 등록 실패하면 
		// 실패한 페이지가 또 있어야 하는 거야? 홀리몰리...
		// 그냥 그 제약 다 없애버릴까.......
		// 그리고 정모가 이미 있는 날에 또 정모를 연다고 하면 이상한 거 아냐???
		// 아닌가 그냥 두 번 만나고 싶을 수 있잖아 
		// 오전 오후 그치???
		String cid = request.getParameter("cid");
		Object getId = session.getAttribute("id");
		String id = (String)getId;
		System.out.println(id);
		try
		{
			Bee bee = new Bee();
			
			bee.setTypeId(typeId);
			bee.setTitle(title);
			bee.setContent(content);
			bee.setFee(Integer.parseInt(fee));
			bee.setBeeTime(beeTime1 + " " + beeTime2 + ":00");
			bee.setLocation(location);
			bee.setMin(Integer.parseInt(min));
			bee.setMax(Integer.parseInt(max));
			
			//bee.setClubmemId(clubmemId); // 나중에는 세션에서 받아가지고 함수 써서 쇼로록 넣기
			bee.setClubmemId(dao.searchClubmemId(id, cid));
			// 함수 만들기, ID랑 CID(동아리코드) 일치하는 사람의 CLUBMEM_ID 얻어서
			
			//System.out.println("BeeInsertController cid 확인 :" + cid);
			
			dao.add(bee);
			/*
			 * dao.add(bee)
			 * 
			 * beeList = dao.list();
			 * 
			 * mav.addObject("beeList", beeList);
			 */
			mav.setViewName("redirect:clubmain.action?cid="+cid);
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}

		return mav;
	}

}
