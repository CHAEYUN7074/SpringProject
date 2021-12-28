/* ==============================
 * AjaxJoinCategoryController.java
 * - 사용자 정의 컨트롤러 
 * ==============================*/
package com.bcle.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.bcle.DAO.IJoinDAO;
import com.bcle.DTO.Category;
import com.google.gson.Gson;

public class AjaxJoinCategoryController implements Controller
{
   private IJoinDAO dao;
   
   public void setDao(IJoinDAO dao)
   {
      this.dao = dao;
   }
   
   @Override
   public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
   {
      ModelAndView mav = new ModelAndView();
      
      //데이터 수신 
      String category_L_Id = request.getParameter("category_L_Id");
      
      ArrayList<Category> categorySList = new ArrayList<Category>();
      
      try
      {
    	  categorySList = dao.categorySList(category_L_Id);
         
         Gson gson = new Gson();
         String result = gson.toJson(categorySList);
         
         mav.addObject("categorySList", result);
         mav.setViewName("/WEB-INF/view/AjaxJoinCategory.jsp");
         
         
      } catch (Exception e)
      {
         System.out.println(e.toString());
      }
      
         return mav;
   }
   


}