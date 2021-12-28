/* ==============================
 * AjaxJoinRegionController.java
 * - 사용자 정의 컨트롤러 
 * ==============================*/
package com.bcle.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.bcle.DAO.IJoinDAO;
import com.bcle.DTO.Region;
import com.google.gson.Gson;

public class AjaxJoinRegionController implements Controller
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
      String region_l_id = request.getParameter("region_L_Id");
      
      ArrayList<Region> regionSList = new ArrayList<Region>();
      
      try
      {
         regionSList = dao.regionSList(region_l_id);
         
         Gson gson = new Gson();
         String result = gson.toJson(regionSList);
         
         mav.addObject("regionSList", result);
         mav.setViewName("/WEB-INF/view/AjaxJoinRegion.jsp");
         
         
      } catch (Exception e)
      {
         System.out.println(e.toString());
      }
      
         return mav;
   }
   


}