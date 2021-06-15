package Dao;

public class Scene {

	private int id;
	private String name;
	private int filmId;

	public Scene() {
	}

	public Scene(int id, String name, int filmId) {
		this.id = id;
		this.name = name;
		this.filmId = filmId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getFilmId() {
		return filmId;
	}

	public void setFilmId(int filmId) {
		this.filmId = filmId;
	}

	@Override
	public String toString() {
		return "Scene [id=" + id + ", name=" + name + ", filmId=" + filmId + "]";
	}

}
