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

public class CityDao implements AutoCloseable {
	private static final Logger log = LoggerFactory.getLogger(CityDao.class);
	private static final String GET_ALL = "SELECT city_id, city_name, state_name FROM cities";
	private static final String GET_BY_CITY_ID = "SELECT film_name, film_director, film_year FROM cities join locations using(city_id) join locations_scenes using(location_id) join scenes using (scene_id) join films using (film_id) WHERE city_id=?";
	private Connection conn;

	public CityDao(DataSource ds) {
		log.trace("called");

		try {
			this.conn = ds.getConnection();
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
	}

	public List<City> getAll() {
		log.trace("called");
		List<City> results = new ArrayList<>();

		try (Statement stmt = conn.createStatement(); //
				ResultSet rs = stmt.executeQuery(GET_ALL)) {
			while (rs.next()) {
				City cur = new City(rs.getInt(1), rs.getString(2), rs.getString(3));
				results.add(cur);
			}
		} catch (SQLException se) {
			log.error("Città non trovata: " + se.getMessage());
			throw new IllegalStateException("Database issue " + se.getMessage());
		}

		return results;
	}

	public List<Film> getByCityId(int id) {
		log.trace("called");
		List<Film> results = new ArrayList<>();

		try (PreparedStatement ps = conn.prepareStatement(GET_BY_CITY_ID); //
				ResultSet rs = ps.executeQuery()) {
			ps.setInt(1, id);
			while (rs.next()) {
				Film cur = new Film (rs.getString(1),rs.getString(2),rs.getInt(3));
				results.add(cur);
			}
		} catch (SQLException se) {
			log.error("Città non trovata: " + se.getMessage());
			throw new IllegalStateException("Problema nel database " + se.getMessage());
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
