package com.myprsite.dao;
import java.sql.ResultSet;
import com.myprsite.vo.JoinVO;

public class UserDAO extends DBConn{
	ResultSet rs;
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
	
	/** 회원가입폼 **/
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
	
	/** 로그인폼 **/
	public int login(String id,String pass) {
		String SQL ="SELECT pass FROM USER_TABLE WHERE id=?";
		try {
			getPreparedStatement(SQL);
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(pass)) {
					return 1;//로그인 성공
				}else {
					return 0;//비밀번호불일치
				}
			}
			return -1;//아이디가 없음
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2;//데이터베이스오류
	}
}
