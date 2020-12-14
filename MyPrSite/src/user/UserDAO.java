package user;
import java.sql.ResultSet;

public class UserDAO extends DBconn{

	private ResultSet rs;
	
	public int login(String userID,String userPassword) {
		String SQL ="SELECT userPassword FROM USER_TABLE WHERE userID=?";
		try {
			getPreparedStatement(SQL);
			pstmt.setString(1,userID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(userPassword)) {
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
