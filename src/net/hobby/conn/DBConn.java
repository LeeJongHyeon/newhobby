package net.hobby.conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConn {
	
	public static Connection getConnection() throws SQLException {
		//1. JDBC용 드라이버 로딩
				try {
					Class.forName("com.mysql.cj.jdbc.Driver");
				} catch (Exception e) {
					e.printStackTrace();
				}
	
				String url = "jdbc:mysql://127.0.0.1:3306/study?serverTimezone=Asia/Seoul&characterEncoding=UTF-8";
				String user = "root";
				String pwd = "loto7777";
				Connection conn = DriverManager.getConnection(url, user, pwd);
				return conn;
	}
}

