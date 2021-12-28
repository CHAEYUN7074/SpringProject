/*===============================
TitleCheckController.java
- 사용자 정의 컨트롤러
===============================*/

package com.bcle.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.bcle.DAO.IClubDAO;

public class CheckTitleController implements Controller
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
   

   
   String userTitle = request.getParameter("userTitle");
   System.out.println(userTitle); //콘솔창에서 확인용
   
   int title = dao.checkTitle(userTitle);
   
   mav.addObject("title", title);
   
   mav.setViewName("/WEB-INF/view/CheckTitle.jsp"); //②이 페이지로 가~
   
   
   return mav;
}



}