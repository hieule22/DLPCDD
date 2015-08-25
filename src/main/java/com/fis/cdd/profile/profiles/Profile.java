package com.fis.cdd.profile.profiles;

import com.fis.cdd.profile.entity.CardList;
import com.fis.cdd.util.RegExXmlParser;

public class Profile {

	private ResultLog resultLog;

	public enum LogVerbosity {
		NORMAL(0), MOREVERBOSITY(1), EXTREMELYVERBOSITY(2), INTENSELYVERBOSITY(
				3);
		private int valueVerbosity;

		private LogVerbosity(int value) {
			valueVerbosity = value;
		}

		public int getValueVerbosity() {
			return valueVerbosity;
		}

	}

	String profileName;
	boolean maskSentitiveData;
	String concurrentDeployments;
	LogVerbosity logVerbosity;

	private static CardList regularExpressions;
	private static final String REGEX_PATH = "regularExpression.xml";

	static {
		try {
			RegExXmlParser regExXmlParser = new RegExXmlParser();
			CardList cardList = regExXmlParser.parse(REGEX_PATH, CardList.class);
			regularExpressions = cardList;
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
	}

	public Profile() {
	}

	public Profile(String profileName, boolean maskSentitiveData,
			String concurrentDeployments, LogVerbosity logVerbosity) {
		this.profileName = profileName;
		this.maskSentitiveData = maskSentitiveData;
		this.concurrentDeployments = concurrentDeployments;
		this.logVerbosity = logVerbosity;
	}

	public ResultLog getLog() {
		if (resultLog == null)
			resultLog = new ResultLog(profileName);
		return resultLog;
	}

	public static CardList getRegularExpressions() {
		return regularExpressions;
	}

	public static void setRegularExpressions(CardList regularExpressions) {
		Profile.regularExpressions = regularExpressions;
	}

	public String getConcurrentDeployments() {
		return concurrentDeployments;
	}

	public void setConcurrentDeployments(String concurrentDeployments) {
		this.concurrentDeployments = concurrentDeployments;
	}

	public LogVerbosity getLogVerbosity() {
		return logVerbosity;
	}

	public void setLogVerbosity(LogVerbosity logVerbosity) {
		this.logVerbosity = logVerbosity;
	}

	public String getProfileName() {
		return profileName;
	}

	public void setProfileName(String profileName) {
		this.profileName = profileName;
	}

	public boolean isMaskSentitiveData() {
		return maskSentitiveData;
	}

	public void setMaskSentitiveData(boolean maskSentitiveData) {
		this.maskSentitiveData = maskSentitiveData;
	}

}
