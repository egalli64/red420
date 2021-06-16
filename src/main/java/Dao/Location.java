package Dao;

public class Location{

	private int id;
	private String name;
	private String cityId;

	public Location() {
	}

	public Location(int id, String name, String cityId) {
		this.id = id;
		this.name = name;
		this.cityId = cityId;
	}
	public Location( String name) {
		this.name = name;
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

	public String getCityId() {
		return cityId;
	}

	public void setCityId(String cityId) {
		this.cityId = cityId;
	}

	@Override
	public String toString() {
		return "Location [id=" + id + ", name=" + name + ", cityId=" + cityId + "]";
	}

}
