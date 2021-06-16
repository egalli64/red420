package Dao;

public class City {

	private int id;
	private String city;
	private String state;

	public City() {
	}

	public City(int id, String city, String state) {
		this.id = id;
		this.city = city;
		this.state = state;
	}

	public City(String city, String state) {
		this.city = city;
		this.state = state;
	}

	public City(String city) {
		this.city = city;
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

	@Override
	public String toString() {
		return "City [id=" + id + ", name=" + city + ", state=" + state + "]";
	}

}
