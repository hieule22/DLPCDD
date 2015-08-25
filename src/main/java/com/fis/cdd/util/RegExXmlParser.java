/**
 * 
 */
package com.fis.cdd.util;

import java.io.IOException;
import java.util.List;

import javax.xml.bind.JAXBException;

import com.fis.cdd.profile.entity.Card;
import com.fis.cdd.profile.entity.CardList;

/**
 * @author HaiNT
 *
 */
public class RegExXmlParser extends AbstractXmlParser<CardList> {

	private CardList cards = null;

	public List<Card> getCards(String filePath) throws JAXBException, IOException {

		cards = parse(filePath, CardList.class);
		return cards.getCardList();
	}
}
