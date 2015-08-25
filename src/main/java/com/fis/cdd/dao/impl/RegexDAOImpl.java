/**
 * 
 */
package com.fis.cdd.dao.impl;

import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import javax.xml.bind.JAXBException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fis.cdd.dao.RegexDAO;
import com.fis.cdd.model.RegularExpression;
import com.fis.cdd.profile.entity.CardList;
import com.fis.cdd.util.Constants;
import com.fis.cdd.util.RegExXmlGenerator;
import com.fis.cdd.util.RegExXmlParser;
import com.fis.cdd.util.TransformerUtil;

/**
 * @author HaiNT
 *
 */
@Repository
public class RegexDAOImpl implements RegexDAO, Constants {

	private Map<Long, RegularExpression> regularExpressions;
	private RegExXmlParser parser;
	private RegExXmlGenerator generator;

	@Autowired
	public void init() throws JAXBException, IOException {
		generator = new RegExXmlGenerator();
		parser = new RegExXmlParser();
		regularExpressions = TransformerUtil.transform(parser.parse(REGEX_FILE, CardList.class).getCardList());
	}

	@Override
	public RegularExpression findById(Integer id) {
		return regularExpressions.get(id);
	}

	@Override
	public RegularExpression findByName(String name) {

		RegularExpression ret = null;
		@SuppressWarnings("rawtypes")
		Iterator ite = regularExpressions.values().iterator();

		while (ite.hasNext()) {
			RegularExpression re = (RegularExpression) ite.next();
			if (re.getName().equals(name)) {
				ret = re;
				break;
			}
		}

		return ret;
	}

	@Override
	public List<RegularExpression> findAll() {
		return new LinkedList<RegularExpression>(regularExpressions.values());
	}

	@Override
	public void save(RegularExpression newRegex) throws JAXBException, IOException {
		Long lastId = 1L; //set default value
		
		if (regularExpressions.size() > 0) {
			RegularExpression lastRegex = ((TreeMap<Long, RegularExpression>) regularExpressions).lastEntry()
					.getValue();

			lastId = lastRegex.getId() + 1;
		}
		
		newRegex.setId(lastId);
		regularExpressions.put(newRegex.getId(), newRegex);
		saveToXml();
	}

	@Override
	public void update(RegularExpression newRegex) throws JAXBException, IOException {
		RegularExpression oldRegex = regularExpressions.get(newRegex.getId());
		oldRegex.setRegex(newRegex.getRegex());
		saveToXml();
	}

	@Override
	public void delete(Integer id) throws JAXBException, IOException {
		regularExpressions.remove(id);
		saveToXml();
	}

	private void saveToXml() throws JAXBException, IOException {
		generator.generate(REGEX_FILE, TransformerUtil.transform(regularExpressions));
	}
}
