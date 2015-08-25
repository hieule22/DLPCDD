package com.fis.cdd.profile.profiles;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

import com.fis.cdd.profile.entity.MetasploitHost;

@XmlRootElement
public class MetasploitProfile extends AgentProfile{
	MetasploitHost metasploitHost;
	long metasploitPort;
	String metasploitUser;
	String metasploitPassword;
	String pathToOpenDLPFiles;
	int metasploitLatency;
	int metasploitTimeout;

	public MetasploitProfile() {
	}

	public MetasploitProfile(MetasploitHost metasploitHost,
			long metasploitPort, String metasploitUser,
			String metasploitPassword, String pathToOpenDLPFiles,
			int metasploitLatency, int metasploitTimeout) {
		this.metasploitHost = metasploitHost;
		this.metasploitPort = metasploitPort;
		this.metasploitUser = metasploitUser;
		this.metasploitPassword = metasploitPassword;
		this.pathToOpenDLPFiles = pathToOpenDLPFiles;
		this.metasploitLatency = metasploitLatency;
		this.metasploitTimeout = metasploitTimeout;
	}

	@XmlElement
	public MetasploitHost getMetasploitHost() {
		return metasploitHost;
	}

	public void setMetasploitHost(MetasploitHost metasploitHost) {
		this.metasploitHost = metasploitHost;
	}

	@XmlElement
	public long getMetasploitPort() {
		return metasploitPort;
	}

	public void setMetasploitPort(long metasploitPort) {
		this.metasploitPort = metasploitPort;
	}

	@XmlElement
	public String getMetasploitUser() {
		return metasploitUser;
	}

	public void setMetasploitUser(String metasploitUser) {
		this.metasploitUser = metasploitUser;
	}

	@XmlElement
	public String getMetasploitPassword() {
		return metasploitPassword;
	}

	public void setMetasploitPassword(String metasploitPassword) {
		this.metasploitPassword = metasploitPassword;
	}

	@XmlElement
	public String getPathToOpenDLPFiles() {
		return pathToOpenDLPFiles;
	}

	public void setPathToOpenDLPFiles(String pathToOpenDLPFiles) {
		this.pathToOpenDLPFiles = pathToOpenDLPFiles;
	}

	@XmlElement
	public int getMetasploitLatency() {
		return metasploitLatency;
	}

	public void setMetasploitLatency(int metasploitLatency) {
		this.metasploitLatency = metasploitLatency;
	}

	@XmlElement
	public int getMetasploitTimeout() {
		return metasploitTimeout;
	}

	public void setMetasploitTimeout(int metasploitTimeout) {
		this.metasploitTimeout = metasploitTimeout;
	}

}
