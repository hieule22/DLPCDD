package com.fis.cdd.profile.entity;

public class MetasploitHost {
	String name;
	boolean useSSL;
	public MetasploitHost() {
	}
	public MetasploitHost(String name, boolean useSSL) {
		this.name = name;
		this.useSSL = useSSL;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public boolean isUseSSL() {
		return useSSL;
	}
	public void setUseSSL(boolean useSSL) {
		this.useSSL = useSSL;
	}
	

}
