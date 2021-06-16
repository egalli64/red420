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

public class FilmDao implements AutoCloseable {
	private static final Logger log = LoggerFactory.getLogger(FilmDao.class);
	private static final String GET_ALL = "SELECT scene_id, scene_name FROM scenes";
	private static final String GET_BY_FK = "SELECT scene_id, scene_name FROM scenes where film_id=?";
	private Connection conn;

	public FilmDao(DataSource ds) {
		log.trace("called");

		try {
			this.conn = ds.getConnection();
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
	}

	public List<Scene> getAll() {
		log.trace("called");
		List<Scene> results = new ArrayList<>();

		try (Statement stmt = conn.createStatement(); //
				ResultSet rs = stmt.executeQuery(GET_ALL)) {
			while (rs.next()) {
				Scene cur = new Scene(rs.getInt(1), rs.getString(2));
				results.add(cur);
			}
		} catch (SQLException se) {
			log.error("Can't get scenes: " + se.getMessage());
			throw new IllegalStateException("Database issue " + se.getMessage());
		}

		return results;
	}

	public List<Scene> getByFilmId(int id) {
		log.trace("called");
		List<Scene> results = new ArrayList<>();

		try (PreparedStatement ps = conn.prepareStatement(GET_BY_FK)) {
			ps.setInt(1, id);
			try (ResultSet rs = ps.executeQuery()) { // posizione relativa punti di domanda
				while (rs.next()) {
					Scene cur = new Scene(rs.getInt(1), rs.getString(2));
					results.add(cur);
				}
			} catch (SQLException se) {
				log.error("Can't get scenes: " + se.getMessage());
				throw new IllegalStateException("Database issue " + se.getMessage());
			}
		} catch (SQLException e) {
			e.printStackTrace();
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
