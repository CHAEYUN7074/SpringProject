package com.bcle.controller;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.bcle.DAO.IClubDAO;

public class MemberSelectController implements Controller
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

      // cid 수신
      String cid = request.getParameter("cid");
      // 라디오버튼 선택값 수신
      String mid = request.getParameter("selectRadio"); //라디오버튼의 value값 = mid
      
      try
      {
         dao.choiceMember(cid, mid);
         
         mav.setViewName("redirect:preopenclubdetail.action?cid="+cid);

      } catch (Exception e)
      {
         System.out.println(e.toString());
      }

      return mav;
   }

}