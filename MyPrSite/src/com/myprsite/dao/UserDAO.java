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
	public boolean join2(JoinVO user) {
		boolean result = false;
		
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
			
			int count = pstmt.executeUpdate();
			if(count != 0) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
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
	/*
	 * find_id_pw 아이디찾기
	 */
	public JoinVO findId(String name,String phone) {
		JoinVO vo = new JoinVO();
		try {
			String sql ="SELECT ID FROM USER_TABLE WHERE NAME=? AND HP=?";
			getPreparedStatement(sql);
			pstmt.setString(1,name);
			pstmt.setString(2,phone);
			rs = pstmt.executeQuery();
			if(rs.next())vo.setId(rs.getString(1));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return vo;//데이터베이스오류
	}
	/*
	 * find_id_pw 비밀번호찾기
	 */
	public JoinVO findPass(String id) {
		JoinVO vo = new JoinVO();
		try {
			String sql ="SELECT PASS FROM USER_TABLE WHERE ID=?";
			getPreparedStatement(sql);
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			if(rs.next()) vo.setPass(rs.getString(1));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	/*
	 * find_id_pw 아이디찾기 - 이름,전번 폼체크
	 */
	public int findNamePhoneFormCheck(String name,String phone) {
		try {
			String sql ="SELECT NAME,HP FROM USER_TABLE WHERE NAME=? OR HP=?";
			getPreparedStatement(sql);
			pstmt.setString(1,name);
			pstmt.setString(2,phone);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(!rs.getString(1).equals(name)) {
						return 1;//이름이틀림
				}else if(!rs.getString(2).equals(phone)) {
						return 2;//전번이틀림
				}else {
					return 0;//성공
				}
			}
			return -1;//둘다없음
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2;//데베오류
	}
	/*
	 * find_id_pw 아이디찾기 - 아이디 폼체크
	 */
	public int findIdFormCheck(String id) {
		try {
			String sql ="SELECT ID FROM USER_TABLE WHERE id=?";
			getPreparedStatement(sql);
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(id))return 0;//아이디찾음
			}
			return -1;//아이디가 없음
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2;//데이터베이스오류
	}
}
