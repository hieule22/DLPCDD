/**
 * 
 */
package com.fis.cdd.service;

import static org.mockito.Mockito.*;

import java.util.Arrays;
import java.util.List;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.runners.MockitoJUnitRunner;

import com.fis.cdd.converter.RegularExpressionConverter;
import com.fis.cdd.entity.RegularExpression;
import com.fis.cdd.repository.RegExRepository;
import com.fis.cdd.service.impl.RegexServiceImpl;

/**
 * @author HaiNT
 *
 */
@RunWith(MockitoJUnitRunner.class)
public class RegExServiceTest {

	private RegularExpressionConverter converter = new RegularExpressionConverter();
	private RegularExpression regex;
	private final String REGEX_NAME = "AMEX";
	private final String REGEX = "(\\D|^)(34|37)[0-9]{2}(\\ |\\-|)[0-9]{6}(\\|\\-|)[0-9]{5}(\\D|$)";

	@InjectMocks
	private RegexService regexService = new RegexServiceImpl(converter);
	@Mock
	private RegExRepository regExRepository;

	@Before
	public void setup() {
		regex = new RegularExpression(1L, REGEX_NAME, REGEX);
	}

	@Test
	public void testFindByName() {
		when(regExRepository.findOne(1L)).thenReturn(regex);

		com.fis.cdd.model.RegularExpression regexModel = regexService.findById(1L);
		assertNotNull(regexModel);
		assertTrue(regexModel.getId().equals(regex.getId()));
		assertTrue(regexModel.getName().equals(regex.getName()));
		assertTrue(regexModel.getRegex().equals(regex.getRegex()));
	}

	@Test
	public void testFindAll() {
		when(regExRepository.findAll()).thenReturn(Arrays.asList(regex));
		List<com.fis.cdd.model.RegularExpression> regexList = regexService.findAll();
		assertTrue(regexList.size() == 1);
		com.fis.cdd.model.RegularExpression regexModel = regexList.get(0);
		assertTrue(regexModel.getId().equals(regex.getId()));
		assertTrue(regexModel.getName().equals(regex.getName()));
		assertTrue(regexModel.getRegex().equals(regex.getRegex()));
	}

	@Test
	public void testFindById() {
		when(regExRepository.findOne(1L)).thenReturn(regex);
		com.fis.cdd.model.RegularExpression regexModel = regexService.findById(1L);
		assertNotNull(regexModel);
		assertTrue(regexModel.getId().equals(regex.getId()));
		assertTrue(regexModel.getName().equals(regex.getName()));
		assertTrue(regexModel.getRegex().equals(regex.getRegex()));
	}

	@Test
	public void testSaveUpdate() throws Exception {
		when(regExRepository.save(any(RegularExpression.class))).thenReturn(regex);
		com.fis.cdd.model.RegularExpression regexModel = regexService.saveOrUpdate(converter.doForward(regex));
		assertNotNull(regexModel);
		assertTrue(regexModel.getId().equals(regex.getId()));
		assertTrue(regexModel.getName().equals(regex.getName()));
		assertTrue(regexModel.getRegex().equals(regex.getRegex()));
	}

	@Test
	public void testDelete() throws Exception {
		when(regExRepository.findOne(1L)).thenReturn(regex);
		regexService.delete(1L);
		verify(regExRepository, times(1)).delete(1L);
	}

}
