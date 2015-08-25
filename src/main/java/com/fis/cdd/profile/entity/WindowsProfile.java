package com.fis.cdd.profile.entity;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class WindowsProfile {
	String sMBHash;
	String domainWorkgroup;

	public WindowsProfile() {
	}

	public WindowsProfile(String sMBHash, String domainWorkgroup) {
		this.sMBHash = sMBHash;
		this.domainWorkgroup = domainWorkgroup;
	}
	
	@XmlElement
	public String getsMBHash() {
		return sMBHash;
	}

	public void setsMBHash(String sMBHash) {
		this.sMBHash = sMBHash;
	}

	@XmlElement
	public String getDomainWorkgroup() {
		return domainWorkgroup;
	}

	public void setDomainWorkgroup(String domainWorkgroup) {
		this.domainWorkgroup = domainWorkgroup;
	}

}
