package com.bcle.DAO;

import java.sql.SQLException;
import java.util.ArrayList;

import com.bcle.DTO.Category;
import com.bcle.DTO.Club;
import com.bcle.DTO.MemberInfo;
import com.bcle.DTO.Region;
import com.webjjang.util.PageObject;

public interface IClubDAO
{
	//동아리 탈퇴 테이블에 없는 것도 걸러야 함.
	// 내가 가입한 동아리 목록 출력
	// 탈퇴랑 강퇴 생각해야 함...
	public ArrayList<Club> myList(String id) throws SQLException;
	
	// 동아리 번호 받아서 동아리 정보 출력
	public Club showClub(String cid) throws SQLException;
	
	// 동아리별 회원수 출력
	public int countMember(String cid) throws SQLException;
	
	// id(세션)로 동아리코드 출력 
	//public String searchCid(String beeId) throws SQLException;
	
	// 동아리코드로 동아리회원목록코드, nickname 찾기
	public ArrayList<MemberInfo> searchClubmem(String cid) throws SQLException;
	
	public ArrayList<Region> regionLList() throws SQLException;
	public ArrayList<Region> regionSList(String region_l_id) throws SQLException;
	public ArrayList<Category> categoryLList() throws SQLException;
	public ArrayList<Category> categorySList(String category_l_id) throws SQLException;

	   public Club showPreOpenClub(String cid) throws SQLException;
	   
	   public ArrayList<Club> preopenList(PageObject pageObject,String searchKey
				,String searchValue,String order) throws SQLException; //변경
	   
	   public int preCount(String searchKey,String searchValue) throws SQLException;//변경
	   
	   public int insert(Club club) throws SQLException;// 

	   public int checkTitle(String title) throws SQLException;
	      
	   public String searchMid(String id) throws SQLException; //세션으로 받은 id로 mid 반환하는 메소드
	   
	   public String searchJoin(String mid,String cid) throws SQLException;
	   
	   public int joinClub(String cid,String mid,String position_id) throws SQLException;
	   
	   public int joinClubDelete(String cid, String mid) throws SQLException;
	   
	   public int modify(Club club) throws SQLException;
	   
	   public ArrayList<MemberInfo> applyManagerList(String cid) throws SQLException; //추가
	   
	   public ArrayList<MemberInfo> applyStaffList(String cid) throws SQLException; //추가
	   
	   public MemberInfo memberProfile(String mid) throws SQLException; //추가
	   
	   public ArrayList<Club> memberClubList(String mid) throws SQLException; //추가
	   
	   public int choiceMember(String cid,String mid) throws SQLException; //추가
	      
	   public int staffCnt(String cid) throws SQLException; //추가
	      
	   public int managerCnt(String cid) throws SQLException; //추가
	   
	   public int clubDelete(String cid) throws SQLException;
}
