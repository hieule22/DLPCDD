/**
 * 
 */
package com.fis.cdd.util;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import com.fis.cdd.model.RegularExpression;
import com.fis.cdd.profile.entity.Card;
import com.fis.cdd.profile.entity.CardList;

/**
 * @author HaiNT
 *
 */
public class TransformerUtil {

	/**
	 * Transform Xml object to model
	 * 
	 * @param cards
	 * @return list of RegularExpression object
	 */
	public static Map<Long, RegularExpression> transform(List<Card> cards) {
		Map<Long, RegularExpression> regularExpressions = new TreeMap<>();

		for (Card card : cards) {
			RegularExpression regex = new RegularExpression();
			regex.setId(card.getId());
			regex.setName(card.getName());
			regex.setRegex(card.getRegex());

			regularExpressions.put(regex.getId(), regex);
		}

		return regularExpressions;
	}

	@SuppressWarnings("rawtypes")
	public static CardList transform(Map<Long, RegularExpression> regexMap) {
		CardList cardList = new CardList();
		List<Card> cards = new LinkedList<>();

		Iterator ite = regexMap.values().iterator();

		while (ite.hasNext()) {
			RegularExpression regex = (RegularExpression) ite.next();
			Card card = new Card();
			card.setId(regex.getId());
			card.setName(regex.getName());
			card.setRegex(regex.getRegex());
			cards.add(card);
		}

		cardList.getCardList().addAll(cards);

		return cardList;
	}
}
