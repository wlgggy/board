package dao;

import java.sql.*;
import java.util.*;
import javax.naming.NamingException;
import org.apache.tomcat.jdbc.pool.ConnectionPool;

public class UserDAO {

	public boolean insert(String userId, String userPassword, String userName) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		try {
			String sql = "insert into users(id,password,name) values(?,?,?)";

			conn = ConnectionPool.get();
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, userId);
			stmt.setString(2, userPassword);
			stmt.setString(3, userName);

			int count = stmt.executeUpdate();
			return (count > 0) ? true : false;

		} finally {

			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();

		}
	}

	public boolean exists(String userId) throws NamingException, SQLException {
	    Connection conn = null;
	    PreparedStatement stmt = null;
	    ResultSet rs = null;
	    try {
	        String sql = "select id from users where id = ?";  // Table name 'users' here
	        conn = ConnectionPool.get();
	        stmt = conn.prepareStatement(sql);
	        stmt.setString(1, userId);

	        rs = stmt.executeQuery();
	        return rs.next();  // returns true if user exists, false otherwise

	    } finally {
	        if (rs != null) rs.close();
	        if (stmt != null) stmt.close();
	        if (conn != null) conn.close();
	    }
	}
}