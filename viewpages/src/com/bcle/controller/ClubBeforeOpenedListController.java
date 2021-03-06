package com.bcle.controller;


import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.bcle.DAO.IClubDAO;
import com.bcle.DTO.Category;
import com.bcle.DTO.Club;
import com.bcle.DTO.Region;
import com.webjjang.util.PageObject;

public class ClubBeforeOpenedListController implements Controller
{
   //주요 속성 구성
   // → 인터페이스 형태의 자료형을 속성으로 구성
   private IClubDAO dao;

   // setter 구성
   public void setDao(IClubDAO dao)
   {
      this.dao = dao;
   }
   
   @Override
   public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
   {
      ModelAndView mav = new ModelAndView();

      // 세션 처리 과정 추가 필요 
      // 세션 처리 과정 추가 ------------------------------------------
   		/*
   		 * HttpSession session = request.getSession();
   		 * 
   		 * if (session.getAttribute("name") == null) // -- 로그인이 되어 있지 않은 상황 {
   		 * mav.setViewName("redirect:loginform.action"); return mav; } else if
   		 * (session.getAttribute("admin") == null) // -- 로그인은 되었지만 관리자가 아닌 상황 {
	 * 클라이언트는 // 일반 직원으로 로그인 되어 있는 상황이므로 // 로그아웃 액션 처리하여 다시 관리자로 로그인할 수 있도록 처리 }
   		   		 * mav.setViewName("redirect:logout.action"); return mav; // -- 로그인은 되어 있지만 이 때
   	 */
   		// ------------------------------------------ 세션 처리 과정 추가
   		
      ArrayList<Region> regionLList = new ArrayList<Region>(); 
	  ArrayList<Category> categoryLList = new ArrayList<Category>();
      ArrayList<Club> preopenList = new ArrayList<Club>();
  
      
      //○-- 검색을 위해서 추가 (데이터 수신)
      String category_l_id = request.getParameter("category_L_Id");
      String category_s_id = request.getParameter("category_S_Id");
      String region_l_id = request.getParameter("region_L_Id");
      String region_s_id = request.getParameter("region_S_Id");
      String order =request.getParameter("order");
      String searchValue = request.getParameter("searchValue");
      
      String orderKey = "";
      String searchKey = "";
      StringBuffer sb = new StringBuffer();
    
      //○-- serchValue 처리 (검색 값 = 동아리명)
      if(searchValue == null)
    	  searchValue = "";
      
      if(order == null)
    	  order = "1";
      
      //○-- order  처리(정렬기준)
      if(order == null || Integer.parseInt(order) == 1) // 기본적인 페이지 요청이 이루어졌을 경우 
    	  orderKey = "PREOPENDATE DESC";   
      else
    	  orderKey = "PREOPENDATE"; //등록일순
      
      
      //○-- SearchKey 처리 
    //검색을 통해 페이지요청 한 경우 - 카테고리 대분류 선택한 경우 
	  if(category_l_id!="" && category_l_id!=null)  
	  {
		  System.out.println("카테고리 선택 확인");
		  
		  if(category_s_id!="" && category_s_id!=null)//소분류도 선택한경우면
			  sb.append("AND CATEGORY_S_ID = "+category_s_id);
		  else //대분류만 선택한 경우
			  sb.append("AND CATEGORY_L_ID = "+category_l_id);
	  }
	  //지역 대분류 선택한 경우
	  if(region_l_id!="" && region_l_id!=null)  
	  {
		  System.out.println("지역 선택 확인");
		  
		  if(region_s_id!="" && region_s_id!=null)//군/구 선택한경우면
			  sb.append(" AND REGION_S_ID = " + region_s_id);
		  else //시만 선택한 경우
			  sb.append(" AND REGION_L_ID = "+region_l_id);
	  }
	  
	  searchKey = sb.toString();
	  
	  System.out.println(searchKey); //확인
	  
      try
      {
    	  //페이징 처리 위해 추가 ----------------------------------------------------------------
    	 int page =1; //현재 페이지를 표시해주기 위한 변수 
    	 // 현재 페이지 디폴트는 1임! (처음에 보여질 페이지는 1페이지이니까!)
	
		 if(request.getParameter("page")!=null) //페이지 값이 넘어오면 page =
			 page = Integer.parseInt(request.getParameter("page")); //그 값을 page에 대입
		 
		 PageObject pageObject = new PageObject(page,12); //한 페이지에 9개씩 보여줄거야
		  
		 System.out.println(pageObject.getPerPageNum());
		 
    	 long count = dao.preCount(searchKey, searchValue); //게시글의 갯수 
    	 System.out.println(count); //--확인
    	 pageObject.setTotalRow(count); 
    	 //------------------------------------------------------------------- 추가  페이징 처리
    	 
         preopenList = dao.preopenList(pageObject, searchKey, searchValue, orderKey);
         regionLList = dao.regionLList();
		 categoryLList = dao.categoryLList();
		 
		mav.addObject("regionLList", regionLList);
		mav.addObject("categoryLList", categoryLList);	
        mav.addObject("preopenList", preopenList);
        mav.addObject("pageObject",pageObject);
        //○-- 검색한거 남아있게끔 처리하기 위해
        //mav.addObject("listUrl",listUrl);
    
        //페이지 정보를 request에 담아서 JSP에 전달 
        //request.setAttribute("pageObject", pageObject);

         mav.setViewName("/WEB-INF/view/ClubBeforeOpenedList.jsp");
         
      } catch (Exception e)
      {
         System.out.println(e.toString());
      }

      return mav;
   }

}