package com.fis.cdd.profile.scantype;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

import com.fis.cdd.profile.entity.CardList;
import com.fis.cdd.profile.entity.Login;
import com.fis.cdd.profile.entity.SearchConfig;
import com.fis.cdd.profile.profiles.OperationSystemProfile;
@XmlRootElement
public class UnixFilesystem extends OperationSystemProfile {
	Login login;

	public UnixFilesystem() {
		super();
	}

	public UnixFilesystem(Login login, int memoryLimit, SearchConfig dirConfig,
			SearchConfig extConfig, List<String> zipExtensions,
			String profileName, boolean maskSentitiveData,
			String concurrentDeployments, LogVerbosity logVerbosity) {
		super(memoryLimit, dirConfig, extConfig, zipExtensions, profileName,
				maskSentitiveData, concurrentDeployments, logVerbosity);
		this.login = login;
	}

	public UnixFilesystem(Login login, int memoryLimit, SearchConfig dirConfig,
			SearchConfig extConfig, List<String> zipExtensions) {
		super(memoryLimit, dirConfig, extConfig, zipExtensions);
		this.login = login;
	}

	public UnixFilesystem(Login login) {
		super();
		this.login = login;
	}

	@XmlElement
	public Login getLogin() {
		return login;
	}

	public void setLogin(Login login) {
		this.login = login;
	}

}
