package com.fis.cdd.profile.scantype;

import java.util.List;

import com.fis.cdd.profile.entity.CardList;
import com.fis.cdd.profile.entity.Login;
import com.fis.cdd.profile.entity.SearchConfig;
import com.fis.cdd.profile.entity.WindowsProfile;
import com.fis.cdd.profile.profiles.OperationSystemProfile;

public class WindowsNetworkShare extends OperationSystemProfile {
	Login login;
	WindowsProfile windowsProfile;

	public WindowsNetworkShare() {
		super();
	}

	public WindowsNetworkShare(Login login, WindowsProfile windowsProfile) {
		super();
		this.login = login;
		this.windowsProfile = windowsProfile;
	}

	// public WindowsNetworkShare(Login login, WindowsProfile windowsProfile,
	// String profileName, int memoryLimit,
	// SearchConfig dirConfig, SearchConfig extConfig,
	// List<String> zipExtensions, boolean maskSentitiveData,
	// String concurrentDeployments, LogVerbosity logVerbosity,
	// CardList creditCards) {
	// super(profileName, memoryLimit, dirConfig, extConfig, zipExtensions,
	// maskSentitiveData, concurrentDeployments, logVerbosity, creditCards);
	// this.login = login;
	// this.windowsProfile = windowsProfile;
	// }
	// public WindowsNetworkShare(Login login, WindowsProfile windowsProfile,
	// String profileName, int memoryLimit,
	// SearchConfig dirConfig, SearchConfig extConfig,
	// List<String> zipExtensions) {
	// super(profileName, memoryLimit, dirConfig, extConfig, zipExtensions);
	// this.login = login;
	// this.windowsProfile = windowsProfile;
	// }

	public Login getLogin() {
		return login;
	}

	public WindowsNetworkShare(Login login, WindowsProfile windowsProfile,
			int memoryLimit, SearchConfig dirConfig, SearchConfig extConfig,
			List<String> zipExtensions, String profileName,
			boolean maskSentitiveData, String concurrentDeployments,
			LogVerbosity logVerbosity) {
		super(memoryLimit, dirConfig, extConfig, zipExtensions, profileName,
				maskSentitiveData, concurrentDeployments, logVerbosity);
		this.login = login;
		this.windowsProfile = windowsProfile;
	}

	public WindowsNetworkShare(Login login, WindowsProfile windowsProfile,
			int memoryLimit, SearchConfig dirConfig, SearchConfig extConfig,
			List<String> zipExtensions) {
		super(memoryLimit, dirConfig, extConfig, zipExtensions);
		this.login = login;
		this.windowsProfile = windowsProfile;
	}

	public void setLogin(Login login) {
		this.login = login;
	}

	public WindowsProfile getWindowsProfile() {
		return windowsProfile;
	}

	public void setWindowsProfile(WindowsProfile windowsProfile) {
		this.windowsProfile = windowsProfile;
	}
}
