package com.fis.cdd.profile.entity;

import java.util.LinkedList;
import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "Cards")
public class CardList {
	// A list of cards
	private List<Card> cardList;

	public CardList() {
		this.cardList = new LinkedList<>();
	}

	public CardList(List<Card> cardList) {
		this.cardList = cardList;
	}

	@XmlElement(name = "Card")
	public List<Card> getCardList() {
		return cardList;
	}

	public void setCardList(List<Card> cardList) {
		this.cardList = cardList;
	}

}
