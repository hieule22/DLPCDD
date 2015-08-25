package com.fis.cdd.profile.profiles;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

import com.fis.cdd.profile.entity.SearchConfig;

@XmlRootElement
public class DatabaseProfile extends Profile {
	SearchConfig databases;
	SearchConfig tables;
	SearchConfig colums;
	int limitColumnsToXRows;

	public DatabaseProfile() {
	}

	public DatabaseProfile(SearchConfig databaseProfile, SearchConfig tables,
			SearchConfig colums, int limitColumnsToXRows) {
		this.databases = databaseProfile;
		this.tables = tables;
		this.colums = colums;
		this.limitColumnsToXRows = limitColumnsToXRows;
	}

	@XmlElement
	public SearchConfig getDatabases() {
		return databases;
	}

	public void setDatabases(SearchConfig databases) {
		this.databases = databases;
	}

	@XmlElement
	public SearchConfig getTables() {
		return tables;
	}

	public void setTables(SearchConfig tables) {
		this.tables = tables;
	}

	@XmlElement
	public SearchConfig getColums() {
		return colums;
	}

	public void setColums(SearchConfig colums) {
		this.colums = colums;
	}
	
	@XmlElement
	public int getLimitColumnsToXRows() {
		return limitColumnsToXRows;
	}

	public void setLimitColumnsToXRows(int limitColumnsToXRows) {
		this.limitColumnsToXRows = limitColumnsToXRows;
	}

}
