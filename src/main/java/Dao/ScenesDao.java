package Dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ScenesDao implements AutoCloseable {
	private static final Logger log = LoggerFactory.getLogger(ScenesDao.class);
	private static final String GET_ALL = "SELECT scene_id, scene_name, film_id, FROM scenes";
	private static final String GET_BY_FK = "SELECT scene_id, scene_name, FROM scenes where film_id=?";
	private Connection conn;

	public ScenesDao(DataSource ds) {
		log.trace("called");

		try {
			this.conn = ds.getConnection();
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
	}

	public List<Scenes> getAll() {
		log.trace("called");
		List<Scenes> results = new ArrayList<>();

		try (Statement stmt = conn.createStatement(); //
				ResultSet rs = stmt.executeQuery(GET_ALL)) {
			while (rs.next()) {
				Scenes cur = new Scenes(rs.getInt(1), rs.getString(2), rs.getInt(3));
				results.add(cur);
			}
		} catch (SQLException se) {
			log.error("Can't get scenes: " + se.getMessage());
			throw new IllegalStateException("Database issue " + se.getMessage());
		}

		return results;
	}

	public List<Scenes> getFK(int film_id) {
		log.trace("called");
		List<Scenes> results = new ArrayList<>();

		try (PreparedStatement ps = conn.prepareStatement(GET_BY_FK); //
				ResultSet rs = ps.executeQuery()) {
			ps.setInt(3, film_id);
			while (rs.next()) {
				Scenes cur = new Scenes(rs.getInt(1), rs.getString(2), rs.getInt(3));
				results.add(cur);
			}
		} catch (SQLException se) {
			log.error("Can't get scenes: " + se.getMessage());
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
