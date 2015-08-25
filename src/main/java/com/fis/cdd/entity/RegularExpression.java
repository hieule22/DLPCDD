/**
 * 
 */
package com.fis.cdd.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author HaiNT
 *
 */
@Entity
@Table(name = "regex")
public class RegularExpression {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	private String name;

	private String regex;

	public RegularExpression() {

	}

	public RegularExpression(Long id, String name, String regex) {
		super();
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

}
