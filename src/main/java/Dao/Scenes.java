package Dao;

public class Scenes {

	private int scene_id;
	private String scene_name;
	private int film_id;

	public Scenes() {
	}

	public Scenes(int scene_id, String scene_name, int film_id) {
		this.scene_id = scene_id;
		this.scene_name = scene_name;
		this.film_id = film_id;
	}

	public int getScene_id() {
		return scene_id;
	}

	public void setScene_id(int scene_id) {
		this.scene_id = scene_id;
	}

	public String getScene_name() {
		return scene_name;
	}

	public void setScene_name(String scene_name) {
		this.scene_name = scene_name;
	}

	public int getFilm_id() {
		return film_id;
	}

	public void setFilm_id(int film_id) {
		this.film_id = film_id;
	}

	@Override
	public String toString() {
		return "Scene [scene_id=" + scene_id + ", scene_name=" + scene_name + ", film_id=" + film_id + "]";
	}

}
