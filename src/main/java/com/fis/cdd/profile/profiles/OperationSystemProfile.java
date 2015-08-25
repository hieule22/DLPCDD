package com.fis.cdd.profile.profiles;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

import com.fis.cdd.profile.entity.CardList;
import com.fis.cdd.profile.entity.SearchConfig;
	
@XmlRootElement
public class OperationSystemProfile extends Profile {
	// The maximum memory under which the agent runs
	private int memoryLimit;
	// Search configurations
	private SearchConfig dirConfig;
	private SearchConfig extConfig;
	private List<String> zipExtensions;


	public OperationSystemProfile() {
		super();
	}

	public OperationSystemProfile(int memoryLimit, SearchConfig dirConfig,
			SearchConfig extConfig, List<String> zipExtensions) {
		super();
		this.memoryLimit = memoryLimit;
		this.dirConfig = dirConfig;
		this.extConfig = extConfig;
		this.zipExtensions = zipExtensions;
	}

	public OperationSystemProfile(int memoryLimit, SearchConfig dirConfig,
			SearchConfig extConfig, List<String> zipExtensions,
			String profileName, boolean maskSentitiveData,
			String concurrentDeployments, LogVerbosity logVerbosity) {
		super(profileName, maskSentitiveData, concurrentDeployments,
				logVerbosity);
		this.memoryLimit = memoryLimit;
		this.dirConfig = dirConfig;
		this.extConfig = extConfig;
		this.zipExtensions = zipExtensions;
	}
	
	@XmlElement
	public int getMemoryLimit() {
		return memoryLimit;
	}

	public void setMemoryLimit(int memoryLimit) {
		this.memoryLimit = memoryLimit;
	}
	
	@XmlElement
	public List<String> getZipExtensions() {
		return zipExtensions;
	}

	public void setZipExtensions(List<String> zipExtensions) {
		this.zipExtensions = zipExtensions;
	}
	
	@XmlElement
	public SearchConfig getDirConfig() {
		return dirConfig;
	}

	public void setDirConfig(SearchConfig dirConfig) {
		this.dirConfig = dirConfig;
	}
	
	@XmlElement
	public SearchConfig getExtConfig() {
		return extConfig;
	}

	public void setExtConfig(SearchConfig extConfig) {
		this.extConfig = extConfig;
	}

}
