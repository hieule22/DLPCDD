package com.fis.cdd.profile.test;

import com.fis.cdd.profile.profiles.Profile;

public class Main {

	public static void main(String[] args) {
		Profile profile = new Profile();
		if(profile.getRegularExpressions()!=null){
			System.out.println("seccuss!...");
		}else{
			System.out.println("error...");
		}
		
	}

}
