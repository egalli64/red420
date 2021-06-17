package Dao;

public class City {

	private int cityId;
	private String city;
	private String state;

	public City() {
	}

	public City(int cityId, String city, String state) {
		this.cityId = cityId;
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

	public int getCityId() {
		return cityId;
	}

	public void setId(int cityId) {
		this.cityId = cityId;
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
		return "City [id=" + cityId + ", name=" + city + ", state=" + state + "]";
	}

}
