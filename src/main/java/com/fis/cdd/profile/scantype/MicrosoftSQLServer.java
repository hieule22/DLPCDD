package com.fis.cdd.profile.scantype;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

import com.fis.cdd.profile.entity.Login;
import com.fis.cdd.profile.entity.SearchConfig;
import com.fis.cdd.profile.entity.WindowsProfile;
import com.fis.cdd.profile.profiles.DatabaseProfile;

@XmlRootElement
public class MicrosoftSQLServer extends DatabaseProfile{
	Login login;
	WindowsProfile windowsProfile;
	
	
	public MicrosoftSQLServer() {
		super();
	}

	public MicrosoftSQLServer(Login login, WindowsProfile windowsProfile) {
		super();
		this.login = login;
		this.windowsProfile = windowsProfile;
	}
	
	
	
	

	public MicrosoftSQLServer(Login login, WindowsProfile windowsProfile,SearchConfig databaseProfile,
			SearchConfig tables, SearchConfig colums, int limitColumnsToXRows) {
		super(databaseProfile, tables, colums, limitColumnsToXRows);
		this.login = login;
		this.windowsProfile = windowsProfile;
	}

	@XmlElement
	public Login getLogin() {
		return login;
	}

	public void setLogin(Login login) {
		this.login = login;
	}

	@XmlElement
	public WindowsProfile getWindowsProfile() {
		return windowsProfile;
	}

	public void setWindowsProfile(WindowsProfile windowsProfile) {
		this.windowsProfile = windowsProfile;
	}
	

}
