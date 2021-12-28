/*================================
 * IBeeDAO.java
 * - 인터페이스
================================*/


package com.bcle.DAO;

import java.sql.SQLException;
import java.util.ArrayList;

import com.bcle.DTO.Bee;

public interface IBeeDAO
{
	public ArrayList<Bee> list(String cid) throws SQLException;
	
	public Bee showBee(String beeId) throws SQLException;
	
	// 모임 참가자도 보여줘야 함...
	public ArrayList<Bee> reqList(String beeId) throws SQLException;
	
	// 모임: ID가 ???고 cid(동아리코드)가 ???인 회원의 동아리회원목록코드 얻기
	// 회원이 들어간 동아리가 여러개 이상일 경우 때문에 cid도 조건에 들어감.
	public String searchClubmemId(String id, String cid) throws SQLException;
	
	// 어떤 회원의 그 동아리에서의 직위 
	// 모임등록할 때 정모랑 반짝모임 선택 제한하려고 하는 건데 여기서 정의해서 쓸 게 아닌 느낌. 
	//public String searchPositionId()

	public int add(Bee bee) throws SQLException;
	public int remove(String beeId) throws SQLException;
	public int modify(Bee bee) throws SQLException;
}
