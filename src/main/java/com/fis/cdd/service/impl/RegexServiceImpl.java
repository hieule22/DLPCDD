/**
 * 
 */
package com.fis.cdd.service.impl;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fis.cdd.converter.RegularExpressionConverter;
import com.fis.cdd.model.RegularExpression;
import com.fis.cdd.repository.RegExRepository;
import com.fis.cdd.service.RegexService;

/**
 * @author HaiNT
 *
 */
@Service
public class RegexServiceImpl implements RegexService {

	@Autowired
	private RegExRepository regExRepository;

	private RegularExpressionConverter regularExpressionConverter;

	@Autowired
	public RegexServiceImpl(RegularExpressionConverter regularExpressionConverter) {
		this.regularExpressionConverter = regularExpressionConverter;
	}

	@Override
	public RegularExpression findByName(String name) {
		return regularExpressionConverter.doForward(regExRepository.findByName(name));
	}

	@Override
	public List<RegularExpression> findAll() {
		List<RegularExpression> regexList = new LinkedList<>();

		Iterator<com.fis.cdd.entity.RegularExpression> regexIte = regExRepository.findAll().iterator();

		while (regexIte.hasNext()) {
			regexList.add(regularExpressionConverter.doForward(regexIte.next()));

		}

		return regexList;
	}

	@Override
	public RegularExpression findById(Long id) {
		return regularExpressionConverter.doForward(regExRepository.findOne(id));
	}

	@Override
	public RegularExpression saveOrUpdate(RegularExpression regex) throws Exception {
		regex = regularExpressionConverter
				.doForward(regExRepository.save(regularExpressionConverter.doBackward(regex)));
		return regex;
	}

	@Override
	public void delete(Long id) throws Exception {
		regExRepository.delete(id);
	}
}
