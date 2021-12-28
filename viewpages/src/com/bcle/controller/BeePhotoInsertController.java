package com.bcle.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.bcle.DAO.IBeePhotoDAO;
import com.bcle.DTO.BeePhoto;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class BeePhotoInsertController implements Controller
{
	// 주요 속성 구성
	// → 인터페이스 형태의 자료형을 속성으로 구성

	private IBeePhotoDAO dao;

	// setter 구성
	public void setDao(IBeePhotoDAO dao)
	{
		this.dao = dao;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		ModelAndView mav = new ModelAndView();

		HttpSession session = request.getSession();
		// 세션 처리 과정 추가 ------------------------------------------
		/*
		 * 
		 * 
		 * if (session.getAttribute("name") == null) // -- 로그인이 되어 있지 않은 상황 {
		 * mav.setViewName("redirect:loginform.action"); return mav; } else if
		 * (session.getAttribute("admin") == null) // -- 로그인은 되었지만 관리자가 아닌 상황 {
		 * mav.setViewName("redirect:logout.action"); return mav; // -- 로그인은 되어 있지만 이 때
		 * 클라이언트는 // 일반 직원으로 로그인 되어 있는 상황이므로 // 로그아웃 액션 처리하여 다시 관리자로 로그인할 수 있도록 처리 }
		 */
		// ------------------------------------------ 세션 처리 과정 추가

		String cid = request.getParameter("cid");
		String beeId = request.getParameter("beeId");

		// System.out.println(cid);
		// System.out.println(beeId);

		// 파일 업로드의 정보
		String path = "upload/beeimage";
		String savePath = request.getServletContext().getRealPath(path);
		int maxSize = 1024 * 1024 * 1024; // 1G 이하
		String encodingType = "UTF-8";

		MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encodingType,
				new DefaultFileRenamePolicy());

		// 세션값 id 수신 --MEMBERINFO의 주키(ID)임
		// String id = (String)session.getAttribute("id");
		// System.out.println(id+"입니다");

		// ClubCreate.jsp로부터 데이터 수신. -- ★multi에서 데이터 가져와야함
		// 또 세션값 id( MEMBERINFO의 ID임) 을 이용하여 MID 구해야함. --프로시저에 적용함
		// System.out.println(url);
		// System.out.println(id+title+url+category_s_id+region_s_id+max+content+limit_id+agelimit_id);

		try
		{
			BeePhoto beePhoto = new BeePhoto();

			for (int i = 1; i <= 5; i++)
			{
				String url = multi.getFilesystemName("url"+i); // --★ check!
				if (url != null)
				{
					beePhoto.setUrl(path + "/" + url); // --★ check! -> upload/image/bee21.jpg
					beePhoto.setBeeId(beeId);
					dao.add(beePhoto);
				}
			}

			mav.setViewName("redirect:beedetailpage.action?beeId=" + beeId + "&cid=" + cid);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return mav;
	}

}
