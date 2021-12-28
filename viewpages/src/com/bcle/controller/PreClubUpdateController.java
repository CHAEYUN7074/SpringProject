package com.bcle.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.bcle.DAO.IClubDAO;
import com.bcle.DTO.Club;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sun.org.apache.xpath.internal.operations.Mult;

public class PreClubUpdateController implements Controller
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
      
      //세션처리 -----------------------------------------
         
      HttpSession session = request.getSession();
      if (session.getAttribute("id")==null) //-- 로그인이 되어 있지 않은 상황 
      {
         mav.setViewName("redirect:loginpage.action"); 
      return mav; 
      }
      //------------------------------------------------- 세션 처리 
      
      // 파일 업로드의 정보
      String path = "upload/image";
      String savePath = request.getServletContext().getRealPath(path);
      int maxSize = 1024 * 1024 * 1024; // 1G 이하
      String encodingType = "UTF-8";

      MultipartRequest multi 
      = new MultipartRequest(request, savePath, maxSize, encodingType, new DefaultFileRenamePolicy());

      //세션값 id 수신
      //
      
      
      
      //preclubupdateform.jsp로부터 데이터 수신
      String title = multi.getParameter("title");
      String url = multi.getFilesystemName("url"); // ""
      String category_s_id = multi.getParameter("category_S_Id");
      String region_s_id = multi.getParameter("region_S_Id");
      int max = Integer.parseInt(multi.getParameter("max"));
      String content = multi.getParameter("content");
      String limit_id = multi.getParameter("regionlimit");
      String agelimit_id = multi.getParameter("agelimit");   
      String cid = multi.getParameter("cid");
      
      
      try
      {
         Club club = new Club();
         
         
         
         club.setTitle(title);
         club.setUrl(path+"/"+url);
         club.setCategory_s_id(category_s_id);
         club.setRegion_s_id(region_s_id);
         club.setMax(max);
         club.setContent(content);
         club.setLimit_id(limit_id);
         club.setAgelimit_id(agelimit_id);
         club.setCid(cid);
         
         dao.modify(club);
         
         mav.setViewName("redirect:clubprelistform.action");

         
      } catch (Exception e)
      {
         System.out.println(e.toString());
      }
      
   
      
      return mav;
   }

}