package dbpack;

import java.sql.*;

public class SpaceDB {
	
	Connection conn;
	Statement stmt;
	ResultSet rs;
	
	public SpaceDB() {
		conn = null;
		stmt = null;
		rs = null;
	}
	
	// MySQL ����̹� ����
	public void CreateDB(String URL, String USER, String PASS) {
		try{
			Class.forName("org.gjt.mm.mysql.Driver");
			conn = DriverManager.getConnection(URL, USER, PASS);
			stmt = conn.createStatement();
		} catch(Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
	}
	
	public void Query(String query) {
		try {
			// constellation ���̺� ����
			rs = stmt.executeQuery(query);
			
			// constellation ���̺��� ������ ������
			//while( rs.next() ) {
				//String name = rs.getString("name");
			//}
		} catch(Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
	}
	
	// ResultSet�� ����
	public ResultSet getDB() {
		return rs;
	}
}
