/**
 * 
 */
package com.fis.cdd.converter;

import org.springframework.stereotype.Component;

import com.fis.cdd.entity.RegularExpression;

/**
 * @author HaiNT
 *
 */
@Component
public class RegularExpressionConverter
		implements BaseConverter<RegularExpression, com.fis.cdd.model.RegularExpression> {

	@Override
	public com.fis.cdd.model.RegularExpression doForward(RegularExpression regex) {
		return new com.fis.cdd.model.RegularExpression(regex.getId(), regex.getName(), regex.getRegex());
	}

	@Override
	public RegularExpression doBackward(com.fis.cdd.model.RegularExpression regex) {
		return new RegularExpression(regex.getId(), regex.getName(), regex.getRegex());
	}

}
