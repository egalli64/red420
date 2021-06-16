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

public class FilmsDao implements AutoCloseable {
	private static final Logger log = LoggerFactory.getLogger(FilmsDao.class);
	private static final String GET_ALL = "SELECT scene_id, scene_name, film_id, FROM scenes";
	private static final String GET_BY_FK = "SELECT scene_id, scene_name, FROM scenes where film_id=?";
	private Connection conn;

	public FilmsDao(DataSource ds) {
		log.trace("called");

		try {
			this.conn = ds.getConnection();
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
	}

	public List<Film> getAll() {
		log.trace("called");
		List<Film> results = new ArrayList<>();

		try (Statement stmt = conn.createStatement(); //
				ResultSet rs = stmt.executeQuery(GET_ALL)) {
			while (rs.next()) {
				Film cur = new Film(rs.getInt(1), rs.getString(2));
				results.add(cur);
			}
		} catch (SQLException se) {
			log.error("Can't get scenes: " + se.getMessage());
			throw new IllegalStateException("Database issue " + se.getMessage());
		}

		return results;
	}

	public List<Film> getByFilmId(int id) {
		log.trace("called");
		List<Film> results = new ArrayList<>();

		try (PreparedStatement ps = conn.prepareStatement(GET_BY_FK); //
				ResultSet rs = ps.executeQuery()) {
			ps.setInt(1, id); // posizione relativa punti di domanda
			while (rs.next()) {
				Film cur = new Film(rs.getInt(1), rs.getString(2));
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