package model;

import java.io.Serializable;

public class Ramen implements Serializable {
	private String name, email, impression, favorite, toppings, gender;
	private int age, zip1, zip2;

	public Ramen() {}
	public Ramen(
			String name, String email, String impression, String favorite, String toppings, String gender,
			int age, int zip1, int zip2) {
		this.name = name;
		this.email = email;
		this.impression = impression;
		this.favorite = favorite;
		this.toppings = toppings;
		this.gender = gender;
		this.age = age;
		this.zip1 = zip1;
		this.zip2 = zip2;
	}

	public String getName() { return name; }
	public void setName(String name) { this.name = name; }

	public String getEmail() { return email; }
	public void setEmail(String email) { this.email = email; }

	public String getImpression() { return impression; }
	public void setImpression(String impression) { this.impression = impression; }

	public String getFavorite() { return favorite; }
	public void setFavorite(String favorite) { this.favorite = favorite; }

	public String getToppings() { return toppings; }
	public void setToppings(String toppings) { this.toppings = toppings; }

	public String getGender() { return gender; }
	public void setGender(String gender) { this.gender = gender; }

	public int getAge() { return age; }
	public void setAge(int age) { this.age = age; }

	public int getZip1() { return zip1; }
	public void setZip1(int zip1) { this.zip1 = zip1; }

	public int getZip2() { return zip2; }
	public void setZip2(int zip2) { this.zip2 = zip2; }



}
