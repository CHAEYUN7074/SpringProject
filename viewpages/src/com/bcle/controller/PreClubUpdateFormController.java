
package com.bcle.controller;

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

public class PreClubUpdateFormController implements Controller
{
     private IClubDAO dao;
      
      public void setDao(IClubDAO dao)
      {
         this.dao = dao;
      }
      @Override
      public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
      {
         // 액션 코드
         
         ModelAndView mav = new ModelAndView();


         /* ArrayList<ClubDTO> preclub = new ArrayList<ClubDTO>(); */      
         ArrayList<Region> regionLList = new ArrayList<Region>(); 
         ArrayList<Category> categoryLList = new ArrayList<Category>();
         
         try
         {
            // 데이터 수신 (→ PreOpenClubDetail.jsp 로 부터... cid 수신)
            String cid = request.getParameter("cid");
                  
            Club preopen = new Club();
            
            preopen = dao.showPreOpenClub(cid);

            regionLList = dao.regionLList();
            categoryLList = dao.categoryLList();
            
            mav.addObject("preopen", preopen);   
            mav.addObject("regionLList", regionLList);
            mav.addObject("categoryLList", categoryLList);            

            mav.setViewName("/WEB-INF/view/PreClubUpdateForm.jsp");
            
         } catch (Exception e)
         {
            System.out.println(e.toString());
         }
         
      
         
         return mav;
      }

   }