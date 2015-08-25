package com.fis.cdd.profile.entity;

import java.util.Set;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * 
 * @author DANGHAO195
 *
 */
@XmlRootElement(name = "SearchConfig")
public class SearchConfig {

	// COMPREHENSIVE: encompass relevant elements
	// EXCLUSIVE: exclude certain elements
	// INCLUDE: include only certain elements
	public enum SearchOption {
		COMPREHENSIVE, EXCLUSIVE, INCLUSIVE
	};

	public static final SearchConfig TRUE_INSTANCE = new SearchConfig(
			SearchOption.COMPREHENSIVE, null);

	// The search option
	private SearchOption searchOption;
	// The set of elements associated with a non-comprehensive search
	private Set<String> elementSet;

	// The default constructor sets search option to be COMPREHENSIVE
	public SearchConfig() {
		searchOption = SearchOption.COMPREHENSIVE;
		elementSet = null;
	}

	public SearchConfig(SearchOption searchOption, Set<String> elementSet) {
		// Throw exception when elementSet is null while option is INCLUSIVE or
		// EXCLUSIVE
		if (searchOption != SearchOption.COMPREHENSIVE && elementSet == null)
			throw new IllegalArgumentException("Element set cannot be null");

		this.searchOption = searchOption;
		this.elementSet = elementSet;
	}

	@XmlElement
	public SearchOption getSearchOption() {
		return searchOption;
	}

	public void setSearchOption(SearchOption searchOption) {
		this.searchOption = searchOption;
	}

	@XmlElement
	public Set<String> getElementSet() {
		return elementSet;
	}

	public void setElementSet(Set<String> set) {
		this.elementSet = set;
	}

}
