package com.fis.cdd.profile.profiles;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

import com.fis.cdd.profile.entity.CardList;
import com.fis.cdd.profile.entity.SearchConfig;

@XmlRootElement
public class AgentProfile extends OperationSystemProfile {
	String installationPath;
	String uploadURL;
	String uploadURLUsername;
	String uploadURLPassword;
	int timeBeweenUpload;
	String description;

	public AgentProfile(int memoryLimit, SearchConfig dirConfig,
			SearchConfig extConfig, List<String> zipExtensions,
			String profileName, boolean maskSentitiveData,
			String concurrentDeployments, LogVerbosity logVerbosity) {
		super(memoryLimit, dirConfig, extConfig, zipExtensions, profileName,
				maskSentitiveData, concurrentDeployments, logVerbosity);
		// TODO Auto-generated constructor stub
	}

	public AgentProfile(int memoryLimit, SearchConfig dirConfig,
			SearchConfig extConfig, List<String> zipExtensions) {
		super(memoryLimit, dirConfig, extConfig, zipExtensions);
		// TODO Auto-generated constructor stub
	}

	public AgentProfile() {
	}

	public AgentProfile(String installationPath, String uploadURL,
			String uploadURLUsername, String uploadURLPassword,
			int timeBeweenUpload, String description) {
		this.installationPath = installationPath;
		this.uploadURL = uploadURL;
		this.uploadURLUsername = uploadURLUsername;
		this.uploadURLPassword = uploadURLPassword;
		this.timeBeweenUpload = timeBeweenUpload;
		this.description = description;
	}
	
	@XmlElement
	public String getInstallationPath() {
		return installationPath;
	}

	public void setInstallationPath(String installationPath) {
		this.installationPath = installationPath;
	}

	@XmlElement
	public String getUploadURL() {
		return uploadURL;
	}

	public void setUploadURL(String uploadURL) {
		this.uploadURL = uploadURL;
	}

	@XmlElement
	public String getUploadURLUsername() {
		return uploadURLUsername;
	}

	public void setUploadURLUsername(String uploadURLUsername) {
		this.uploadURLUsername = uploadURLUsername;
	}

	@XmlElement
	public String getUploadURLPassword() {
		return uploadURLPassword;
	}

	public void setUploadURLPassword(String uploadURLPassword) {
		this.uploadURLPassword = uploadURLPassword;
	}

	@XmlElement
	public int getTimeBeweenUpload() {
		return timeBeweenUpload;
	}

	public void setTimeBeweenUpload(int timeBeweenUpload) {
		this.timeBeweenUpload = timeBeweenUpload;
	}

	@XmlElement
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
