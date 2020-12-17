package user;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBconn {
	//Field
	String Driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521";
	String user="scott";
	String pass="tiger";
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	//Constructor 1,2�ܰ�
	public DBconn() {
		try {
			//1. ����̹� �ε�
			Class.forName(Driver);
			//2. Connection ��ü����
			conn = DriverManager.getConnection(url,user,pass);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}//constructor
	
	//Method 3�ܰ�
		//PreparedStatement ��ü ����
		public void getPreparedStatement(String sql) {
			try {
				pstmt = conn.prepareStatement(sql);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		//��ü close
		public void close() {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
}
