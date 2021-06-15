package Dao;

public class City {

	private int id;
	private String city;
	private String state;
	private String location;
	private String scene;

	public City() {
	}

	public City(int id, String city, String state) {
		this.id = id;
		this.city = city;
		this.state = state;
	}

	public City(String scene, String location) {
		this.setScene(scene);
		this.setLocation(location);
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return city;
	}

	public void setName(String name) {
		this.city = name;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getScene() {
		return scene;
	}

	public void setScene(String scene) {
		this.scene = scene;
	}

	@Override
	public String toString() {
		return "City [id=" + id + ", name=" + city + ", state=" + state + "]";
	}

}
