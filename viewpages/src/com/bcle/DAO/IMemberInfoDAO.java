/* ===============================
	IMemberInfoDAO.java
	- 인터페이스
=================================*/

package com.bcle.DAO;

import java.sql.SQLException;
import java.util.ArrayList;

import com.bcle.DTO.MemberInfo;

public interface IMemberInfoDAO
{
	public ArrayList<MemberInfo> list() throws SQLException;
	
	public int remove(String employeeId) throws SQLException;
	public int modify(MemberInfo memberInfo) throws SQLException;		// 찾는걸 찾아서 다 수정하니까!!! Employee employee
	
	// 가입할 때 4개의 테이블에 insert
	public int join(MemberInfo memberInfo) throws SQLException;
	public int memberInfoAdd(MemberInfo memberInfo) throws SQLException;
	public int memberAdd(MemberInfo memberInfo) throws SQLException;
	public int addCategoryAdd(String mid, String category_s_id) throws SQLException;
	public int addregionAdd(String id, String region_s_id) throws SQLException;
	
	
	// id로 닉네임 찾기 콘솔에서 로그인 확인용 
	public MemberInfo searchId(String id) throws SQLException;	
	
	//id로 닉네임 찾기
	public String searchNickname(String id) throws SQLException;
	
	// clubmem_id(동아리 목록 코드) 로 nickname 찾기
	public String searchClubmemNickname(String clubmemId) throws SQLException;
	
	// ID 중복체크
	public int checkId(String id) throws SQLException;
	public int checkNickName(String nickname) throws SQLException;
	public int CheckSsn(String ssn) throws SQLException;
	
	// 일단 이거 두개만 먼저 하면됨!
	public String login(String id, String pw) throws SQLException;
	public String logAdmin(String id, String pw) throws SQLException;
	
	// mid 찾기
	public String findMid() throws SQLException;
	// id 찾기
	public String findId(String ssn) throws SQLException;
	
	public MemberInfo search(String userId) throws SQLException;
	
	public ArrayList<MemberInfo> findUserId(String name, String email) throws SQLException;
	public String findPwd(String userId, String email) throws SQLException;
}
