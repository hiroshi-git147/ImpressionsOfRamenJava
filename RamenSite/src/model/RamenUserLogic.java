package model;

public class RamenUserLogic {
	public void execute(Ramen ramen) {
		String gender = ramen.getGender();
		if(gender.equals("0")) {
			ramen.setGender("男性");
		} else if(gender.equals("1")) {
			ramen.setGender("女性");
		}

	}

}
