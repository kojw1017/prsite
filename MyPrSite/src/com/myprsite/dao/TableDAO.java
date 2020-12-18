package com.myprsite.dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.myprsite.vo.TableVO;

public class TableDAO extends DBConn{
	
	/**
	 * write 
	 */
	public boolean setContent(TableVO vo){
		boolean result = false;
		
		try {
			String sql = "insert into board_table values('b_'||SEQ_BOARD.nextval, ?, ?, ?, ?, sysdate, 0, ?)";
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getBtitle());
			pstmt.setString(2, vo.getBcontent());
			pstmt.setString(3, vo.getBfile());
			pstmt.setString(4, vo.getBsfile());
			pstmt.setString(5, vo.getUser_id());
			
			int count = pstmt.executeUpdate();
			if(count!=0) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * list
	 */
	public ArrayList<TableVO> getList(){
		ArrayList<TableVO> list = new ArrayList<TableVO>();
		
		try {
			String sql = "select rownum rno, bid, btitle, bcontent, bfile, bsfile, to_char(bdate,'yyyy.mm.dd') bdate, bhits, user_id "
					+ "from (select * from board_table order by bdate desc)";
			getPreparedStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				TableVO vo = new TableVO();
				vo.setRno(rs.getInt(1));
				vo.setBid(rs.getString(2));
				vo.setBtitle(rs.getString(3));
				vo.setBcontent(rs.getString(4));
				vo.setBfile(rs.getString(5));
				vo.setBsfile(rs.getString(6));
				vo.setBdate(rs.getString(7));
				vo.setBhits(rs.getInt(8));
				vo.setUser_id(rs.getString(9));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	/**
	 * content
	 */
	public TableVO getContent(String bid) {
		TableVO vo = new TableVO();
		
		try {
			String sql = "select bid, btitle, bcontent, bfile, bsfile, to_char(bdate,'yyyy.mm.dd') bdate, bhits, user_id from board_table where bid=?";
			getPreparedStatement(sql);
			pstmt.setString(1, bid);
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				vo.setBid(rs.getString(1));
				vo.setBtitle(rs.getString(2));
				vo.setBcontent(rs.getString(3));
				vo.setBfile(rs.getString(4));
				vo.setBsfile(rs.getString(5));
				vo.setBdate(rs.getString(6));
				vo.setBhits(rs.getInt(7));
				vo.setUser_id(rs.getString(8));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	
	/**
	 * delete
	 */
	public boolean delete(String bid) {
		boolean result = false;
		
		try {
			String sql = "delete from board_table where bid=?";
			getPreparedStatement(sql);
			pstmt.setString(1, bid);
			
			int count = pstmt.executeUpdate();
			if(count != 0) result = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		System.out.println("db : " + result);
		return result;
	}
	
	/**
	 * 조회수
	 */
	public void setHits(String bid) {
		try {
			String sql = "update board_table set bhits=bhits+1 where bid=?";
			getPreparedStatement(sql);
			pstmt.setString(1, bid);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 업데이트 정보 가져오기
	 */
	public TableVO getUpdate(String bid) {
		TableVO vo = new TableVO();
		
		try {
			String sql = "select bid, btitle, bcontent, bfile, bsfile from board_table where bid=?";
			getPreparedStatement(sql);
			pstmt.setString(1, bid);
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				vo.setBid(rs.getString(1));
				vo.setBtitle(rs.getString(2));
				vo.setBcontent(rs.getString(3));
				vo.setBfile(rs.getString(4));
				vo.setBsfile(rs.getString(5));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	
	/**
	 * 업데이트하기 : 새 파일 O
	 */
	public boolean update(TableVO vo) {
		boolean result = false;
		
		try {
			String sql = "update board_table set btitle=?, bcontent=?, bfile=?, bsfile=? where bid=?";
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getBtitle());
			pstmt.setString(2, vo.getBcontent());
			pstmt.setString(3, vo.getBfile());
			pstmt.setString(4, vo.getBsfile());
			pstmt.setString(5, vo.getBid());
			
			int count = pstmt.executeUpdate();
			if(count != 0) result = true;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}
	
	/**
	 * 업데이트하기 : 새 파일 X
	 */
	public boolean updateNofile(TableVO vo) {
		boolean result = false;
		
		try {
			String sql = "update board_table set btitle=?, bcontent=? where bid=?";
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getBtitle());
			pstmt.setString(2, vo.getBcontent());
			pstmt.setString(3, vo.getBid());
			
			int count = pstmt.executeUpdate();
			if(count != 0) result = true;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}
}
