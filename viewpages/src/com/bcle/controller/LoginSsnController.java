/*===============================
   LoginSsnController.java
   -  주민번호
===============================*/

package com.bcle.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.bcle.DAO.IMemberInfoDAO;

public class LoginSsnController implements Controller
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
      
      
      
      String ssn = request.getParameter("ssn");
      
      int checkSsn = dao.CheckSsn(ssn);

      mav.addObject("checkSsn", checkSsn);
      
      mav.setViewName("/WEB-INF/view/JoinSsn_ok.jsp");
      
      //System.out.println("test");
      
      return mav;
   }

   

}