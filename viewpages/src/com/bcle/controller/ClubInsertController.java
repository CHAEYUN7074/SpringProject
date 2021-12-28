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

public class ClubInsertController implements Controller
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

		// 파일 업로드의 정보
		String path = "upload/image";
		String savePath = request.getServletContext().getRealPath(path);
		int maxSize = 1024 * 1024 * 1024; // 1G 이하
		String encodingType = "UTF-8";

		MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encodingType,
				new DefaultFileRenamePolicy());

		// 세션값 id 수신 --MEMBERINFO의 주키(ID)임
		String id = (String)session.getAttribute("id");
		// System.out.println(id+"입니다");

		// ClubCreate.jsp로부터 데이터 수신. -- ★multi에서 데이터 가져와야함
		// 또 세션값 id( MEMBERINFO의 ID임) 을 이용하여 MID 구해야함. --프로시저에 적용함
		String title = multi.getParameter("title");
		String url = multi.getFilesystemName("url"); // --★ check!
		String category_s_id = multi.getParameter("category_S_Id");
		String category_l_id = multi.getParameter("category_L_Id");
		String region_s_id = multi.getParameter("region_S_Id");
		String region_l_id = multi.getParameter("region_L_Id");
		int max = Integer.parseInt(multi.getParameter("max"));
		String content = multi.getParameter("content");
		String limit_id = multi.getParameter("regionlimit");
		String agelimit_id = multi.getParameter("agelimit");

		// System.out.println(id+title+url+category_s_id+region_s_id+max+content+limit_id+agelimit_id);

		try
		{
			Club club = new Club();

			club.setId(id);
			club.setTitle(title);
			club.setUrl(path + "/" + url); // --★ check! -> upload/image/bee21.jpg      
			club.setCategory_s_id(category_s_id);
			club.setRegion_s_id(region_s_id);
			club.setMax(max);
			club.setContent(content);
			club.setLimit_id(agelimit_id);
			club.setAgelimit_id(agelimit_id);

			dao.insert(club);

			mav.setViewName("redirect:clubprelistform.action");
			

		} catch (Exception e)
		{
			System.out.println(e.toString());
		}

		return mav;
	}

}