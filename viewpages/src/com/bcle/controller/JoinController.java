/*==========================
 * JoinController.java
 * - 사용자 정의 컨트롤러
==========================*/

package com.bcle.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.bcle.DAO.IMemberInfoDAO;
import com.bcle.DTO.MemberInfo;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sun.org.apache.xpath.internal.operations.Mult;

public class JoinController implements Controller
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

		// int categorycnt = 0;
		// int regionLcnt = 0;
		// int regioncnt = 0;

		MemberInfo checklist = new MemberInfo();

		// 파일 업로드의 정보
		String path = "upload/image";
		String savePath = request.getServletContext().getRealPath(path);
		int maxSize = 1024 * 1024 * 1024; // 1G 이하
		String encodingType = "UTF-8";

		MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encodingType,
				new DefaultFileRenamePolicy());

		// Join.jsp로부터 데이터 수신. -- ★multi에서 데이터 가져와야함
		// 16개
		String url = multi.getFilesystemName("url"); // --★ check!
		String name = multi.getParameter("name");
		String userId = multi.getParameter("userId");
		String email = multi.getParameter("email");
		String password = multi.getParameter("pwd");
		String ssn1 = multi.getParameter("ssn1");
		String ssn2 = multi.getParameter("ssn2");

		// check~!!!
		String ssn = ssn1 + ssn2;
		String tel = multi.getParameter("tel");
		String nickName = multi.getParameter("nickName");
		// String region_L_Id1 = multi.getParameter("region_L_Id1");
		// String region_L_Id2 = multi.getParameter("region_L_Id2");
		// String region_L_Id3 = multi.getParameter("region_L_Id3");
		String region_S_Id1 = multi.getParameter("region_S_Id1");
		String region_S_Id2 = multi.getParameter("region_S_Id2");
		String region_S_Id3 = multi.getParameter("region_S_Id3");
		String category_S_Id1 = multi.getParameter("category_S_Id1");
		// String category_L_Id2 = multi.getParameter("category_S_Id2");
		// String category_L_Id3 = multi.getParameter("category_S_Id3");
		// String category_L_Id4 = multi.getParameter("category_S_Id4");
		// String category_L_Id5 = multi.getParameter("category_S_Id5");
		System.out.println("r2 = " + region_S_Id2);
		System.out.println("r3 = " + region_S_Id3);
		System.out.println(name + userId + email + password + ssn + tel + nickName + category_S_Id1);
		try
		{
			MemberInfo member = new MemberInfo();

			member.setUrl(url);
			member.setName(name);
			member.setUserId(userId);
			member.setEmail(email);
			member.setPwd(password);
			member.setSsn(ssn);
			member.setTel(tel);
			member.setNickname(nickName);
			member.setRegionId1(region_S_Id1);
			// member.setRegionId2(region_S_Id2);
			// member.setRegionId3(region_S_Id3);
			member.setCategoryId1(category_S_Id1);
			// member.setCategoryId2(category_L_Id2);
			// member.setCategoryId3(category_L_Id3);
			// member.setCategoryId4(category_L_Id4);
			// member.setCategoryId5(category_L_Id5);
			// System.out.println(region_S_Id2 + " : " + category_L_Id2);

			dao.join(member);

			String mid = dao.findMid();
			System.out.println(mid);
			member.setMid("M" + mid); // 주의하기 ...ㅠㅠㅠㅠㅠㅠ ㅠㅠㅠㅠㅠㅠㅠㅠㅠ아아 ㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠ

			// id를 가져오는 메소드
			member.setId(dao.findId(ssn));

			for (int i = 2; i <= 3; i++)
			{
				if (!(multi.getParameter("region_S_Id" + i)).equals("-1"))
				{
					System.out.println(i + " : " + (multi.getParameter("region_S_Id" + i)));
					dao.addregionAdd(dao.findId(ssn), multi.getParameter("region_S_Id" + i));
				}
			}
			
			for (int i = 2; i <= 5; i++)
			{
				if (!(multi.getParameter("category_S_Id" + i)).equals("-1"))
				{
					System.out.println(i + " : " + (multi.getParameter("category_S_Id" + i)));
					dao.addCategoryAdd(dao.findMid(),multi.getParameter("category_S_Id" + i));
				}
			}
			
			
			/*
			 * if (region_L_Id2 != "") { dao.addregionAdd(member); } if (region_L_Id3 != "")
			 * { dao.addregionAdd(member); }
			 */
			// dao.addCategoryAdd(member);

			// 회원가입 시 닉네임과 아이디를 받아오기 위함
			checklist = dao.search(userId);

			mav.addObject("checklist", checklist);

			mav.setViewName("/WEB-INF/view/JoinConfirm.jsp");

		} catch (Exception e)
		{
			System.out.println(e.toString());
		}

		return mav;
	}

}
