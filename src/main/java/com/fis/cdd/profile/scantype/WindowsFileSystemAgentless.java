package com.fis.cdd.profile.scantype;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

import com.fis.cdd.profile.entity.CardList;
import com.fis.cdd.profile.entity.Login;
import com.fis.cdd.profile.entity.SearchConfig;
import com.fis.cdd.profile.entity.WindowsProfile;
import com.fis.cdd.profile.profiles.OperationSystemProfile;
@XmlRootElement
public class WindowsFileSystemAgentless extends OperationSystemProfile {
	Login login;
	WindowsProfile windowsProfile;

	public WindowsFileSystemAgentless() {
		super();
	}

	public WindowsFileSystemAgentless(Login login, WindowsProfile windowsProfile) {
		super();
		this.login = login;
		this.windowsProfile = windowsProfile;
	}
	
	@XmlElement
	public Login getLogin() {
		return login;
	}

	public WindowsFileSystemAgentless(Login login,
			WindowsProfile windowsProfile, int memoryLimit,
			SearchConfig dirConfig, SearchConfig extConfig,
			List<String> zipExtensions, String profileName,
			boolean maskSentitiveData, String concurrentDeployments,
			LogVerbosity logVerbosity) {
		super(memoryLimit, dirConfig, extConfig, zipExtensions, profileName,
				maskSentitiveData, concurrentDeployments, logVerbosity);
		this.login = login;
		this.windowsProfile = windowsProfile;
	}

	public WindowsFileSystemAgentless(Login login,
			WindowsProfile windowsProfile, int memoryLimit,
			SearchConfig dirConfig, SearchConfig extConfig,
			List<String> zipExtensions) {
		super(memoryLimit, dirConfig, extConfig, zipExtensions);
		this.login = login;
		this.windowsProfile = windowsProfile;
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
