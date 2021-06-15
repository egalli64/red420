package Dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class UserDao implements AutoCloseable {
	private static final Logger log = LoggerFactory.getLogger(UserDao.class);
	private static final String GET_USER_BY_NAME = "SELECT user_name, user_password, FROM users WHERE user_name=? and user_password=?";
	private Connection conn;

	public UserDao(DataSource ds) {
		log.trace("called");

		try {
			this.conn = ds.getConnection();
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
	}

	public List<User> getUserByName(String userName, String password) {
		log.trace("called");
		List<User> results = new ArrayList<>();

		try (PreparedStatement ps = conn.prepareStatement(GET_USER_BY_NAME); //
				ResultSet rs = ps.executeQuery()) {
			ps.setString(1, userName);
			ps.setString(2, password);
			while (rs.next()) {
				User cur = new User(rs.getString(1), rs.getString(2));
				results.add(cur);
			}
		} catch (SQLException se) {
			log.error("Login error: " + se.getMessage());
			throw new IllegalStateException("Database issue " + se.getMessage());
		}

		return results;
	}

	@Override
	public void close() throws IOException {
		try {
			conn.close();
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
	}
}
