package user;
import java.sql.ResultSet;

public class UserDAO extends DBconn{
	ResultSet rs;
	
	public int login(String userID,String userPassword) {
		String SQL ="SELECT userPassword FROM USER_TABLE WHERE userID=?";
		try {
			getPreparedStatement(SQL);
			pstmt.setString(1,userID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(userPassword)) {
					return 1;//�α��� ����
				}else {
					return 0;//��й�ȣ����ġ
				}
			}
			return -1;//���̵� ����
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2;//�����ͺ��̽�����
	}
}
