package com.myprsite.dao;

import com.myprsite.vo.JoinVO;

public class UserDAO extends DBConn{
	
	/** checkbox **/
	public int join1(JoinVO user) {
		int count = 0;
		try {
			String sql = "insert into user_table(chk1, chk2, chk3, chk4) values(?, ?, ?, ?)";
			getPreparedStatement(sql);
			pstmt.setString(1, user.getChk1());
			pstmt.setString(2, user.getChk2());
			pstmt.setString(3, user.getChk3());
			pstmt.setString(4, user.getChk4());
			
			count = pstmt.executeUpdate();
			if(count != 0) count ++;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return count;
	}
	
	/** È¸¿ø°¡ÀÔÆû **/
	public int join2(JoinVO user) {
		int count = 0;
		
		try {
			String sql = "insert into user_table(id, pass, name, birth, gender, email, hp, mdate) values(?, ?, ?, ?, ?, ?, ?, sysdate)";
			getPreparedStatement(sql);
			pstmt.setString(1, user.getId());
			pstmt.setString(2, user.getPass());
			pstmt.setString(3, user.getName());
			pstmt.setString(4, user.getBirth());
			pstmt.setString(5, user.getGender());
			pstmt.setString(6, user.getEmail());
			pstmt.setString(7, user.getHp());
			
			count = pstmt.executeUpdate();
			if(count != 0) count++;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return count;
	}
}
