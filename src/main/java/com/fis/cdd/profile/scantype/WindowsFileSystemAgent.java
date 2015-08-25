package com.fis.cdd.profile.scantype;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

import com.fis.cdd.profile.entity.Login;
import com.fis.cdd.profile.entity.WindowsProfile;
import com.fis.cdd.profile.profiles.AgentProfile;

@XmlRootElement
public class WindowsFileSystemAgent extends AgentProfile {
	Login login;
	WindowsProfile profile;

	public WindowsFileSystemAgent() {
		super();
	}

	public WindowsFileSystemAgent(Login login, WindowsProfile profile) {
		super();
		this.login = login;
		this.profile = profile;
	}
	
	@XmlElement
	public Login getLogin() {
		return login;
	}

	public WindowsFileSystemAgent(Login login, WindowsProfile profile,
			String installationPath, String uploadURL,
			String uploadURLUsername, String uploadURLPassword,
			int timeBeweenUpload, String description) {
		super(installationPath, uploadURL, uploadURLUsername,
				uploadURLPassword, timeBeweenUpload, description);
		this.login = login;
		this.profile = profile;
	}

	public void setLogin(Login login) {
		this.login = login;
	}

	@XmlElement
	public WindowsProfile getProfile() {
		return profile;
	}

	public void setProfile(WindowsProfile profile) {
		this.profile = profile;
	}

}
