package com.fis.cdd.profile.scantype;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

import com.fis.cdd.profile.entity.Login;
import com.fis.cdd.profile.entity.SearchConfig;
import com.fis.cdd.profile.profiles.DatabaseProfile;

@XmlRootElement
public class MySQLProfile extends DatabaseProfile {
	Login login;

	public MySQLProfile(Login login) {
		super();
		this.login = login;
	}
	
	public MySQLProfile() {
		super();
	}
	
	
	
	public MySQLProfile(Login login,SearchConfig databaseProfile, SearchConfig tables,
			SearchConfig colums, int limitColumnsToXRows) {
		super(databaseProfile, tables, colums, limitColumnsToXRows);
		this.login=login;
		// TODO Auto-generated constructor stub
	}

	@XmlElement
	public Login getLogin() {
		return login;
	}

	public void setLogin(Login login) {
		this.login = login;
	}

}
