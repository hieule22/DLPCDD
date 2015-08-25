/**
 * 
 */
package com.fis.cdd.model;

import java.util.List;

/**
 * @author HaiNT
 *
 */
public class RegularExpression {

	private Long id;
	private String name;
	private String regex;
	private List<String> selectedItems;

	public RegularExpression() {

	}

	public RegularExpression(Long id, String name, String regex) {
		this.id = id;
		this.name = name;
		this.regex = regex;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRegex() {
		return regex;
	}

	public void setRegex(String regex) {
		this.regex = regex;
	}

	public List<String> getSelectedItems() {
		return selectedItems;
	}

	public void setSelectedItems(List<String> selectedItems) {
		this.selectedItems = selectedItems;
	}
}
