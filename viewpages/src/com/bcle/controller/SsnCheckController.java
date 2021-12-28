/*===============================
   LoginCheckIdController.java
   - 사용자 정의 컨트롤러
===============================*/

package com.bcle.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.bcle.DAO.IMemberInfoDAO;

public class SsnCheckController implements Controller
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
      //System.out.println(checkSsn);
      
      // 테스트 
      /*
       * if (checkId == 0) { System.out.println("이미 존재"); } else if (checkId == 1)
       * System.out.println("사용 가능");
       */
      
      mav.addObject("checkSsn", checkSsn);
      
      mav.setViewName("/WEB-INF/view/JoinSsn_ok.jsp");
      
      
      return mav;
   }

   

}