package com.fis.cdd.profile.entity;

import java.util.regex.Pattern;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

import com.fis.cdd.exception.InvalidPatternException;

// Stores details of a card

@XmlRootElement(name = "Card")
public class Card {
	// The card's name, e.g Visa, Mastercard
	private String name;
	// The accompanying regular expression
	private String regex;
	// The card ID
	private Long id;
	// The pattern representing this card regex
	private Pattern pattern;

	public Card() {
		super();
	}

	public Card(String name, String regularExpression) {
		super();
		this.name = name;
		this.regex = regularExpression;
	}

	public Card(Long id, String name, String regularExpressions) {
		this.id = id;
		this.name = name;
		this.regex = regularExpressions;
	}

	@XmlAttribute
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	@XmlElement
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@XmlElement
	public String getRegex() {
		return regex;
	}

	public void setRegex(String regex) throws InvalidPatternException {
		this.regex = regex;
		pattern = Pattern.compile(regex);

	}

	public Pattern getPattern() {
		if (pattern == null)
			pattern = Pattern.compile(regex);
		return pattern;
	}
}
